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
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic blacklist val$inputInfo:Landroid/media/tv/TvInputInfo;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Landroid/media/tv/TvInputInfo;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1640
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->val$inputInfo:Landroid/media/tv/TvInputInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1643
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$5;->val$inputInfo:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 1644
    return-void
.end method
