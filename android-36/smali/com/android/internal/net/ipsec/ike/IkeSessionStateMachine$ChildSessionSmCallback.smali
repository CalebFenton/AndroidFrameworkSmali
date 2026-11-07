.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildSessionSmCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1151
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChildSaCreated(ILcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 4
    .param p1, "remoteSpi"    # I
    .param p2, "childSession"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1154
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1155
    return-void
.end method

.method public blacklist onChildSaDeleted(I)V
    .registers 3
    .param p1, "remoteSpi"    # I

    .line 1159
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmRemoteSpiToChildSessionMap(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1160
    return-void
.end method

.method public blacklist onChildSessionClosed(Landroid/net/ipsec/ike/ChildSessionCallback;)V
    .registers 4
    .param p1, "userCallbacks"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 1191
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    monitor-enter v0

    .line 1192
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mChildCbToSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    monitor-exit v0

    .line 1194
    return-void

    .line 1193
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist onFatalIkeSessionError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 1198
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;

    invoke-direct {v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeFatalErrorFromChild;-><init>(Ljava/lang/Exception;)V

    const/16 v2, 0x13e

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1199
    return-void
.end method

.method public blacklist onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 8
    .param p1, "exchangeType"    # I
    .param p2, "isResp"    # Z
    .param p4, "childSession"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;",
            ")V"
        }
    .end annotation

    .line 1173
    .local p3, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildOutboundData;-><init>(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    const/16 v2, 0x130

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1176
    return-void
.end method

.method public blacklist onProcedureFinished(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 4
    .param p1, "childSession"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    .line 1180
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1183
    return-void

    .line 1186
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    const/16 v1, 0x131

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1187
    return-void
.end method

.method public blacklist scheduleRetryLocalRequest(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;)V
    .registers 3
    .param p1, "childRequest"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$ChildLocalRequest;

    .line 1164
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ChildSessionSmCallback;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mscheduleRetry(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)V

    .line 1165
    return-void
.end method
