.class Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->postStateChanged(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

.field final synthetic blacklist val$err:I

.field final synthetic blacklist val$iAppServiceId:Ljava/lang/String;

.field final synthetic blacklist val$state:I

.field final synthetic blacklist val$type:I


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
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

    .line 911
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$iAppServiceId:Ljava/lang/String;

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$type:I

    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$state:I

    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$err:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 914
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$iAppServiceId:Ljava/lang/String;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$type:I

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$state:I

    iget v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5;->val$err:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;->onTvInteractiveAppServiceStateChanged(Ljava/lang/String;III)V

    .line 916
    return-void
.end method
