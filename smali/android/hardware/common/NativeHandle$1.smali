.class Landroid/hardware/common/NativeHandle$1;
.super Ljava/lang/Object;
.source "NativeHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/common/NativeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/common/NativeHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/common/NativeHandle;
    .locals 0

    .line 14
    new-instance p0, Landroid/hardware/common/NativeHandle;

    invoke-direct {p0}, Landroid/hardware/common/NativeHandle;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/common/NativeHandle;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/common/NativeHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/common/NativeHandle;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/common/NativeHandle;
    .locals 0

    .line 20
    new-array p0, p1, [Landroid/hardware/common/NativeHandle;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/common/NativeHandle$1;->newArray(I)[Landroid/hardware/common/NativeHandle;

    move-result-object p0

    return-object p0
.end method
