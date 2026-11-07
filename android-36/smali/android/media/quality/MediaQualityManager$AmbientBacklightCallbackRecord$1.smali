.class Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->postAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

.field final synthetic blacklist val$event:Landroid/media/quality/AmbientBacklightEvent;


# direct methods
.method constructor blacklist <init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;Landroid/media/quality/AmbientBacklightEvent;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
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

    .line 1046
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;->this$0:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    iput-object p2, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;->val$event:Landroid/media/quality/AmbientBacklightEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1049
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;->this$0:Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;)Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord$1;->val$event:Landroid/media/quality/AmbientBacklightEvent;

    invoke-interface {v0, v1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V

    .line 1050
    return-void
.end method
