.class Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

.field final synthetic blacklist val$session:Landroid/media/tv/ad/TvAdManager$Session;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
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

    .line 1285
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1288
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$1;->val$session:Landroid/media/tv/ad/TvAdManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$SessionCallback;->onSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 1289
    return-void
.end method
