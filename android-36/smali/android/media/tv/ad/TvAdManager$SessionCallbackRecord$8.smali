.class Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;
.super Ljava/lang/Object;
.source "TvAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

.field final synthetic blacklist val$algorithm:Ljava/lang/String;

.field final synthetic blacklist val$alias:Ljava/lang/String;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$id:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1349
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$algorithm:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$alias:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 1352
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$SessionCallback;

    move-result-object v1

    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->this$0:Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$id:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$algorithm:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$alias:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord$8;->val$data:[B

    invoke-virtual/range {v1 .. v6}, Landroid/media/tv/ad/TvAdManager$SessionCallback;->onRequestSigning(Landroid/media/tv/ad/TvAdManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1353
    return-void
.end method
