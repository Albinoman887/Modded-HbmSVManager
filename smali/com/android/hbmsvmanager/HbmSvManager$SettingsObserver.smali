.class final Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private final mScreenBrightnessModeSetting:Landroid/net/Uri;

.field private final mScreenBrightnessSetting:Landroid/net/Uri;

.field private final mScreenBrightnessThreshold:F

.field private mStarted:Z

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 838
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "low_power"

    .line 826
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const-string p1, "screen_brightness_mode"

    .line 828
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessModeSetting:Landroid/net/Uri;

    const-string p1, "screen_brightness"

    .line 830
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessSetting:Landroid/net/Uri;

    .line 839
    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    const p1, 0x3f78f8f9

    .line 840
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessThreshold:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SettingsObserver:"

    .line 897
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mScreenBrightnessThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isLowPowerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ScreenBrightnessMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isScreenBrightnessMax()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    AdaptiveBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isAdaptiveBrightness()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isAdaptiveBrightness()Z
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    .line 864
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 867
    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result p0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    .line 863
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public isLowPowerMode()Z
    .locals 2

    .line 872
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    .line 873
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power"

    const/4 v1, 0x0

    .line 872
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScreenBrightnessMax()Z
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    .line 880
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 883
    invoke-static {v1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v1

    const-string v2, "screen_brightness"

    const/4 v3, 0x0

    .line 879
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 893
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->getBrightnessMax()F

    move-result v1

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessThreshold:F

    mul-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-ltz p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 910
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isLowPowerMode()Z

    move-result p1

    .line 913
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onLowPowerModeChange(Z)V

    .line 914
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p3, v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    goto :goto_2

    .line 917
    :cond_1
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessModeSetting:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 918
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isAdaptiveBrightness()Z

    move-result p1

    .line 920
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onAdaptiveBrightnessState(Z)V

    .line 921
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    goto :goto_2

    .line 924
    :cond_3
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessSetting:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 925
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isScreenBrightnessMax()Z

    move-result p1

    .line 927
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->isScreenBrightnessMax()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onMaxScreenBrightness(Z)V

    .line 928
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p2

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    invoke-virtual {p2, v1, p3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    .line 932
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->isLbeEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 933
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->getLbeFilterLuxData()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->updateAmbientLight(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public startObserve()V
    .locals 4

    .line 844
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mStarted:Z

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 847
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessModeSetting:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 848
    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v2

    .line 847
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 849
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mScreenBrightnessSetting:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    .line 850
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mStarted:Z

    :cond_0
    return-void
.end method

.method public stopObserve()V
    .locals 1

    .line 855
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mStarted:Z

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 857
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->mStarted:Z

    :cond_0
    return-void
.end method
