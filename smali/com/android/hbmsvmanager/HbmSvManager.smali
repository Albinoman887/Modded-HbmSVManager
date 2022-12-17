.class public Lcom/android/hbmsvmanager/HbmSvManager;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;,
        Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;,
        Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;,
        Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;,
        Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;,
        Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

.field private mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

.field private mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHbmSvEnabled:Z

.field private final mHbmSvEnabledDefault:Z

.field private mHbmSvMaxDurationSeconds:I

.field private final mHbmSvMaxDurationSecondsDefault:I

.field private mHbmSvMinDurationSeconds:I

.field private final mHbmSvMinDurationSecondsDefault:I

.field private mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

.field private final mHbmSvThread:Landroid/os/HandlerThread;

.field private mHbmSvWindowSeconds:I

.field private final mHbmSvWindowSecondsDefault:I

.field private final mLbeHorizon:I

.field private final mLbeIntercept:F

.field private mLbeLuxSwitchThreshold:F

.field private final mLbeLuxSwitchThresholdDefault:F

.field private mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

.field private mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

.field private mLuxEnter:F

.field private final mLuxEnterDefault:F

.field private mLuxExit:F

.field private final mLuxExitDefault:F

.field private mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

.field private mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

.field private mStarted:Z


# direct methods
.method public static synthetic $r8$lambda$JSjB24y1ODL48liSptXnJrwlmwg(Lcom/android/hbmsvmanager/HbmSvManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager;->lambda$onSwitchUser$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W7UspILzcbaTpIPPQlYdWH6MNz8(Lcom/android/hbmsvmanager/HbmSvManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->lambda$onStart$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X7I-6F3abyGxTKVXANxxCTSSpuo(Lcom/android/hbmsvmanager/HbmSvManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->lambda$onStart$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 90
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    const-string v0, "hbmsvmanager_jni"

    .line 159
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 123
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeHorizon:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 124
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeIntercept:F

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 125
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThresholdDefault:F

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabledDefault:Z

    const v2, 0x461c4000    # 10000.0f

    .line 128
    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnterDefault:F

    const v3, 0x459c4000    # 5000.0f

    .line 129
    iput v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExitDefault:F

    const/16 v4, 0x708

    .line 130
    iput v4, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSecondsDefault:I

    const/16 v5, 0x12c

    .line 131
    iput v5, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSecondsDefault:I

    const/16 v6, 0x3c

    .line 132
    iput v6, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSecondsDefault:I

    .line 135
    iput-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    .line 136
    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnter:F

    .line 137
    iput v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExit:F

    .line 138
    iput v4, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSeconds:I

    .line 139
    iput v5, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSeconds:I

    .line 140
    iput v6, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSeconds:I

    .line 141
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThreshold:F

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mStarted:Z

    const/4 v0, -0x2

    .line 149
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCurrentUserId:I

    .line 152
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    .line 153
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "hbmsv"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvThread:Landroid/os/HandlerThread;

    .line 154
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/hbmsvmanager/HbmSvManager;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnter:F

    return p0
.end method

.method static synthetic access$1500(Lcom/android/hbmsvmanager/HbmSvManager;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExit:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/hbmsvmanager/HbmSvManager;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/hbmsvmanager/HbmSvManager;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->onDeviceConfigChange()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/hbmsvmanager/HbmSvManager;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSeconds:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/hbmsvmanager/HbmSvManager;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSeconds:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/hbmsvmanager/HbmSvManager;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSeconds:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/hbmsvmanager/HbmSvManager;)Ljava/io/File;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->getHistoryFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/hbmsvmanager/HbmSvManager;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager;->readCompensationImage(Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/hbmsvmanager/HbmSvManager;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThreshold:F

    return p0
.end method

.method private clearHbmSvSwitchHistory()V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->getHistoryFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private disableHbmSv()V
    .locals 2

    .line 308
    sget-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "disable HbmSv"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->stop()V

    .line 312
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->stopObserve()V

    .line 313
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->stopObserve()V

    .line 314
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->stopObserve()V

    .line 315
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->stopObserve()V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->onDestroy()V

    .line 317
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->stop()V

    .line 318
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->onDestroy()V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    .line 321
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    .line 322
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    .line 323
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    .line 324
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    .line 325
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    .line 326
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    .line 327
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    return-void
.end method

.method private enableHbmSv()V
    .locals 4

    .line 282
    sget-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "Enable HbmSv"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->getHalService()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;Lcom/google/hardware/pixel/display/IDisplay;)V

    iput-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    .line 288
    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    .line 289
    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Lcom/google/hardware/pixel/display/IDisplay;)V

    iput-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 291
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    .line 292
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    .line 293
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    .line 294
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    .line 295
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->access$000(Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->startObserve()V

    .line 299
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->startObserve()V

    .line 300
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->startObserve()V

    .line 301
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCameraObserver:Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$CameraObserver;->startObserve()V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->start()V

    .line 304
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->initHbmMode()V

    return-void
.end method

.method private getHalService()Lcom/google/hardware/pixel/display/IDisplay;
    .locals 3

    const-string v0, "com.google.hardware.pixel.display.IDisplay/default"

    .line 260
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    invoke-static {v0}, Lcom/google/hardware/pixel/display/IDisplay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object v1

    .line 267
    :try_start_0
    new-instance v2, Lcom/android/hbmsvmanager/HbmSvManager$1;

    invoke-direct {v2, p0}, Lcom/android/hbmsvmanager/HbmSvManager$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HbmSvManager"

    const-string v0, "Unable to register DeathRecipient for pixel display"

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private getHistoryFile()Ljava/io/File;
    .locals 2

    .line 391
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "hbm_sv_switch_events"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$onStart$0()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->clearHbmSvSwitchHistory()V

    return-void
.end method

.method private synthetic lambda$onStart$1()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->enableHbmSv()V

    return-void
.end method

.method private synthetic lambda$onSwitchUser$2(I)V
    .locals 2

    .line 199
    sget-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on switch to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HbmSvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCurrentUserId:I

    .line 204
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mStarted:Z

    if-eqz p1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->disableHbmSv()V

    .line 206
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->enableHbmSv()V

    :cond_1
    return-void
.end method

.method private onDeviceConfigChange()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvEnabled()Z

    move-result v0

    .line 333
    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eq v1, v0, :cond_1

    .line 334
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->enableHbmSv()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->disableHbmSv()V

    .line 343
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxEnter()F

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v1}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxExit()F

    move-result v1

    .line 346
    iget v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnter:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExit:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    .line 347
    :cond_2
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnter:F

    .line 348
    iput v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExit:F

    .line 350
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onLuxThresholdsChange()V

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvWindowSeconds()I

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v1}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMaxDurationSeconds()I

    move-result v1

    .line 357
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMinDurationSeconds()I

    move-result v2

    .line 359
    iget v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSeconds:I

    if-ne v3, v0, :cond_4

    iget v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSeconds:I

    if-ne v3, v1, :cond_4

    iget v3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSeconds:I

    if-eq v3, v2, :cond_6

    :cond_4
    if-lt v0, v1, :cond_5

    if-lt v1, v2, :cond_5

    .line 363
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSeconds:I

    .line 364
    iput v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSeconds:I

    .line 365
    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSeconds:I

    .line 367
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eqz v0, :cond_6

    .line 368
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->onWindowParamsChange()V

    goto :goto_1

    .line 371
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not apply window parameters from device config: win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HbmSvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getLbeLuxSwitchThreshold()F

    move-result v0

    .line 383
    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThreshold:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 384
    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThreshold:F

    .line 386
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onLbeLuxThresholdsChange()V

    :cond_7
    return-void
.end method

.method private native readCompensationImage(Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 212
    sget-boolean p1, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "HBM Sunlight Visibility:"

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurrentUserId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCurrentUserId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mLuxEnterDefault: 10000.0"

    .line 218
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mLuxExitDefault: 5000.0"

    .line 219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mHbmSvWindowSecondsDefault: 1800"

    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mHbmSvMaxDurationSecondsDefault: 300"

    .line 221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mHbmSvMinDurationSecondsDefault: 60"

    .line 222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mLbeLuxSwitchThresholdDefault: 1000.0"

    .line 223
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->dump(Ljava/io/PrintWriter;)V

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLightSensorManager:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->dump(Ljava/io/PrintWriter;)V

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSettingsObserver:Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$SettingsObserver;->dump(Ljava/io/PrintWriter;)V

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDisplayObserver:Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;

    if-eqz p1, :cond_4

    .line 237
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->dump(Ljava/io/PrintWriter;)V

    .line 240
    :cond_4
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mSkinThermObserver:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    if-eqz p1, :cond_5

    .line 241
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->dump(Ljava/io/PrintWriter;)V

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    if-eqz p1, :cond_6

    .line 245
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->dump(Ljava/io/PrintWriter;)V

    .line 248
    :cond_6
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCompensationManager:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    if-eqz p1, :cond_7

    .line 249
    invoke-virtual {p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->dump(Ljava/io/PrintWriter;)V

    .line 251
    :cond_7
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeSwitchManager:Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    if-eqz p0, :cond_8

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->dump(Ljava/io/PrintWriter;)V

    :cond_8
    return-void
.end method

.method public onStart(ZI)V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    sget-boolean v0, Lcom/android/hbmsvmanager/HbmSvManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, from boot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HbmSvManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mStarted:Z

    .line 171
    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mCurrentUserId:I

    .line 173
    new-instance p2, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    .line 176
    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    .line 177
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxEnter()F

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxEnter:F

    .line 178
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxExit()F

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLuxExit:F

    .line 179
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvWindowSeconds()I

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvWindowSeconds:I

    .line 180
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMaxDurationSeconds()I

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMaxDurationSeconds:I

    .line 181
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMinDurationSeconds()I

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvMinDurationSeconds:I

    .line 182
    iget-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p2}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getLbeLuxSwitchThreshold()F

    move-result p2

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mLbeLuxSwitchThreshold:F

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_2
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHbmSvEnabled:Z

    if-eqz p1, :cond_3

    .line 191
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_3
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mDeviceConfigObserver:Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->startObserve()V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/hbmsvmanager/HbmSvManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
