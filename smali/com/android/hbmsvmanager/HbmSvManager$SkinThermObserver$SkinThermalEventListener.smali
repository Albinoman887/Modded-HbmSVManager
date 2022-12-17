.class final Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SkinThermalEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;


# direct methods
.method public static synthetic $r8$lambda$aPrKyN3eBtn0eJA2_tc4vvB01N8(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->lambda$notifyThrottling$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$notifyThrottling$0(I)V
    .locals 1

    .line 1292
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 4

    .line 1272
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1275
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SkinThermalEventListener: notifyThrottling was called , current skin status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", temperature = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HbmSvManager"

    .line 1276
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1289
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    invoke-virtual {v0}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->isDeviceTooHot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onSkinTempWarnOn(Z)V

    .line 1290
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;->access$2400(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$SkinThermObserver$SkinThermalEventListener;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
