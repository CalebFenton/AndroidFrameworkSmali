.class Landroid/os/RemoteCallback$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "RemoteCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RemoteCallback;


# direct methods
.method constructor blacklist <init>(Landroid/os/RemoteCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroid/os/RemoteCallback$1;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 53
    iget-object v0, p0, Landroid/os/RemoteCallback$1;->this$0:Landroid/os/RemoteCallback;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
