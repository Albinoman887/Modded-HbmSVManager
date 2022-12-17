.class final Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraObserver"
.end annotation


# instance fields
.field private final mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1033
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mEnabled:Z

    .line 1034
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;

    invoke-direct {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 1050
    const-class p1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1051
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;)Z
    .locals 0

    .line 1030
    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mEnabled:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;Z)Z
    .locals 0

    .line 1030
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mEnabled:Z

    return p1
.end method


# virtual methods
.method public isCameraOn()Z
    .locals 0

    .line 1063
    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mEnabled:Z

    return p0
.end method

.method public startObserve()V
    .locals 2

    .line 1055
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopObserve()V
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method
