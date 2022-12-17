.class Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)V
    .locals 0

    .line 2354
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2358
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4000(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Lcom/android/hbmsvmanager/filter/AmbientFilter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->getEstimate(J)F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$3902(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;F)F

    .line 2360
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$3900(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)F

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4100(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;JF)V

    .line 2362
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4200(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4300(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4500(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$2;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$4400(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
