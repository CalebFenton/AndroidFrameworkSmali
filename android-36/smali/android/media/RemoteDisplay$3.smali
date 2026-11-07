.class Landroid/media/RemoteDisplay$3;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteDisplay;

.field final synthetic blacklist val$error:I


# direct methods
.method constructor blacklist <init>(Landroid/media/RemoteDisplay;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;
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

    .line 156
    iput-object p1, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 159
    iget-object v0, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->-$$Nest$fgetmListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$3;->val$error:I

    invoke-interface {v0, v1}, Landroid/media/RemoteDisplay$Listener;->onDisplayError(I)V

    .line 160
    return-void
.end method
