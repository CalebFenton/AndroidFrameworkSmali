.class Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

.field final synthetic blacklist val$error:I

.field final synthetic blacklist val$profileId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1023
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->val$profileId:Ljava/lang/String;

    iput p3, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1026
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->val$profileId:Ljava/lang/String;

    iget v2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$5;->val$error:I

    invoke-virtual {v0, v1, v2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallback;->onError(Ljava/lang/String;I)V

    .line 1027
    return-void
.end method
