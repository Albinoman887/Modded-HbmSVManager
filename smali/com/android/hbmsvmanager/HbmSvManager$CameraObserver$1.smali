.class Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Ljava/lang/String;)V
    .locals 1

    .line 1044
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->access$2202(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;Z)Z

    .line 1045
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->access$2200(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onCameraOn(Z)V

    return-void
.end method

.method public onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1038
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->access$2202(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;Z)Z

    .line 1039
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->access$2200(Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onCameraOn(Z)V

    return-void
.end method
