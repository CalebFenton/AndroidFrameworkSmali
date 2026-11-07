.class Landroid/os/RemoteCallback$2;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RemoteCallback;

.field final synthetic blacklist val$result:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Landroid/os/RemoteCallback;
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

    .line 69
    iput-object p1, p0, Landroid/os/RemoteCallback$2;->this$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Landroid/os/RemoteCallback$2;->val$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 72
    iget-object v0, p0, Landroid/os/RemoteCallback$2;->this$0:Landroid/os/RemoteCallback;

    invoke-static {v0}, Landroid/os/RemoteCallback;->-$$Nest$fgetmListener(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RemoteCallback$2;->val$result:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
