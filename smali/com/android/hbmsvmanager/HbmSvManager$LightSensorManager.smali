.class final Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;
    }
.end annotation


# instance fields
.field private mAdaptiveBrightness:Z

.field private final mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

.field private final mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

.field private mCameraOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLowPowerMode:Z

.field private mMaxScreenBrightness:Z

.field private mScreenOn:Z

.field private mSkinTempWarnOn:Z

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 404
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    .line 412
    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mContext:Landroid/content/Context;

    .line 413
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mHandler:Landroid/os/Handler;

    .line 414
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    .line 415
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/os/Handler;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Landroid/content/Context;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    return-object p0
.end method

.method private updateLbeSensorStatus()V
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->access$000(Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mSkinTempWarnOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    .line 547
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->startObserve()V

    goto :goto_1

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->stopObserve()V

    .line 550
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    .line 551
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    .line 552
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    iput-boolean v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    :goto_1
    return-void
.end method

.method private updateSensorStatus()V
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 519
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->startObserve()V

    goto :goto_1

    .line 521
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->stopObserve()V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  LightSensorManager:"

    .line 494
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSkinTempWarnOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mSkinTempWarnOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMaxScreenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mMaxScreenBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAdaptiveBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCameraOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->dump(Ljava/io/PrintWriter;)V

    .line 502
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getLbeFilterLuxData()F
    .locals 2

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 558
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-static {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->access$600(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;J)F

    move-result p0

    return p0
.end method

.method public isLbeEnabled()Z
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    return p0
.end method

.method public onAdaptiveBrightnessState(Z)V
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    if-eq v0, p1, :cond_0

    .line 466
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    .line 467
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    .line 468
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateLbeSensorStatus()V

    :cond_0
    return-void
.end method

.method public onCameraOn(Z)V
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    if-eq v0, p1, :cond_0

    .line 474
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    .line 475
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateLbeSensorStatus()V

    :cond_0
    return-void
.end method

.method public onLbeLuxThresholdsChange()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->access$000(Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->onLuxThresholdsChange()V

    return-void
.end method

.method public onLowPowerModeChange(Z)V
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mLowPowerMode:Z

    if-eq v0, p1, :cond_0

    .line 452
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mLowPowerMode:Z

    .line 453
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    :cond_0
    return-void
.end method

.method public onLuxThresholdsChange()V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->onLuxThresholdsChange()V

    return-void
.end method

.method public onMaxScreenBrightness(Z)V
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mMaxScreenBrightness:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mMaxScreenBrightness:Z

    .line 460
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    :cond_0
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    if-eq v0, p1, :cond_0

    .line 436
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    .line 437
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    .line 438
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateLbeSensorStatus()V

    :cond_0
    return-void
.end method

.method public onSkinTempWarnOn(Z)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mSkinTempWarnOn:Z

    if-eq v0, p1, :cond_0

    .line 444
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mSkinTempWarnOn:Z

    .line 445
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    .line 446
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateLbeSensorStatus()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mScreenOn:Z

    .line 420
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isScreenBrightnessMax()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mMaxScreenBrightness:Z

    .line 421
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->isDeviceTooHot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mSkinTempWarnOn:Z

    .line 422
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isLowPowerMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mLowPowerMode:Z

    .line 423
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isAdaptiveBrightness()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAdaptiveBrightness:Z

    .line 424
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$400(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$400(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->isCameraOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mCameraOn:Z

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateSensorStatus()V

    .line 426
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->updateLbeSensorStatus()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientBrightnessObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->stopObserve()V

    .line 431
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->mAmbientLbeObserver:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->stopObserve()V

    return-void
.end method
