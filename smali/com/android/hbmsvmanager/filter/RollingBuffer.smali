.class public Lcom/android/hbmsvmanager/filter/RollingBuffer;
.super Ljava/lang/Object;
.source "RollingBuffer.java"


# instance fields
.field private mCount:I

.field private mEnd:I

.field private mSize:I

.field private mStart:I

.field private mTimes:[J

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 37
    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    new-array v1, v0, [J

    .line 38
    iput-object v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    new-array v0, v0, [F

    .line 39
    iput-object v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    .line 40
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->clear()V

    return-void
.end method

.method private expandBuffer()V
    .locals 7

    .line 154
    iget v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 155
    new-array v1, v0, [J

    .line 156
    new-array v2, v0, [F

    .line 157
    iget-object v3, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v3, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    iget v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v3, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    iget v5, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v3, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    iget v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    iget v5, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    sub-int/2addr v4, v5

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    .line 162
    iput v6, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    .line 163
    iget v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mEnd:I

    .line 164
    iput-object v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    .line 165
    iput-object v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    return-void
.end method

.method private getLatestIndexBefore(J)I
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    .line 169
    :goto_0
    iget v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    invoke-direct {p0, v1}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->offsetOf(I)I

    move-result v3

    aget-wide v2, v2, v3

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v0

    return v2
.end method

.method private offsetOf(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 146
    iget v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    .line 150
    iget v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    rem-int/2addr v0, p0

    return v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCount= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(JF)V
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    iget v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    if-lt v0, v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->expandBuffer()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    iget v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mEnd:I

    aput-wide p1, v0, v1

    .line 54
    iget-object p1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    aput p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 55
    iget p1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mEnd:I

    .line 56
    iget p1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    .line 122
    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    .line 123
    iput v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mEnd:I

    return-void
.end method

.method public getTime(I)J
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->offsetOf(I)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public getValue(I)F
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    invoke-direct {p0, p1}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->offsetOf(I)I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 134
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    if-ge v1, v2, :cond_1

    .line 135
    invoke-direct {p0, v1}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->offsetOf(I)I

    move-result v2

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mValues:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    .line 137
    iget v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public truncate(J)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->getTime(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->getLatestIndexBefore(J)I

    move-result v0

    .line 107
    invoke-direct {p0, v0}, Lcom/android/hbmsvmanager/filter/RollingBuffer;->offsetOf(I)I

    move-result v1

    iput v1, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mStart:I

    .line 108
    iget v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mCount:I

    .line 116
    iget-object p0, p0, Lcom/android/hbmsvmanager/filter/RollingBuffer;->mTimes:[J

    aput-wide p1, p0, v1

    :cond_1
    :goto_0
    return-void
.end method
