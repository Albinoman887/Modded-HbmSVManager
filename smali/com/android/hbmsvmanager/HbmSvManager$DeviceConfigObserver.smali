.class final Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConfigObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  DeviceConfigObserver:"

    .line 1172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvLuxEnter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxEnter()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvLuxExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvLuxExit()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvWindowSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvWindowSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvMaxDurationSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMaxDurationSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    HbmSvMinDurationSeconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getHbmSvMinDurationSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    LbeLuxSwitchThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->getLbeLuxSwitchThreshold()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 1190
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getHbmSvEnabled()Z
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_enabled"

    const/4 v1, 0x1

    .line 1086
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getHbmSvLuxEnter()F
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_lux_enter"

    const/high16 v1, -0x40800000    # -1.0f

    .line 1095
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_0

    const p0, 0x461c4000    # 10000.0f

    :cond_0
    return p0
.end method

.method public getHbmSvLuxExit()F
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_lux_exit"

    const/high16 v1, -0x40800000    # -1.0f

    .line 1108
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_0

    const p0, 0x459c4000    # 5000.0f

    :cond_0
    return p0
.end method

.method public getHbmSvMaxDurationSeconds()I
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_max_duration_s"

    const/4 v1, -0x1

    .line 1134
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/16 p0, 0x12c

    :cond_0
    return p0
.end method

.method public getHbmSvMinDurationSeconds()I
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_min_duration_s"

    const/4 v1, -0x1

    .line 1147
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/16 p0, 0x3c

    :cond_0
    return p0
.end method

.method public getHbmSvWindowSeconds()I
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "hbm_sv_window_s"

    const/4 v1, -0x1

    .line 1121
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/16 p0, 0x708

    :cond_0
    return p0
.end method

.method public getLbeLuxSwitchThreshold()F
    .locals 2

    const-string p0, "display_manager"

    const-string v0, "lbe_lux_switch_threshold"

    const/high16 v1, -0x40800000    # -1.0f

    .line 1160
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_0

    const/high16 p0, 0x447a0000    # 1000.0f

    :cond_0
    return p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DeviceConfigObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2300(Lcom/android/hbmsvmanager/HbmSvManager;)V

    return-void
.end method

.method public startObserve()V
    .locals 1

    const-string v0, "display_manager"

    .line 1076
    invoke-static {v0, p0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
