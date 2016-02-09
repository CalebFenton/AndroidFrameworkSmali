.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoUnavailable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$reason"    # I

    #@0
    .prologue
    .line 497
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;->val$reason:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$8;->val$reason:I

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallback;->onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V

    #@11
    .line 499
    return-void
.end method
