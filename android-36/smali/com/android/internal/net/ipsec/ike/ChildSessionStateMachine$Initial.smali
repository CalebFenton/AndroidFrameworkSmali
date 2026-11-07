.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Initial"
.end annotation


# instance fields
.field blacklist mRequestPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$AekUmHAFjbbNaimrChfQyyhCffE(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->lambda$processStateMessage$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1045
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildLocalCreateBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V

    return-void
.end method

.method private synthetic blacklist lambda$processStateMessage$0()V
    .registers 2

    .line 1074
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosed()V

    .line 1075
    return-void
.end method


# virtual methods
.method public blacklist exitState()V
    .registers 2

    .line 1090
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->mRequestPayloads:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$CreateChildSaHelper;->releaseSpiResources(Ljava/util/List;)V

    .line 1091
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1095
    const/16 v0, 0x66

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .line 1050
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_4e

    .line 1084
    move-object v3, p0

    const/4 v0, 0x0

    return v0

    .line 1052
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;

    .line 1054
    .local v0, "childNegotiationData":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;
    iget-object v2, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;->requestPayloads:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->mRequestPayloads:Ljava/util/List;

    .line 1055
    iget-object v5, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;->responsePayloads:Ljava/util/List;

    .line 1059
    .local v5, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->mRequestPayloads:Ljava/util/List;

    const/16 v7, 0x23

    iget v8, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;->registeredSpi:I

    const/16 v6, 0x23

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->validateAndBuildChild(Ljava/util/List;Ljava/util/List;III)V

    .line 1066
    return v1

    .line 1081
    .end local v0    # "childNegotiationData":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;
    .end local v5    # "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    :sswitch_20
    move-object v3, p0

    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1082
    return v1

    .line 1072
    :sswitch_2b
    move-object v3, p0

    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1077
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1078
    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 1079
    return v1

    .line 1068
    :sswitch_42
    move-object v3, p0

    iget-object v0, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCreateChildLocalCreate:Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1069
    return v1

    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_42
        0x2 -> :sswitch_2b
        0xc9 -> :sswitch_20
        0x12d -> :sswitch_9
    .end sparse-switch
.end method
