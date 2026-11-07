.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;
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
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic blacklist val$reason:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
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

    .line 1271
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    iput p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1274
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$reason:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallback;->onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V

    .line 1275
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$fgetmIAppNotificationEnabled(Landroid/media/tv/TvInputManager$Session;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1277
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$10;->val$reason:I

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->notifyVideoUnavailable(I)V

    .line 1279
    :cond_38
    return-void
.end method
