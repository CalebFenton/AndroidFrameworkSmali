.class Landroid/widget/ViewFlipper$2;
.super Ljava/lang/Object;
.source "ViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ViewFlipper;

    #@0
    .prologue
    .line 211
    iput-object p1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@2
    invoke-static {v0}, Landroid/widget/ViewFlipper;->-get2(Landroid/widget/ViewFlipper;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 215
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@a
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    #@d
    .line 216
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@f
    iget-object v1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@11
    invoke-static {v1}, Landroid/widget/ViewFlipper;->-get1(Landroid/widget/ViewFlipper;)Ljava/lang/Runnable;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@17
    invoke-static {v2}, Landroid/widget/ViewFlipper;->-get0(Landroid/widget/ViewFlipper;)I

    #@1a
    move-result v2

    #@1b
    int-to-long v2, v2

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ViewFlipper;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1f
    .line 213
    :cond_0
    return-void
.end method
