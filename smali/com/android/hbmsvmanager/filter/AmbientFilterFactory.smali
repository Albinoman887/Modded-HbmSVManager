.class public Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;
.super Ljava/lang/Object;
.source "AmbientFilterFactory.java"


# direct methods
.method public static createAmbientFilter(Ljava/lang/String;IF)Lcom/android/hbmsvmanager/filter/AmbientFilter;
    .locals 1

    .line 36
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/hbmsvmanager/filter/AmbientFilter$WeightedMovingAverageAmbientFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;IF)V

    return-object v0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/hbmsvmanager/filter/AmbientFilter;
    .locals 2

    const v0, 0x7f040002

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f020003

    .line 60
    invoke-static {p1, v1}, Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;->getFloat(Landroid/content/res/Resources;I)F

    move-result p1

    .line 68
    invoke-static {p0, v0, p1}, Lcom/android/hbmsvmanager/filter/AmbientFilterFactory;->createAmbientFilter(Ljava/lang/String;IF)Lcom/android/hbmsvmanager/filter/AmbientFilter;

    move-result-object p0

    return-object p0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 2

    .line 75
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 78
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method
