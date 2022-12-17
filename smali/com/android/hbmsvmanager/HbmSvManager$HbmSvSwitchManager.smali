.class final Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HbmSvSwitchManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;
    }
.end annotation


# instance fields
.field private mCombinedRequest:I

.field private mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

.field private mHandler:Landroid/os/Handler;

.field private final mHbmSupported:Z

.field private mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

.field private mLightHalServer:Lhardware/google/light/V1_1/ILight;

.field private final mRequests:[I

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;Lcom/google/hardware/pixel/display/IDisplay;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 1448
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 p1, 0x0

    .line 1449
    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mCombinedRequest:I

    .line 1454
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Lcom/android/hbmsvmanager/HbmSvManager$1;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    .line 1458
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHandler:Landroid/os/Handler;

    .line 1459
    iput-object p4, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    .line 1460
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->checkHalService()V

    .line 1461
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->getHbmSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    .line 1462
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->getHbmSvStatus()Z

    move-result p1

    .line 1463
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-static {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->access$2600(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;
    .locals 0

    .line 1432
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Z)Z
    .locals 0

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->onHbmSvSwitchOn(Z)Z

    move-result p0

    return p0
.end method

.method private checkHalService()V
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    if-nez v0, :cond_0

    .line 1550
    :try_start_0
    invoke-static {}, Lhardware/google/light/V1_1/ILight;->getService()Lhardware/google/light/V1_1/ILight;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HbmSvManager"

    const-string v0, "Failed to get LightHal service."

    .line 1552
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getHbmSupported()Z
    .locals 3

    .line 1558
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 1563
    :try_start_0
    invoke-interface {v0}, Lcom/google/hardware/pixel/display/IDisplay;->isHbmSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "HbmSvManager"

    const-string v2, "Failed to call isHbmSupported"

    .line 1565
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1567
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private getHbmSvStatus()Z
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    if-nez v2, :cond_0

    return v1

    .line 1577
    :cond_0
    iget-boolean v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v2, "HbmSvManager"

    if-eqz v0, :cond_3

    .line 1583
    :try_start_0
    invoke-interface {v0}, Lcom/google/hardware/pixel/display/IDisplay;->getHbmState()B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception p0

    const-string v0, "Failed to call getHbmState"

    .line 1585
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1589
    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    invoke-interface {p0}, Lhardware/google/light/V1_1/ILight;->getHbmSv()Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to call LightHal"

    .line 1591
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method private onHbmSvSwitchOn(Z)Z
    .locals 8

    .line 1602
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    if-nez v0, :cond_0

    return v1

    .line 1605
    :cond_0
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x5

    move v2, v1

    .line 1611
    :catch_0
    :goto_0
    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    const/4 v4, 0x1

    const-string v5, "HbmSvManager"

    if-eqz v3, :cond_3

    const/4 v6, 0x2

    if-eqz p1, :cond_2

    .line 1614
    :try_start_0
    invoke-interface {v3, v6}, Lcom/google/hardware/pixel/display/IDisplay;->setHbmState(B)V

    .line 1615
    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v3}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v3

    iget-object v7, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 1616
    invoke-static {v7}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    iget-object v7, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v7}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 1615
    invoke-virtual {v3, v6, v4}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    goto :goto_1

    .line 1618
    :cond_2
    invoke-interface {v3, v1}, Lcom/google/hardware/pixel/display/IDisplay;->setHbmState(B)V

    .line 1619
    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v3}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v3

    iget-object v7, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 1620
    invoke-static {v7}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    iget-object v7, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v7}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 1619
    invoke-virtual {v3, v6, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v2, v4

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "Failed to call setHbmState"

    .line 1624
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1628
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mLightHalServer:Lhardware/google/light/V1_1/ILight;

    invoke-interface {v3, p1}, Lhardware/google/light/V1_1/ILight;->setHbmSv(Z)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v4, "Failed to call LightHal"

    .line 1630
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_8

    .line 1649
    :goto_3
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1650
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set HBM SV "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const-string p1, "ON"

    goto :goto_4

    :cond_6
    const-string p1, "OFF"

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", res:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2

    :cond_8
    const-string v3, "Failed to set hbm sv, retry"

    .line 1642
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2

    .line 1644
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private updateCombinedRequest()V
    .locals 8

    .line 1522
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget v7, v0, v3

    if-ne v7, v5, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    if-ne v7, v6, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1531
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mCombinedRequest:I

    if-ne v0, v4, :cond_3

    return-void

    .line 1533
    :cond_3
    iput v4, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mCombinedRequest:I

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    goto :goto_2

    .line 1539
    :cond_4
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-virtual {p0, v2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->request(Z)V

    goto :goto_2

    .line 1536
    :cond_5
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-virtual {p0, v6}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->request(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "ANY"

    const-string v1, "ON"

    const-string v2, "OFF"

    .line 1497
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "  HbmSvSwitchManager:"

    .line 1499
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHbmSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[AMBIENT_BRIGHTNESS]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[LOW_POWER]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[ADAPTIVE_BRIGHTNESS]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[SCREEN_BRIGHTNESS]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[DISPLAY]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mRequests[SKIN_THERM]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCombinedRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mCombinedRequest:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-virtual {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1486
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->request(Z)V

    return-void
.end method

.method public onWindowParamsChange()V
    .locals 1

    .line 1490
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 1493
    :cond_0
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSvSwitch:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->onWindowParamsChange()V

    return-void
.end method

.method public request(II)V
    .locals 2

    .line 1467
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mHbmSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HbmSvManager"

    if-ltz p1, :cond_5

    const/4 v1, 0x6

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_4

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->mRequests:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_3

    .line 1480
    aput p2, v0, p1

    .line 1481
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->updateCombinedRequest()V

    :cond_3
    return-void

    .line 1475
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid request "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1471
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request from invalid source "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", req "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
