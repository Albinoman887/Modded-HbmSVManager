.class Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$2;
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

    .line 1831
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$2;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1835
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HbmSvManager"

    const-string v3, "Scheduled retry to turn on HBM SV switch"

    .line 1836
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$2;->this$2:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-static {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->access$3400(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;J)V

    return-void
.end method
