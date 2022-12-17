.class Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1815
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_0

    const-string v0, "Scheduled turn off HBM SV switch"

    .line 1816
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1820
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-static {v0, v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->access$3200(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;J)V

    .line 1821
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->access$3300(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1822
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Still in request ON status, try next ON"

    .line 1823
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-static {p0, v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->access$3400(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;J)V

    :cond_2
    return-void
.end method
