.class Lcom/android/hbmsvmanager/DisplayService$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hbmsvmanager/DisplayService;->registerUserSwitchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hbmsvmanager/DisplayService;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/DisplayService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/hbmsvmanager/DisplayService$1;->this$0:Lcom/android/hbmsvmanager/DisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 85
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p0, "DisplayModesMonitor"

    const-string p1, "ignore undefined user"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/DisplayService$1;->this$0:Lcom/android/hbmsvmanager/DisplayService;

    invoke-static {p0, p1}, Lcom/android/hbmsvmanager/DisplayService;->access$000(Lcom/android/hbmsvmanager/DisplayService;I)V

    :cond_2
    return-void
.end method
