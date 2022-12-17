.class Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;->this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 758
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;->this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {v2, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->processSensorData(J)V

    .line 760
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;->this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->access$1800(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->checkPossibleHbmSvStatusChange(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;->this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;->this$3:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    .line 762
    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->access$1900(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xfa

    .line 761
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
