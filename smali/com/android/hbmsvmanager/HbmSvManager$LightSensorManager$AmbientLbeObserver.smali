.class final Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;
.super Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmbientLbeObserver"
.end annotation


# instance fields
.field mRequestLbe:Z

.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 772
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    const-string v0, "Lbe"

    const/16 v1, 0xbb8

    const/high16 v2, 0x41200000    # 10.0f

    .line 776
    invoke-static {v0, v1, v2}, Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;->createAmbientFilter(Ljava/lang/String;IF)Lcom/android/hbmsvmanager/filter/AmbientFilter;

    move-result-object v0

    .line 773
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/hbmsvmanager/filter/AmbientFilter;)V

    const/4 p1, 0x0

    .line 770
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    return-void
.end method

.method static synthetic access$600(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;J)F
    .locals 0

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->getLbeFilterSensorData(J)F

    move-result p0

    return p0
.end method

.method private getLbeFilterSensorData(J)F
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->getEstimate(J)F

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "    AmbientLbeObserver:"

    .line 796
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLastFilteredData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method processSensorData(J)V
    .locals 2

    .line 802
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->getEstimate(J)F

    move-result p1

    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    .line 803
    iget-boolean p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$900(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 804
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    .line 805
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 806
    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 805
    invoke-virtual {p1, v0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    .line 807
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object p1

    iget p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->updateAmbientLight(F)V

    goto :goto_0

    .line 808
    :cond_0
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$900(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 809
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    .line 810
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object v1, v1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 811
    invoke-static {v1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 810
    invoke-virtual {p2, v0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    .line 814
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isScreenBrightnessMax()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 815
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object p1

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    invoke-virtual {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->updateAmbientLight(F)V

    :cond_2
    return-void
.end method

.method public stopObserve()V
    .locals 2

    .line 782
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 783
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "Unregister light sensor"

    .line 784
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 787
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    .line 790
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->clear()V

    :cond_1
    return-void
.end method
