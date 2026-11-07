.class Landroid/telecom/RemoteConnectionService$4;
.super Landroid/telecom/RemoteConference$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnectionService;

.field final synthetic blacklist val$id:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;
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

    .line 670
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$4;->this$0:Landroid/telecom/RemoteConnectionService;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConference$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDestroyed(Landroid/telecom/RemoteConference;)V
    .registers 4
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .line 673
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$4;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$4;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$4;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mmaybeDisconnectAdapter(Landroid/telecom/RemoteConnectionService;)V

    .line 675
    return-void
.end method
