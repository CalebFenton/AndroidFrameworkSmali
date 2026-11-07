.class Landroid/hardware/location/ContextHubManager$3;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "ContextHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/location/ContextHubClientCallback;

.field final synthetic blacklist val$client:Landroid/hardware/location/ContextHubClient;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .registers 5
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1056
    iput-object p2, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p4, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onClientAuthorizationChanged$7(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "authorization"    # I

    .line 1130
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubClientCallback;->onClientAuthorizationChanged(Landroid/hardware/location/ContextHubClient;JI)V

    .line 1131
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1132
    return-void
.end method

.method static synthetic blacklist lambda$onHubReset$1(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;

    .line 1075
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubClientCallback;->onHubReset(Landroid/hardware/location/ContextHubClient;)V

    .line 1076
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1077
    return-void
.end method

.method static synthetic blacklist lambda$onMessageFromNanoApp$0(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .registers 5
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 1061
    invoke-virtual {p0, p1, p2}, Landroid/hardware/location/ContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    .line 1062
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1063
    nop

    .line 1064
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v0

    .line 1063
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/location/ContextHubClient;->reliableMessageCallbackFinished(IB)V

    goto :goto_16

    .line 1066
    :cond_13
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1068
    :goto_16
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppAborted$2(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V
    .registers 5
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 1084
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V

    .line 1085
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1086
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppDisabled$6(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppDisabled(Landroid/hardware/location/ContextHubClient;J)V

    .line 1121
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1122
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppEnabled$5(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1111
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppEnabled(Landroid/hardware/location/ContextHubClient;J)V

    .line 1112
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1113
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppLoaded$3(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1093
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V

    .line 1094
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1095
    return-void
.end method

.method static synthetic blacklist lambda$onNanoAppUnloaded$4(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V
    .registers 4
    .param p0, "callback"    # Landroid/hardware/location/ContextHubClientCallback;
    .param p1, "client"    # Landroid/hardware/location/ContextHubClient;
    .param p2, "nanoAppId"    # J

    .line 1102
    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubClientCallback;->onNanoAppUnloaded(Landroid/hardware/location/ContextHubClient;J)V

    .line 1103
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->callbackFinished()V

    .line 1104
    return-void
.end method


# virtual methods
.method public blacklist onClientAuthorizationChanged(JI)V
    .registers 11
    .param p1, "nanoAppId"    # J
    .param p3, "authorization"    # I

    .line 1128
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v1, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;

    move-wide v4, p1

    move v6, p3

    .end local p1    # "nanoAppId":J
    .end local p3    # "authorization":I
    .local v4, "nanoAppId":J
    .local v6, "authorization":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1133
    return-void
.end method

.method public blacklist onHubReset()V
    .registers 5

    .line 1073
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1078
    return-void
.end method

.method public blacklist onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .registers 6
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 1059
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v2, p1}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1069
    return-void
.end method

.method public blacklist onNanoAppAborted(JI)V
    .registers 11
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 1082
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v3, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v1, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda1;

    move-wide v4, p1

    move v6, p3

    .end local p1    # "nanoAppId":J
    .end local p3    # "abortCode":I
    .local v4, "nanoAppId":J
    .local v6, "abortCode":I
    invoke-direct/range {v1 .. v6}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1087
    return-void
.end method

.method public blacklist onNanoAppDisabled(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 1118
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1123
    return-void
.end method

.method public blacklist onNanoAppEnabled(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 1109
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method public blacklist onNanoAppLoaded(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 1091
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1096
    return-void
.end method

.method public blacklist onNanoAppUnloaded(J)V
    .registers 7
    .param p1, "nanoAppId"    # J

    .line 1100
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager$3;->val$callback:Landroid/hardware/location/ContextHubClientCallback;

    iget-object v2, p0, Landroid/hardware/location/ContextHubManager$3;->val$client:Landroid/hardware/location/ContextHubClient;

    new-instance v3, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v2, p1, p2}, Landroid/hardware/location/ContextHubManager$3$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;J)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method
