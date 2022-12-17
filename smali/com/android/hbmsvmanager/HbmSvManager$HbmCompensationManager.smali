.class final Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HbmCompensationManager"
.end annotation


# instance fields
.field private mAmbientBrightnessChangedDebounceMS:I

.field private mCompensationImages:[I

.field private mEnabled:Z

.field private final mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

.field private mFilteredBrightness:F

.field private mHandler:Landroid/os/Handler;

.field private mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

.field private mImageRunnable:Ljava/lang/Runnable;

.field private mLastBrightness:F

.field private final mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mNextTimeStamp:J

.field private mRequeryFilterRunnable:Ljava/lang/Runnable;

.field private mThresholdLevel:I

.field private mThresholds:[F

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    .line 2129
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2118
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    .line 2119
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mCompensationImages:[I

    const/4 v1, -0x1

    .line 2120
    iput v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholdLevel:I

    const/4 v1, 0x0

    .line 2121
    iput-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    const/4 v2, 0x0

    .line 2122
    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    .line 2123
    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLastBrightness:F

    .line 2124
    iput v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mAmbientBrightnessChangedDebounceMS:I

    const-wide/16 v3, 0x0

    .line 2125
    iput-wide v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mNextTimeStamp:J

    .line 2353
    new-instance v3, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;

    invoke-direct {v3, p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)V

    iput-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    .line 2130
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f010002

    .line 2132
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f010001

    .line 2134
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/high16 v5, 0x7f010000

    .line 2136
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/high16 v6, 0x7f040000

    .line 2139
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mAmbientBrightnessChangedDebounceMS:I

    .line 2141
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    .line 2143
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    const-string v7, "HbmSvManager"

    if-ne p3, v6, :cond_2

    .line 2144
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-eq p3, v6, :cond_0

    goto :goto_1

    .line 2149
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    if-lez p3, :cond_3

    .line 2150
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    .line 2151
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [Landroid/hardware/HardwareBuffer;

    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    .line 2152
    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$3600(Lcom/android/hbmsvmanager/HbmSvManager;)Landroid/content/Context;

    move-result-object p3

    const-class v6, Landroid/view/WindowManager;

    invoke-virtual {p3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    .line 2154
    invoke-direct {p0, v3, v5}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->readCalibratedImages(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 2155
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    .line 2157
    :cond_1
    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    if-nez p3, :cond_3

    .line 2158
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result p3

    new-array p3, p3, [I

    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mCompensationImages:[I

    move p3, v1

    .line 2159
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge p3, v6, :cond_3

    .line 2160
    iget-object v6, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    const/high16 v8, 0x7fc00000    # Float.NaN

    invoke-virtual {v3, p3, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    aput v8, v6, p3

    .line 2161
    iget-object v6, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mCompensationImages:[I

    .line 2162
    invoke-virtual {v4, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v6, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p3, "The configurations of HbmCompensation is wrong."

    .line 2145
    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Threshold: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Compensation Images: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  calibratedCompensation Images: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2168
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2169
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2171
    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mCompensationImages:[I

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    if-nez p3, :cond_4

    goto :goto_4

    .line 2177
    :cond_4
    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$3600(Lcom/android/hbmsvmanager/HbmSvManager;)Landroid/content/Context;

    move-result-object p1

    const-class p3, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/high16 p3, 0x7f050000

    .line 2178
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/hbmsvmanager/CompensationLayout;

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    .line 2180
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 p3, 0x700

    .line 2182
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 2188
    :cond_5
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->createFullScreenLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const p1, 0x7f040001

    .line 2190
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-gez p1, :cond_6

    const-string p1, "Wrong configuration of compensation filter horizon."

    .line 2192
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v1, p1

    :goto_2
    const/high16 p1, 0x7f020000

    .line 2195
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    .line 2196
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "Wrong configuration of compensation filter intercept."

    .line 2197
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v2, p1

    :goto_3
    const-string p1, "HbmCompensation"

    .line 2202
    invoke-static {p1, v1, v2}, Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;->createAmbientFilter(Ljava/lang/String;IF)Lcom/android/hbmsvmanager/filter/AmbientFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    goto :goto_5

    .line 2172
    :cond_8
    :goto_4
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    .line 2173
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2174
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    .line 2175
    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    :goto_5
    return-void
.end method

.method static synthetic access$3700(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;I)V
    .locals 0

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->showImage(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)F
    .locals 0

    .line 2112
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    return p0
.end method

.method static synthetic access$3902(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;F)F
    .locals 0

    .line 2112
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    return p1
.end method

.method static synthetic access$4000(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Lcom/android/hbmsvmanager/filter/AmbientFilter;
    .locals 0

    .line 2112
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;JF)V
    .locals 0

    .line 2112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->processImageUpdate(JF)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)F
    .locals 0

    .line 2112
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLastBrightness:F

    return p0
.end method

.method static synthetic access$4300(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;F)Z
    .locals 0

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->checkPossibleImageStatusChange(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Ljava/lang/Runnable;
    .locals 0

    .line 2112
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Landroid/os/Handler;
    .locals 0

    .line 2112
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkPossibleImageStatusChange(F)Z
    .locals 3

    .line 2346
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2348
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    aget v2, v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2350
    :cond_0
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholdLevel:I

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private createFullScreenLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 2208
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7e8

    const/16 v1, 0x138

    const/4 v2, -0x3

    invoke-direct {p0, v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 2217
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x100050

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x3

    .line 2222
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "ScreenCompensationOverlay"

    .line 2224
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private isSupported()Z
    .locals 1

    .line 2230
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processImageUpdate(JF)V
    .locals 5

    .line 2271
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    aget v1, v1, v0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2275
    :cond_0
    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mImageRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2277
    :cond_1
    iget-wide v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mNextTimeStamp:J

    sub-long p1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_3

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    goto :goto_1

    .line 2282
    :cond_2
    iget-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;I)V

    iput-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 2279
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->showImage(I)V

    :goto_2
    return-void
.end method

.method private readCalibratedImages(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)I
    .locals 9

    .line 2321
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2322
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    move v2, v1

    .line 2325
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 2326
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v2, v1

    .line 2328
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x123

    .line 2329
    invoke-static/range {v3 .. v8}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2337
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    aget-object v3, v3, v1

    .line 2339
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2338
    invoke-static {v2, v3, v4}, Lcom/android/hbmsvmanager/HbmSvManager;->access$3800(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private showImage(I)V
    .locals 4

    .line 2303
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholdLevel:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2304
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mAmbientBrightnessChangedDebounceMS:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mNextTimeStamp:J

    .line 2306
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholdLevel:I

    if-ltz p1, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholds:[F

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 2309
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_1

    .line 2310
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    const/4 v1, 0x0

    aget-object p1, v0, p1

    invoke-virtual {p0, v1, p1}, Lcom/android/hbmsvmanager/CompensationLayout;->createImage(ILandroid/hardware/HardwareBuffer;)V

    goto :goto_0

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mCompensationImages:[I

    aget p0, p0, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/hbmsvmanager/CompensationLayout;->createImage(ILandroid/hardware/HardwareBuffer;)V

    goto :goto_0

    .line 2315
    :cond_2
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/CompensationLayout;->destroyImage()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "CompensationManager:"

    .line 2295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHardwareBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHardwareBuffer:[Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFilterBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLastBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public onAmbientBrightnessChanged(F)V
    .locals 4

    .line 2250
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2252
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2253
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->addValue(JF)Z

    .line 2254
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilter:Lcom/android/hbmsvmanager/filter/AmbientFilter;

    invoke-virtual {v2, v0, v1}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->getEstimate(J)F

    move-result v2

    iput v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    .line 2256
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2258
    :cond_1
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLastBrightness:F

    .line 2259
    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mFilteredBrightness:F

    invoke-direct {p0, v0, v1, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->processImageUpdate(JF)V

    .line 2265
    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLastBrightness:F

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->checkPossibleImageStatusChange(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2266
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 2234
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2236
    iget v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mThresholdLevel:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 2237
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 2241
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2242
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mLayout:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2244
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mEnabled:Z

    .line 2245
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mRequeryFilterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2246
    :cond_1
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mImageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
