.class Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;
.super Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/hbmsvmanager/filter/AmbientFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

.field final synthetic val$this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iput-object p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->val$this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;Lcom/android/hbmsvmanager/HbmSvManager$1;)V

    return-void
.end method


# virtual methods
.method protected checkPossibleHbmSvStatusChange(F)Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$800(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 589
    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$900(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return v1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->access$800(Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientLbeObserver;->mRequestLbe:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager$AmbientBrightnessObserver;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 594
    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$900(Lcom/android/hbmsvmanager/HbmSvManager;)F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
