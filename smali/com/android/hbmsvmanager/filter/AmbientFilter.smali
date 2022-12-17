.class public abstract Lcom/android/hbmsvmanager/filter/AmbientFilter;
.super Ljava/lang/Object;
.source "AmbientFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hbmsvmanager/filter/AmbientFilter$WeightedMovingAverageAmbientFilter;
    }
.end annotation


# instance fields
.field private final mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

.field private final mHorizon:I

.field protected mLoggingEnabled:Z

.field protected final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->validateArguments(I)V

    .line 56
    iput-object p1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mLoggingEnabled:Z

    .line 58
    iput p2, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mHorizon:I

    .line 59
    new-instance p1, Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-direct {p1}, Lcom/android/hbmsvmanager/filter/RollingBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    return-void
.end method

.method private truncateOldValues(J)V
    .locals 2

    .line 134
    iget v0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mHorizon:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 135
    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->truncate(J)V

    return-void
.end method

.method private validateArguments(I)V
    .locals 0

    if-lez p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "horizon must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addValue(JF)Z
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->truncateOldValues(J)V

    .line 74
    iget-boolean v0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->add(JF)V

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-virtual {p0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract filter(JLcom/android/hbmsvmanager/filter/RollingBuffer;)F
.end method

.method public getEstimate(J)F
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->truncateOldValues(J)V

    .line 89
    iget-object v0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mBuffer:Lcom/android/hbmsvmanager/filter/RollingBuffer;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/hbmsvmanager/filter/AmbientFilter;->filter(JLcom/android/hbmsvmanager/filter/RollingBuffer;)F

    move-result v0

    .line 90
    iget-boolean v1, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/AmbientFilter;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get estimate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
