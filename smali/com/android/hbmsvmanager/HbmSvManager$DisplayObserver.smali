.class final Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHBMMode:I

.field private final mHandler:Landroid/os/Handler;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mStarted:Z

.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 949
    const-class p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p2, 0x0

    .line 950
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    .line 951
    iput-object p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 952
    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHBMMode:I

    return-void
.end method

.method private updateLbeState()V
    .locals 4

    .line 985
    iget v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHBMMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 987
    invoke-static {v3}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    .line 986
    invoke-virtual {v0, v1, v2}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    .line 990
    invoke-static {v2}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$500(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;

    const/4 p0, 0x0

    .line 989
    invoke-virtual {v0, v1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$LbeSwitchManager;->request(BI)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  DisplayObserver:"

    .line 1001
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHBMMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHBMMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Brightness Max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->getBrightnessMax()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessMax()F
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    .line 981
    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    return p0
.end method

.method public initHbmMode()V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    .line 996
    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHBMMode:I

    .line 997
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->updateLbeState()V

    return-void
.end method

.method public isScreenOn()Z
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 1017
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    .line 1018
    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHBMMode:I

    .line 1019
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->updateLbeState()V

    .line 1020
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->isScreenOn()Z

    move-result p1

    .line 1022
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2100(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$LightSensorManager;->onScreenOn(Z)V

    .line 1023
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1200(Lcom/android/hbmsvmanager/HbmSvManager;)Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    move-result-object p0

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->request(II)V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public startObserve()V
    .locals 4

    .line 956
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 957
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mStarted:Z

    .line 958
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    :cond_0
    return-void
.end method

.method public stopObserve()V
    .locals 1

    .line 969
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 970
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mStarted:Z

    .line 971
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$DisplayObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method
