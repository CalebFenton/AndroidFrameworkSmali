.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic blacklist val$inputId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
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

    .line 1613
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;->val$inputId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1616
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;->this$0:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->-$$Nest$fgetmCallback(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$2;->val$inputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onInputRemoved(Ljava/lang/String;)V

    .line 1617
    return-void
.end method
