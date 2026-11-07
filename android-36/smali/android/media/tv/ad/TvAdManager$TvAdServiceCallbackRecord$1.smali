.class Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;
.super Ljava/lang/Object;
.source "TvAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->postAdServiceAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

.field final synthetic blacklist val$serviceId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;
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

    .line 1383
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;->this$0:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;->val$serviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1386
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;->this$0:Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord;)Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallbackRecord$1;->val$serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$TvAdServiceCallback;->onAdServiceAdded(Ljava/lang/String;)V

    .line 1387
    return-void
.end method
