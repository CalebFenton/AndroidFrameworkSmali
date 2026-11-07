.class Landroid/telecom/RemoteConnectionService$1$2;
.super Landroid/telecom/RemoteConnection$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService$1;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/RemoteConnectionService$1;

.field final synthetic blacklist val$callId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Landroid/telecom/RemoteConnectionService$1;
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

    .line 410
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$1$2;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDestroyed(Landroid/telecom/RemoteConnection;)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .line 413
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1$2;->val$callId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mmaybeDisconnectAdapter(Landroid/telecom/RemoteConnectionService;)V

    .line 415
    return-void
.end method
