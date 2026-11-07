.class Landroid/os/RemoteCallbackList$Builder$1;
.super Landroid/os/RemoteCallbackList;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallbackList$Builder;->build()Landroid/os/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/RemoteCallbackList$Builder;


# direct methods
.method constructor blacklist <init>(Landroid/os/RemoteCallbackList$Builder;IILjava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "this$0"    # Landroid/os/RemoteCallbackList$Builder;
    .param p2, "frozenCalleePolicy"    # I
    .param p3, "maxQueueSize"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 334
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder$1;, "Landroid/os/RemoteCallbackList$Builder$1;"
    iput-object p1, p0, Landroid/os/RemoteCallbackList$Builder$1;->this$0:Landroid/os/RemoteCallbackList$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/os/RemoteCallbackList;-><init>(IILjava/util/concurrent/Executor;Landroid/os/RemoteCallbackList-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 4
    .param p2, "cookie"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/os/RemoteCallbackList$Builder$1;, "Landroid/os/RemoteCallbackList$Builder$1;"
    .local p1, "deadInterface":Landroid/os/IInterface;, "TE;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList$Builder$1;->this$0:Landroid/os/RemoteCallbackList$Builder;

    invoke-static {v0}, Landroid/os/RemoteCallbackList$Builder;->-$$Nest$fgetmInterfaceDiedCallback(Landroid/os/RemoteCallbackList$Builder;)Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;->onInterfaceDied(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 338
    return-void
.end method
