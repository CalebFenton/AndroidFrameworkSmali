.class Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;
    }
.end annotation


# static fields
.field public static final CMD_START:I = 0x0

.field public static final CMD_STOP:I = 0x1


# instance fields
.field private final mIdleState:Lcom/android/internal/util/State;

.field private final mStartedState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/SoftApManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@3
    .line 182
    const-string/jumbo v0, "SoftApManager"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 178
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;

    #@b
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V

    #@e
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@10
    .line 179
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    #@12
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    #@15
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@17
    .line 184
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@19
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@1c
    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@1e
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@23
    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@25
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@28
    .line 188
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->start()V

    #@2b
    .line 181
    return-void
.end method
