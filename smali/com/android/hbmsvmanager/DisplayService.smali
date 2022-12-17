.class public Lcom/android/hbmsvmanager/DisplayService;
.super Landroid/app/Service;
.source "DisplayService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DisplayModesMonitor"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHbmSvManager:Lcom/android/hbmsvmanager/HbmSvManager;

.field private mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/hbmsvmanager/DisplayService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/hbmsvmanager/DisplayService;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/DisplayService;->onSwitchUser(I)V

    return-void
.end method

.method private onSwitchUser(I)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/hbmsvmanager/DisplayService;->mHbmSvManager:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager;->onSwitchUser(I)V

    return-void
.end method

.method private registerUserSwitchEvent()V
    .locals 4

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/android/hbmsvmanager/DisplayService$1;

    invoke-direct {v1, p0}, Lcom/android/hbmsvmanager/DisplayService$1;-><init>(Lcom/android/hbmsvmanager/DisplayService;)V

    iput-object v1, p0, Lcom/android/hbmsvmanager/DisplayService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iget-object v2, p0, Lcom/android/hbmsvmanager/DisplayService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/hbmsvmanager/DisplayService;->mHbmSvManager:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DisplayModesMonitor"

    const-string v1, "created"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {v0, p0}, Lcom/android/hbmsvmanager/HbmSvManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/DisplayService;->mHbmSvManager:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 51
    invoke-direct {p0}, Lcom/android/hbmsvmanager/DisplayService;->registerUserSwitchEvent()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iget-object p0, p0, Lcom/android/hbmsvmanager/DisplayService;->mHbmSvManager:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/hbmsvmanager/HbmSvManager;->onStart(ZI)V

    return p2
.end method
