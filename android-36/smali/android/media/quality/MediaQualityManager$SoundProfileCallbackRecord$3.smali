.class Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->postSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

.field final synthetic blacklist val$id:Ljava/lang/String;

.field final synthetic blacklist val$profile:Landroid/media/quality/SoundProfile;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
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

    .line 1004
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->val$profile:Landroid/media/quality/SoundProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 1007
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->this$0:Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;)Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord$3;->val$profile:Landroid/media/quality/SoundProfile;

    invoke-virtual {v0, v1, v2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallback;->onSoundProfileRemoved(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V

    .line 1008
    return-void
.end method
