.class final Lcom/android/hbmsvmanager/CompensationLayout;
.super Landroid/widget/FrameLayout;
.source "CompensationLayout.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mContext:Landroid/content/Context;

.field private final mDuration:J

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageRotation:F

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSec:Landroid/widget/ImageView;

.field private mUsedImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/hbmsvmanager/CompensationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/hbmsvmanager/CompensationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/hbmsvmanager/CompensationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    sget-object p2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    iput-object p2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mColorSpace:Landroid/graphics/ColorSpace;

    const-wide/16 p2, 0xfa

    .line 259
    iput-wide p2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mDuration:J

    const/4 p2, 0x0

    .line 264
    iput-object p2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mUsedImage:Landroid/graphics/Bitmap;

    .line 58
    iput-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mUsedImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mUsedImage:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public createImage(ILandroid/hardware/HardwareBuffer;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {p2, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 109
    :cond_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x2

    .line 110
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/hbmsvmanager/CompensationLayout;->getImageRotation(I)F

    move-result v4

    if-nez p2, :cond_2

    .line 119
    monitor-exit v3

    return-void

    .line 121
    :cond_2
    iput-object p2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImage:Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {p0, p2, v4}, Lcom/android/hbmsvmanager/CompensationLayout;->getRotImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v5, "CompensationLayout"

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createImage, isImagePresent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", imageId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", imageRotation: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 133
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/hbmsvmanager/CompensationLayout;->startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V

    .line 134
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/hbmsvmanager/CompensationLayout;->startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V

    .line 136
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/hbmsvmanager/CompensationLayout;->startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V

    .line 141
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyImage()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    monitor-enter v0

    :try_start_0
    const-string v1, "CompensationLayout"

    const-string v2, "DestroyImage"

    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mUsedImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImage:Landroid/graphics/Bitmap;

    .line 153
    iget-object v2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/hbmsvmanager/CompensationLayout;->startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected getImageRotation(I)F
    .locals 2

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected device rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method protected getRotImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 173
    iput p2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageRotation:F

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    return-object p1

    .line 176
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    .line 178
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/CompensationLayout;->getImageRotation(I)F

    move-result p1

    const-string v0, "CompensationLayout"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged, rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageRotation:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/hbmsvmanager/CompensationLayout;->getRotImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 98
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    monitor-exit v0

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/high16 v0, 0x7f030000

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f030001

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompensationLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :goto_0
    return-void
.end method

.method protected startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    .line 186
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_0
    const-wide/16 v0, 0xfa

    .line 188
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 189
    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    if-nez p3, :cond_1

    if-nez p1, :cond_1

    .line 192
    new-instance p1, Lcom/android/hbmsvmanager/CompensationLayout$1;

    invoke-direct {p1, p0, p2}, Lcom/android/hbmsvmanager/CompensationLayout$1;-><init>(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 217
    iget-object p3, p0, Lcom/android/hbmsvmanager/CompensationLayout;->mImageViewSec:Landroid/widget/ImageView;

    if-ne p2, p3, :cond_2

    .line 218
    new-instance p3, Lcom/android/hbmsvmanager/CompensationLayout$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/hbmsvmanager/CompensationLayout$2;-><init>(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    move-object p1, p3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 251
    invoke-virtual {v2, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 253
    :cond_3
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 254
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
