.class Landroid/telecom/RemoteConnectionService$3;
.super Landroid/telecom/RemoteConnection$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;
    .param p2, "val$id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$3;->val$id:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$3;->val$id:Ljava/lang/String;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 401
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    #@d
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-wrap3(Landroid/telecom/RemoteConnectionService;)V

    #@10
    .line 399
    return-void
.end method
