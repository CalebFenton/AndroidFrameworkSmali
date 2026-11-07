.class Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

.field final synthetic blacklist val$channelUri:Landroid/net/Uri;

.field final synthetic blacklist val$duration:J

.field final synthetic blacklist val$inputId:Ljava/lang/String;

.field final synthetic blacklist val$params:Landroid/os/Bundle;

.field final synthetic blacklist val$repeatDays:I

.field final synthetic blacklist val$requestId:Ljava/lang/String;

.field final synthetic blacklist val$startTime:J


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 11
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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

    .line 2256
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$inputId:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$channelUri:Landroid/net/Uri;

    iput-wide p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$startTime:J

    iput-wide p7, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$duration:J

    iput p9, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$repeatDays:I

    iput-object p10, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 13

    .line 2259
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$requestId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$inputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$channelUri:Landroid/net/Uri;

    iget-wide v6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$startTime:J

    iget-wide v8, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$duration:J

    iget v10, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$repeatDays:I

    iget-object v11, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$21;->val$params:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v11}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;->onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 2261
    return-void
.end method
