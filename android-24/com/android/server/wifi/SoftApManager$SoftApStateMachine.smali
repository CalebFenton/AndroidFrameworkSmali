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
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;
    }
.end annotation


# static fields
.field public static final CMD_START:I = 0x0

.field public static final CMD_STOP:I = 0x1

.field public static final CMD_TETHER_NOTIFICATION_TIMEOUT:I = 0x3

.field public static final CMD_TETHER_STATE_CHANGE:I = 0x2

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388


# instance fields
.field private final mIdleState:Lcom/android/internal/util/State;

.field private final mStartedState:Lcom/android/internal/util/State;

.field private mTetherToken:I

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mTetheringState:Lcom/android/internal/util/State;

.field private final mUntetheringState:Lcom/android/internal/util/State;

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

.method static synthetic -get2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetherToken:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetherToken:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessageAtFrontOfQueue(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/internal/util/IState;)V
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
    .line 299
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->this$0:Lcom/android/server/wifi/SoftApManager;

    #@3
    .line 300
    const-string/jumbo v0, "SoftApManager"

    #@6
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@9
    .line 291
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetherToken:I

    #@c
    .line 293
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;

    #@e
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$IdleState;)V

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@13
    .line 294
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$StartedState;)V

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@1a
    .line 295
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheringState;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    #@21
    .line 296
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;

    #@23
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$TetheredState;)V

    #@26
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@28
    .line 297
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;

    #@2a
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;-><init>(Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;Lcom/android/server/wifi/SoftApManager$SoftApStateMachine$UntetheringState;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    #@2f
    .line 303
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@31
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@34
    .line 304
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@36
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@38
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@3b
    .line 305
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    #@3d
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@3f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@42
    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@44
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@46
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@49
    .line 307
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    #@4b
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mStartedState:Lcom/android/internal/util/State;

    #@4d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@50
    .line 310
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->mIdleState:Lcom/android/internal/util/State;

    #@52
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@55
    .line 311
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->start()V

    #@58
    .line 299
    return-void
.end method
