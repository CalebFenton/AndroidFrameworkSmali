.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic val$inputInfo:Landroid/media/tv/TvInputInfo;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Landroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .param p2, "val$inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 833
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->val$inputInfo:Landroid/media/tv/TvInputInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->val$inputInfo:Landroid/media/tv/TvInputInfo;

    #@8
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    #@b
    .line 835
    return-void
.end method
