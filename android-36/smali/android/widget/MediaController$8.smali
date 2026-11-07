.class Landroid/widget/MediaController$8;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MediaController;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/MediaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 691
    iput-object p1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 694
    iget-object v0, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 695
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x1388

    .line 696
    iget-object v1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$fgetmPlayer(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 697
    iget-object v1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->-$$Nest$msetProgress(Landroid/widget/MediaController;)I

    .line 699
    iget-object v1, p0, Landroid/widget/MediaController$8;->this$0:Landroid/widget/MediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    .line 700
    return-void
.end method
