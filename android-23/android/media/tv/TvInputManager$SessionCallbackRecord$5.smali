.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$type"    # I
    .param p3, "val$trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    #@4
    iput-object p3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$type:I

    #@e
    iget-object v3, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$5;->val$trackId:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V

    #@13
    .line 472
    return-void
.end method
