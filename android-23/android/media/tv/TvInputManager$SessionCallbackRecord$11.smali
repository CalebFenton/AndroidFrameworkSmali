.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;IIII)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$left"    # I
    .param p3, "val$top"    # I
    .param p4, "val$right"    # I
    .param p5, "val$bottom"    # I

    #@0
    .prologue
    .line 525
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$left:I

    #@4
    iput p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$top:I

    #@6
    iput p4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$right:I

    #@8
    iput p5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$bottom:I

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$left:I

    #@e
    iget v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$top:I

    #@10
    iget v4, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$right:I

    #@12
    iget v5, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$11;->val$bottom:I

    #@14
    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/TvInputManager$SessionCallback;->onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V

    #@17
    .line 527
    return-void
.end method
