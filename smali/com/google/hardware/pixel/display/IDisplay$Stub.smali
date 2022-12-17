.class public abstract Lcom/google/hardware/pixel/display/IDisplay$Stub;
.super Landroid/os/Binder;
.source "IDisplay.java"

# interfaces
.implements Lcom/google/hardware/pixel/display/IDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/hardware/pixel/display/IDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/hardware/pixel/display/IDisplay;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    sget-object v0, Lcom/google/hardware/pixel/display/IDisplay;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lcom/google/hardware/pixel/display/IDisplay;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/hardware/pixel/display/IDisplay;
    .locals 1

    .line 434
    sget-object v0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->sDefaultImpl:Lcom/google/hardware/pixel/display/IDisplay;

    return-object v0
.end method
