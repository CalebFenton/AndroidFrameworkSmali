.class Landroid/widget/ViewFlipper$2;
.super Landroid/os/Handler;
.source "ViewFlipper.java"


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
    .line 214
    iput-object p1, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 218
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@7
    invoke-static {v0}, Landroid/widget/ViewFlipper;->-get1(Landroid/widget/ViewFlipper;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 219
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@f
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    #@12
    .line 220
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper$2;->obtainMessage(I)Landroid/os/Message;

    #@15
    move-result-object p1

    #@16
    .line 221
    iget-object v0, p0, Landroid/widget/ViewFlipper$2;->this$0:Landroid/widget/ViewFlipper;

    #@18
    invoke-static {v0}, Landroid/widget/ViewFlipper;->-get0(Landroid/widget/ViewFlipper;)I

    #@1b
    move-result v0

    #@1c
    int-to-long v0, v0

    #@1d
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ViewFlipper$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@20
    .line 216
    :cond_0
    return-void
.end method
