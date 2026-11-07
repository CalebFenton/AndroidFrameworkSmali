.class Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;
.super Ljava/lang/Object;
.source "TvAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestTrackInfoList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1331
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1334
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$6;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$SessionCallback;->onRequestTrackInfoList(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 1335
    return-void
.end method
