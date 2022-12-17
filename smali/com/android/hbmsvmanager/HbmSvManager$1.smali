.class Lcom/android/hbmsvmanager/HbmSvManager$1;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hbmsvmanager/HbmSvManager;->getHalService()Lcom/google/hardware/pixel/display/IDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hbmsvmanager/HbmSvManager;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$1;->this$0:Lcom/android/hbmsvmanager/HbmSvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const-string p0, "HbmSvManager"

    const-string v0, "binderDied calling~!"

    .line 271
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
