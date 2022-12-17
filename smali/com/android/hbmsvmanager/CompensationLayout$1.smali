.class Lcom/android/hbmsvmanager/CompensationLayout$1;
.super Ljava/lang/Object;
.source "CompensationLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hbmsvmanager/CompensationLayout;->startAlphaAnimation(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hbmsvmanager/CompensationLayout;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    iput-object p2, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 199
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {p1}, Lcom/android/hbmsvmanager/CompensationLayout;->access$000(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/widget/ImageView;

    move-result-object p1

    monitor-enter p1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {v0}, Lcom/android/hbmsvmanager/CompensationLayout;->access$100(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "CompensationLayout"

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " DestroyImage, mUsedImage to recycle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    .line 204
    invoke-static {v3}, Lcom/android/hbmsvmanager/CompensationLayout;->access$100(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {v0}, Lcom/android/hbmsvmanager/CompensationLayout;->access$100(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {v0, v1}, Lcom/android/hbmsvmanager/CompensationLayout;->access$102(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 210
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
