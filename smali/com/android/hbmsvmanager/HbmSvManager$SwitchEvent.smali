.class Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;
.super Ljava/lang/Object;
.source "HbmSvManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hbmsvmanager/HbmSvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchEvent"
.end annotation


# instance fields
.field public final mOn:Z

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    iput-wide p1, p0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mTimestamp:J

    .line 1307
    iput-boolean p3, p0, Lcom/android/hbmsvmanager/HbmSvManager$SwitchEvent;->mOn:Z

    return-void
.end method
