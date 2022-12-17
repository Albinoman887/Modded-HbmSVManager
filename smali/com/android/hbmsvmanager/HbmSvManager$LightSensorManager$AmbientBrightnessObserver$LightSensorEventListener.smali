.class Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensorEventListener"
.end annotation


# instance fields
.field private mLastSensorData:F

.field private mRequeryFilterRunnable:Ljava/lang/Runnable;

.field final synthetic this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;


# direct methods
.method private constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;Lcom/android/hbmsvmanager/HbmSvManager$1;)V
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)F
    .locals 0

    .line 697
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method static synthetic access$1900(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .locals 0

    .line 697
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected checkPossibleHbmSvStatusChange(F)Z
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->access$1700(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1500(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return v1

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->access$1700(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1400(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "      LightSensorListener:"

    .line 737
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mLastSensorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLastSensorData()F
    .locals 0

    .line 733
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 702
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 708
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    iget v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->addValue(JF)Z

    .line 710
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 711
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {p1, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->processSensorData(J)V

    .line 717
    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->checkPossibleHbmSvStatusChange(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
