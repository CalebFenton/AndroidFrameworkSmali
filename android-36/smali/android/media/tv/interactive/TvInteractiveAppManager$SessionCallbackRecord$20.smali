.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$channelUri:Landroid/net/Uri;

.field final synthetic blacklist val$inputId:Ljava/lang/String;

.field final synthetic blacklist val$params:Landroid/os/Bundle;

.field final synthetic blacklist val$programUri:Landroid/net/Uri;

.field final synthetic blacklist val$requestId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2245
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$inputId:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$channelUri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$programUri:Landroid/net/Uri;

    iput-object p6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 2248
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$requestId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$inputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$channelUri:Landroid/net/Uri;

    iget-object v6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$programUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$20;->val$params:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v7}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;->onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2250
    return-void
.end method
