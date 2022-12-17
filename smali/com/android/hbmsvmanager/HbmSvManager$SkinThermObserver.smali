.class final Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkinThermObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mSkinThermalEventListener:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;

.field private mStarted:Z

.field private mThermalService:Landroid/os/IThermalService;

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mHandler:Landroid/os/Handler;

    .line 1205
    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;)Landroid/os/Handler;
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SkinThermObserver:"

    .line 1254
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz p0, :cond_0

    const-string p0, "    ThermalService avalaible"

    .line 1257
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "    ThermalService not avalaible"

    .line 1259
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isDeviceTooHot()Z
    .locals 1

    .line 1264
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1265
    invoke-virtual {p0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startObserve()V
    .locals 4

    .line 1209
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mStarted:Z

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_1

    .line 1210
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Skin thermal observer already started"

    .line 1211
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "thermalservice"

    .line 1218
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_2

    const-string p0, "Could not observe skin thermal event. Service not available"

    .line 1220
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1224
    :cond_2
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;

    invoke-direct {v0, p0}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mSkinThermalEventListener:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;

    .line 1226
    :try_start_0
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mThermalService:Landroid/os/IThermalService;

    const/4 v3, 0x3

    invoke-interface {v2, v0, v3}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    .line 1228
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to register skin thermal event listener"

    .line 1230
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    :goto_0
    return-void
.end method

.method public stopObserve()V
    .locals 3

    .line 1237
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mStarted:Z

    const-string v1, "HbmSvManager"

    if-nez v0, :cond_0

    const-string p0, "Skin thermal observer not started"

    .line 1238
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1243
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mThermalService:Landroid/os/IThermalService;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mSkinThermalEventListener:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;

    invoke-interface {v0, v2}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    .line 1244
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to unregister skin thermal event listener"

    .line 1246
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 1249
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mThermalService:Landroid/os/IThermalService;

    .line 1250
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->mSkinThermalEventListener:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;

    return-void
.end method
