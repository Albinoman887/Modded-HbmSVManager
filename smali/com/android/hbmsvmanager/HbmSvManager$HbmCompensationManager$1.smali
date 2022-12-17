.class Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->processImageUpdate(JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

.field final synthetic val$thresholdIdx:I


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;I)V
    .locals 0

    .line 2284
    iput-object p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    iput p2, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;->val$thresholdIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2287
    iget-object v0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;->this$1:Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;

    iget p0, p0, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager$1;->val$thresholdIdx:I

    invoke-static {v0, p0}, Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;->access$3700(Lcom/android/hbmsvmanager/HbmSvManager$HbmCompensationManager;I)V

    return-void
.end method
