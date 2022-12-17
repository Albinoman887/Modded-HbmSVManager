.class Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;
.super Ljava/lang/Object;
.source "HbmSvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HbmSvSwitch"
.end annotation


# instance fields
.field private mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHbmSvMaxDurMs:I

.field private mHbmSvMinDurMs:I

.field private mHbmSvWindowMs:I

.field private mRequestStatus:Z

.field private mScheduledOff:Ljava/lang/Runnable;

.field private mScheduledRetry:Ljava/lang/Runnable;

.field private mStatus:Z

.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;


# direct methods
.method private constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)V
    .locals 1

    .line 1655
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    iget-object v0, p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2700(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    .line 1657
    iget-object v0, p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2800(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    .line 1658
    iget-object p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2900(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMinDurMs:I

    .line 1811
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;

    invoke-direct {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$1;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledOff:Ljava/lang/Runnable;

    .line 1830
    new-instance p1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$2;

    invoke-direct {p1, p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch$2;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;)V

    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledRetry:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Lcom/android/hbmsvmanager/HbmSvManager$1;)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;-><init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;Z)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->init(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;J)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->turnOff(J)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;)Z
    .locals 0

    .line 1655
    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;J)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->tryOn(J)V

    return-void
.end method

.method private addEvent(JZ)V
    .locals 2

    .line 1978
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const-string p0, "Turn off switch but history is empty"

    .line 1979
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-boolean v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-ne v0, p3, :cond_2

    .line 1985
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Switch is already in status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, "ON"

    goto :goto_0

    :cond_1
    const-string p1, "OFF"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1989
    :cond_2
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;-><init>(JZ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1990
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->storeToFile()V

    return-void
.end method

.method private getBalance(J)J
    .locals 6

    .line 2020
    :goto_0
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-boolean p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-nez p1, :cond_0

    const-string p1, "HbmSvManager"

    const-string p2, "Error: Event history starts with OFF. Drop it"

    .line 2021
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 2025
    :cond_0
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 2026
    iget-boolean v3, v2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-eqz v3, :cond_1

    move-object p2, v2

    goto :goto_1

    .line 2029
    :cond_1
    iget-wide v2, v2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    iget-wide v4, p2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_1

    .line 2033
    :cond_2
    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    int-to-long p0, p0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private getDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    .line 1713
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t  "

    .line 1714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "History events:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "ON"

    const-string v8, "OFF"

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 1717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    .line 1718
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\t"

    .line 1719
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    iget-boolean v9, v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    iget-boolean v7, v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-eqz v7, :cond_1

    move-object v3, v6

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const-string v6, "\tERROR"

    .line 1725
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1727
    :cond_2
    iget-wide v6, v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    iget-wide v8, v3, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    sub-long/2addr v6, v8

    const-string v8, " duration: "

    .line 1728
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-long/2addr v4, v6

    .line 1732
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1735
    :cond_3
    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-boolean v2, v2, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-eqz v2, :cond_4

    .line 1736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1737
    iget-object v6, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-wide v9, v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    sub-long v9, v2, v9

    add-long/2addr v4, v9

    .line 1738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Total ON (until now "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1740
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total ON: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    :goto_3
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Request status: "

    .line 1744
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    iget-boolean v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    if-eqz v2, :cond_5

    move-object v2, v7

    goto :goto_4

    :cond_5
    move-object v2, v8

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Switch status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move-object v7, v8

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTurnOnTime(J)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1879
    invoke-direct/range {p0 .. p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getBalance(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-string v8, "balance is "

    const-string v9, "HbmSvManager"

    if-gez v7, :cond_0

    .line 1886
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v7, v3

    move-wide v3, v5

    goto :goto_0

    .line 1889
    :cond_0
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1890
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-wide v7, v5

    .line 1894
    :goto_0
    iget v10, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    int-to-long v10, v10

    sub-long v10, v1, v10

    .line 1895
    iget-object v12, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    new-instance v13, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    const/4 v14, 0x1

    invoke-direct {v13, v1, v2, v14}, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;-><init>(JZ)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1899
    iget-object v13, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    move-object/from16 v16, v13

    .line 1900
    iget-wide v12, v14, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    sub-long v10, v12, v10

    .line 1902
    iget-boolean v15, v14, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-nez v15, :cond_2

    add-long/2addr v7, v10

    goto :goto_2

    :cond_2
    cmp-long v15, v3, v10

    if-ltz v15, :cond_4

    add-long/2addr v7, v10

    sub-long/2addr v3, v10

    .line 1916
    :goto_2
    iget v10, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    int-to-long v14, v10

    cmp-long v11, v7, v14

    if-ltz v11, :cond_3

    int-to-long v7, v10

    :cond_3
    move-wide v10, v12

    move-object/from16 v13, v16

    goto :goto_1

    :cond_4
    add-long/2addr v7, v3

    .line 1909
    iget v3, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    int-to-long v10, v3

    cmp-long v4, v7, v10

    if-ltz v4, :cond_5

    int-to-long v3, v3

    move-wide v7, v3

    :cond_5
    move-object v12, v14

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    .line 1923
    :goto_3
    iget v3, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMinDurMs:I

    int-to-long v3, v3

    cmp-long v3, v7, v3

    if-gez v3, :cond_9

    if-nez v12, :cond_8

    .line 1925
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Error: lastOn is null"

    .line 1926
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_7
    iget-object v3, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 1933
    :cond_8
    iget v3, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iget-wide v3, v12, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    sub-long/2addr v1, v3

    add-long/2addr v7, v1

    cmp-long v1, v7, v5

    if-lez v1, :cond_9

    const-string v1, "Error!!!"

    .line 1936
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget v1, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    neg-int v1, v1

    int-to-long v7, v1

    .line 1941
    :cond_9
    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-wide v7
.end method

.method private init(Z)V
    .locals 10

    .line 1753
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    .line 1754
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    .line 1757
    invoke-direct {p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->loadFromFile()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1759
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    .line 1762
    :cond_0
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_2

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After init with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "ON"

    goto :goto_0

    :cond_1
    const-string p1, "OFF"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_2
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1767
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-boolean p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-nez p1, :cond_3

    goto :goto_2

    .line 1774
    :cond_3
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-wide v2, p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    .line 1775
    invoke-direct {p0, v2, v3}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getTurnOnTime(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_9

    .line 1777
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v4, v2

    sub-long/2addr v4, v8

    cmp-long p1, v4, v6

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    move-wide v6, v4

    .line 1786
    :goto_1
    iget p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    sub-long/2addr v2, v8

    cmp-long p1, v6, v2

    if-lez p1, :cond_5

    move-wide v6, v2

    .line 1791
    :cond_5
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recovered from kill/reboot. Keep it on for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_6
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledOff:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    :goto_2
    const-string p1, "HBM SV is on but the last event is not on"

    .line 1768
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    .line 1771
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    .line 1772
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3100(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Z)Z

    goto :goto_3

    .line 1802
    :cond_8
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    iget-boolean p1, p1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-eqz p1, :cond_9

    const-string p1, "HBM SV is off but the last event is on"

    .line 1803
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1806
    invoke-direct {p0, v1, v2, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->addEvent(JZ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private loadFromFile()Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2044
    :try_start_0
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {p0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$3500(Lcom/android/hbmsvmanager/HbmSvManager;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2045
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2046
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2048
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 2049
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 2052
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 2053
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 2070
    :catch_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 2073
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    goto/16 :goto_7

    :catch_1
    move-object v4, v0

    goto :goto_2

    :catch_2
    move-object v4, v0

    :catch_3
    move-object v0, v2

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_4
    move-object v2, v0

    goto :goto_1

    :catch_5
    move-object v4, v0

    goto :goto_5

    :catch_6
    move-object v1, v0

    move-object v2, v1

    :goto_1
    move-object v4, v2

    :catch_7
    :goto_2
    move-object v0, p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_8
    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    :goto_3
    :try_start_6
    const-string p0, "HbmSvManager"

    const-string v3, "Failed to load from file"

    .line 2062
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 2065
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1
    if-eqz v2, :cond_2

    .line 2070
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_2
    if-eqz v1, :cond_6

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 2073
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 2077
    :catch_9
    :cond_4
    throw p0

    :catch_a
    move-object v1, v0

    move-object v4, v1

    :goto_5
    if-eqz v0, :cond_5

    .line 2070
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    .line 2073
    :goto_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :catch_b
    :cond_6
    move-object v0, v4

    :catch_c
    :goto_7
    return-object v0
.end method

.method private storeToFile()V
    .locals 4

    const/4 v0, 0x0

    .line 2087
    :try_start_0
    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object v1, v1, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v1}, Lcom/android/hbmsvmanager/HbmSvManager;->access$3500(Lcom/android/hbmsvmanager/HbmSvManager;)Ljava/io/File;

    move-result-object v1

    .line 2088
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2089
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2091
    :try_start_2
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2092
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 2093
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2100
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 2103
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_2
    :try_start_4
    const-string v1, "HbmSvManager"

    const-string v3, "Failed to store events"

    .line 2096
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    .line 2100
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :catch_3
    :cond_2
    :goto_3
    return-void

    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 2103
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2107
    :catch_4
    :cond_4
    throw p0
.end method

.method private trimEventsOutOfWindow(J)V
    .locals 5

    .line 1995
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1996
    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    int-to-long v1, v1

    sub-long/2addr p1, v1

    .line 1998
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1999
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    .line 2001
    iget-wide v2, v1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 2006
    :cond_0
    iget-boolean v0, v1, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    if-nez v0, :cond_2

    .line 2008
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mEvents:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;-><init>(JZ)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 2004
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private tryOn(J)V
    .locals 7

    .line 1844
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    const-string v1, "HbmSvManager"

    if-eqz v0, :cond_0

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryOn at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->trimEventsOutOfWindow(J)V

    .line 1853
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getTurnOnTime(J)J

    move-result-wide v2

    .line 1855
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    const-string v4, " ms"

    if-eqz v0, :cond_1

    .line 1856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turn on time at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_5

    .line 1859
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->turnOn(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1860
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scheduled a turnoff after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_2
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledOff:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1865
    :cond_3
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Failed to turn on HbmSvSwitch. Scheduled a retry in 1s"

    .line 1866
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_4
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledRetry:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1871
    :cond_5
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Scheduled a retry after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long v5, v2

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_6
    iget-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledRetry:Ljava/lang/Runnable;

    neg-long v0, v2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private turnOff(J)V
    .locals 2

    .line 1964
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "HbmSvSwitch OFF"

    .line 1965
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 1967
    invoke-direct {p0, p1, p2, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->addEvent(JZ)V

    .line 1968
    iput-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    .line 1969
    iget-object p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {p0, v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3100(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Z)Z

    return-void
.end method

.method private turnOn(J)Z
    .locals 2

    .line 1947
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HbmSvManager"

    const-string v1, "HbmSvSwitch ON"

    .line 1948
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3100(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1954
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->addEvent(JZ)V

    .line 1955
    iput-boolean v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HbmSvSwitch:"

    invoke-direct {p0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->getDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHbmSvWindowMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHbmSvMaxDurMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mHbmSvMinDurMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMinDurMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowParamsChange()V
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2700(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvWindowMs:I

    .line 1696
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2800(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMaxDurMs:I

    .line 1697
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    iget-object v0, v0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager;->access$2900(Lcom/android/hbmsvmanager/HbmSvManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mHbmSvMinDurMs:I

    return-void
.end method

.method public request(Z)V
    .locals 4

    .line 1667
    invoke-static {}, Lcom/android/hbmsvmanager/HbmSvManager;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HbmSvSwitch request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 1671
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and current switch status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    iget-boolean v3, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HbmSvManager"

    .line 1668
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_2
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    if-ne v0, p1, :cond_3

    return-void

    .line 1679
    :cond_3
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mRequestStatus:Z

    .line 1680
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1681
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;

    invoke-static {v0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;->access$3000(Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mScheduledRetry:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1683
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_4

    .line 1684
    iget-boolean v2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    if-nez v2, :cond_4

    .line 1685
    invoke-direct {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->tryOn(J)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 1686
    iget-boolean p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->mStatus:Z

    if-eqz p1, :cond_5

    .line 1687
    invoke-direct {p0, v0, v1}, Lcom/android/hbmsvmanager/HbmSvManager$HbmSvSwitchManager$HbmSvSwitch;->turnOff(J)V

    :cond_5
    :goto_2
    return-void
.end method
