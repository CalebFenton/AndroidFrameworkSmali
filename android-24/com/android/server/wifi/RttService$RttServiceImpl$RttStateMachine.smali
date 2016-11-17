.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RttStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;,
        Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;
    }
.end annotation


# instance fields
.field mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

.field mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

.field mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

.field mResponderConfig:Landroid/net/wifi/RttManager$ResponderConfig;

.field mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->hasOutstandingReponderRequests()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    .line 279
    const-string/jumbo v0, "RttStateMachine"

    #@5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@8
    .line 272
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@f
    .line 273
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@16
    .line 274
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    #@1d
    .line 275
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;-><init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V

    #@22
    iput-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    #@24
    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@29
    .line 283
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@2e
    .line 284
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mInitiatorEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$InitiatorEnabledState;

    #@30
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@32
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@35
    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mResponderEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$ResponderEnabledState;

    #@37
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mEnabledState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;

    #@39
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@3c
    .line 288
    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    #@3e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@41
    .line 278
    return-void
.end method

.method private hasOutstandingReponderRequests()Z
    .locals 3

    #@0
    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    #@2
    invoke-static {v2}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "client$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    #@1a
    .line 459
    .local v0, "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget-object v2, v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->mResponderRequests:Ljava/util/Set;

    #@1c
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@1f
    move-result v2

    #@20
    if-nez v2, :cond_0

    #@22
    .line 460
    const/4 v2, 0x1

    #@23
    return v2

    #@24
    .line 463
    .end local v0    # "client":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    :cond_1
    const/4 v2, 0x0

    #@25
    return v2
.end method
