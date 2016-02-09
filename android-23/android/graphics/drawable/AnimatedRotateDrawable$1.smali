.class Landroid/graphics/drawable/AnimatedRotateDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedRotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@0
    .prologue
    .line 264
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@2
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get0(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@8
    invoke-static {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get1(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    #@b
    move-result v2

    #@c
    add-float/2addr v1, v2

    #@d
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-set0(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    #@10
    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@12
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get0(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    #@15
    move-result v0

    #@16
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@18
    invoke-static {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-get1(Landroid/graphics/drawable/AnimatedRotateDrawable;)F

    #@1b
    move-result v1

    #@1c
    const/high16 v2, 0x43b40000    # 360.0f

    #@1e
    sub-float v1, v2, v1

    #@20
    cmpl-float v0, v0, v1

    #@22
    if-lez v0, :cond_0

    #@24
    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@26
    const/4 v1, 0x0

    #@27
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-set0(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F

    #@2a
    .line 273
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    #@2f
    .line 274
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;->this$0:Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@31
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->-wrap0(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    #@34
    .line 266
    return-void
.end method
