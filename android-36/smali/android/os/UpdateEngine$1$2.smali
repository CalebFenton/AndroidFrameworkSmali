.class Landroid/os/UpdateEngine$1$2;
.super Ljava/lang/Object;
.source "UpdateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine$1;->onPayloadApplicationComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/os/UpdateEngine$1;

.field final synthetic blacklist val$errorCode:I


# direct methods
.method constructor blacklist <init>(Landroid/os/UpdateEngine$1;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/os/UpdateEngine$1;
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

    .line 286
    iput-object p1, p0, Landroid/os/UpdateEngine$1$2;->this$1:Landroid/os/UpdateEngine$1;

    iput p2, p0, Landroid/os/UpdateEngine$1$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 289
    iget-object v0, p0, Landroid/os/UpdateEngine$1$2;->this$1:Landroid/os/UpdateEngine$1;

    iget-object v0, v0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    iget v1, p0, Landroid/os/UpdateEngine$1$2;->val$errorCode:I

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    .line 290
    return-void
.end method
