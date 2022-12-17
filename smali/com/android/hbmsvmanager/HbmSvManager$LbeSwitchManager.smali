.class final Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LbeSwitchManager"
.end annotation


# instance fields
.field private mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

.field private mLbeState:B

.field private final mLbeSupported:Z

.field private mPreferredState:B

.field private final mRequestState:[I

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method public constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Lcom/google/hardware/pixel/display/IDisplay;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 1321
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    const/4 p1, 0x0

    .line 1327
    iput-byte p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mPreferredState:B

    .line 1328
    iput-byte p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeState:B

    .line 1331
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    .line 1332
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->getLbeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;)Z
    .locals 0

    .line 1311
    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeSupported:Z

    return p0
.end method

.method private getLbeSupported()Z
    .locals 2

    .line 1336
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz p0, :cond_0

    .line 1338
    :try_start_0
    invoke-interface {p0}, Lcom/google/hardware/pixel/display/IDisplay;->isLbeSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "HbmSvManager"

    const-string v1, "Failed to call isLbeSupported"

    .line 1340
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setLbeSwitchState(B)V
    .locals 2

    .line 1398
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz v0, :cond_2

    .line 1404
    :try_start_0
    iget-byte v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeState:B

    if-eq v1, p1, :cond_1

    .line 1405
    invoke-interface {v0, p1}, Lcom/google/hardware/pixel/display/IDisplay;->setLbeState(B)V

    .line 1406
    iput-byte p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeState:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    const-string p1, "HbmSvManager"

    const-string v0, "Failed to call setLbeState"

    .line 1410
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private updateCombinedRequest()V
    .locals 4

    .line 1363
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v0, 0x3

    :goto_0
    if-lez v0, :cond_1

    .line 1365
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    goto :goto_0

    .line 1372
    :cond_1
    :goto_1
    iget-byte v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mPreferredState:B

    if-eq v0, v1, :cond_2

    .line 1373
    iput-byte v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mPreferredState:B

    .line 1374
    invoke-direct {p0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->setLbeSwitchState(B)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "LbeSwitchManager:"

    .line 1420
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLbeSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRequestState[STATE_POWER_SAVE]= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRequestState[STATE_HIGH_BRIGHTNESS]= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRequestState[STATE_NORMAL_ON]= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLbeState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeState:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1416
    invoke-direct {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->setLbeSwitchState(B)V

    return-void
.end method

.method public request(BI)V
    .locals 3

    const-string v0, "HbmSvManager"

    if-ltz p1, :cond_2

    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Request state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " req "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mRequestState:[I

    aget v1, v0, p1

    if-eq v1, p2, :cond_1

    .line 1355
    aput p2, v0, p1

    .line 1356
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->updateCombinedRequest()V

    :cond_1
    return-void

    .line 1348
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request from invalid state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAmbientLight(F)V
    .locals 2

    .line 1379
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mLbeSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 1382
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const-string v0, "HbmSvManager"

    if-lez p1, :cond_3

    const v1, 0x249f0

    if-lt p1, v1, :cond_1

    goto :goto_1

    .line 1387
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->mDisplayHalServer:Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz p0, :cond_2

    .line 1389
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/hardware/pixel/display/IDisplay;->setLbeAmbientLight(I)V

    .line 1390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LbeLux "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call setLbeAmbietnLight"

    .line 1392
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "LbeLux invalidated"

    .line 1384
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
