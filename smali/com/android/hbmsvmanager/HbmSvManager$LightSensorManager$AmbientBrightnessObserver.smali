.class Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientBrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;
    }
.end annotation


# instance fields
.field protected final mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

.field mLastFilteredData:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field protected final mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

.field protected mRegistered:Z

.field private mRequestShadowComp:Z

.field protected final mSensorManager:Landroid/hardware/SensorManager;

.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    const-class p1, Landroid/hardware/SensorManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 573
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->getSensor()Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 574
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "HbmSvManager"

    .line 575
    invoke-static {p2, p1}, Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/hbmsvmanager/filter/AmbientFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    .line 576
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;Lcom/android/hbmsvmanager/HbmSvManager$1;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    return-void
.end method

.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/hbmsvmanager/filter/AmbientFilter;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    const-class p3, Landroid/hardware/SensorManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 582
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->getSensor()Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 583
    iput-object p4, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    .line 584
    new-instance p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)V

    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;)Z
    .locals 0

    .line 561
    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    return p0
.end method

.method private getSensor()Landroid/hardware/Sensor;
    .locals 4

    .line 676
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1600(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    .line 677
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 682
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 683
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 691
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    :cond_2
    return-object v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "    AmbientBrightnessObserver:"

    .line 646
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mRequestShadowComp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLastFilteredData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onLuxThresholdsChange()V
    .locals 2

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 642
    invoke-virtual {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->processSensorData(J)V

    return-void
.end method

.method processSensorData(J)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->getEstimate(J)F

    move-result p1

    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    .line 661
    iget-boolean p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1400(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    .line 663
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->start()V

    goto :goto_0

    .line 664
    :cond_0
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLastFilteredData:F

    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p2, p2, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1500(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 665
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    .line 666
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->stop()V

    .line 669
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    if-eqz p1, :cond_2

    .line 670
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    .line 671
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->getLastSensorData()F

    move-result p0

    .line 670
    invoke-virtual {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->onAmbientBrightnessChanged(F)V

    :cond_2
    return-void
.end method

.method public startObserve()V
    .locals 5

    .line 604
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    if-nez v0, :cond_2

    .line 605
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_0

    const-string v0, "Register light sensor"

    .line 606
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const-string p0, "Light sensor not available"

    .line 609
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    .line 617
    invoke-static {v4}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;

    move-result-object v4

    .line 613
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    :cond_2
    return-void
.end method

.method public stopObserve()V
    .locals 3

    .line 623
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "Unregister light sensor"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 628
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mLightSensorListener:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 629
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRegistered:Z

    .line 631
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mAmbientFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {v1}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->clear()V

    .line 632
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object v1, v1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    .line 635
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->mRequestShadowComp:Z

    .line 636
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->stop()V

    :cond_1
    return-void
.end method
