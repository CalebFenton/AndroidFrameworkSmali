.class Lcom/android/server/NsdService$NsdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine$DefaultState;,
        Lcom/android/server/NsdService$NsdStateMachine$DisabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

.field private final mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

.field private final mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method static synthetic -get0(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService$NsdStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/NsdService;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/NsdService;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@2
    .line 133
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@5
    .line 103
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    #@a
    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    #@c
    .line 104
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@e
    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    #@11
    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@13
    .line 105
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    #@18
    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@1a
    .line 134
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    #@1c
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@1f
    .line 135
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@21
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    #@23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@26
    .line 136
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@28
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    #@2a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@2d
    .line 137
    invoke-static {p1}, Lcom/android/server/NsdService;->-wrap2(Lcom/android/server/NsdService;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 138
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    #@35
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@38
    .line 142
    :goto_0
    const/16 v0, 0x19

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setLogRecSize(I)V

    #@3d
    .line 143
    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V

    #@40
    .line 132
    return-void

    #@41
    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    #@43
    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@46
    goto :goto_0
.end method

.method private registerForNsdSetting()V
    .locals 4

    #@0
    .prologue
    .line 116
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$1;

    #@2
    invoke-virtual {p0}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine$1;-><init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V

    #@9
    .line 127
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    #@b
    invoke-static {v1}, Lcom/android/server/NsdService;->-get1(Lcom/android/server/NsdService;)Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v1

    #@13
    .line 128
    const-string/jumbo v2, "nsd_on"

    #@16
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@19
    move-result-object v2

    #@1a
    .line 129
    const/4 v3, 0x0

    #@1b
    .line 127
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1e
    .line 115
    return-void
.end method


# virtual methods
.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/server/NsdService;->-wrap12(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
