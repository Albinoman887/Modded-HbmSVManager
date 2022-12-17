.class Lcom/android/hbmsvmanager/CompensationLayout$2;
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

.field final synthetic val$source:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/hbmsvmanager/CompensationLayout;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    iput-object p2, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {p1}, Lcom/android/hbmsvmanager/CompensationLayout;->access$000(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "CompensationLayout"

    if-eqz p1, :cond_1

    .line 227
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 228
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, " recycleImage is null"

    .line 231
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    const-string p1, " invalid drawable"

    .line 236
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {p1}, Lcom/android/hbmsvmanager/CompensationLayout;->access$000(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$source:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->this$0:Lcom/android/hbmsvmanager/CompensationLayout;

    invoke-static {p1}, Lcom/android/hbmsvmanager/CompensationLayout;->access$000(Lcom/android/hbmsvmanager/CompensationLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 242
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 244
    iget-object p0, p0, Lcom/android/hbmsvmanager/CompensationLayout$2;->val$imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
