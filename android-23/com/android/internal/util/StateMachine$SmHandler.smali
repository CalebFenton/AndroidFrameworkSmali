.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quit()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .locals 0
    .param p1, "dbg"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 683
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@7
    .line 674
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1171
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 677
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    #@7
    .line 680
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@9
    .line 689
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRecords;

    #@b
    invoke-direct {v0, v1}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$LogRecords;)V

    #@e
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@10
    .line 698
    const/4 v0, -0x1

    #@11
    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@13
    .line 707
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@15
    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@1a
    .line 710
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    #@1c
    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;)V

    #@1f
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    #@21
    .line 740
    new-instance v0, Ljava/util/HashMap;

    #@23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@28
    .line 749
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@2f
    .line 1172
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@31
    .line 1174
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@33
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@36
    .line 1175
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    #@38
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3b
    .line 1170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    #@3
    return-void
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 6
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1134
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1135
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "addStateInternal: E state="

    #@f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v4, ",parent="

    #@1e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 1136
    if-nez p2, :cond_3

    #@24
    const-string/jumbo v2, ""

    #@27
    .line 1135
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v3, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@32
    .line 1138
    :cond_0
    const/4 v0, 0x0

    #@33
    .line 1139
    .local v0, "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_1

    #@35
    .line 1140
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@37
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3d
    .line 1141
    .local v0, "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_1

    #@3f
    .line 1143
    invoke-direct {p0, p2, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@42
    move-result-object v0

    #@43
    .line 1146
    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@45
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@4b
    .line 1147
    .local v1, "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_2

    #@4d
    .line 1148
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@4f
    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    #@52
    .line 1149
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@54
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 1153
    :cond_2
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@59
    if-eqz v2, :cond_4

    #@5b
    .line 1154
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@5d
    if-eq v2, v0, :cond_4

    #@5f
    .line 1155
    new-instance v2, Ljava/lang/RuntimeException;

    #@61
    const-string/jumbo v3, "state already added"

    #@64
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 1136
    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    goto :goto_0

    #@6d
    .line 1157
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@6f
    .line 1158
    iput-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@71
    .line 1159
    const/4 v2, 0x0

    #@72
    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    #@74
    .line 1160
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@76
    if-eqz v2, :cond_5

    #@78
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v4, "addStateInternal: X stateInfo: "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@91
    .line 1161
    :cond_5
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 901
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@3
    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->-get0(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 903
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@10
    .line 904
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@12
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->-set1(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    #@15
    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@17
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->-set0(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    #@1a
    .line 908
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@1c
    .line 909
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@1e
    .line 910
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    #@23
    .line 911
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@25
    .line 912
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@27
    .line 913
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@29
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@2c
    .line 914
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    #@2e
    .line 915
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@30
    .line 916
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@35
    .line 917
    const/4 v0, 0x1

    #@36
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    #@38
    .line 900
    return-void
.end method

.method private final completeConstruction()V
    .locals 8

    #@0
    .prologue
    .line 924
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    const-string/jumbo v6, "completeConstruction: E"

    #@9
    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@c
    .line 930
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 931
    .local v2, "maxDepth":I
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@f
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v5

    #@13
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v4

    #@17
    .local v4, "si$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@23
    .line 932
    .local v3, "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    #@24
    .line 933
    .local v0, "depth":I
    move-object v1, v3

    #@25
    .local v1, "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    #@27
    .line 934
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@29
    .line 933
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1

    #@2c
    .line 936
    :cond_2
    if-ge v2, v0, :cond_1

    #@2e
    .line 937
    move v2, v0

    #@2f
    goto :goto_0

    #@30
    .line 940
    .end local v0    # "depth":I
    .end local v1    # "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v3    # "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@32
    if-eqz v5, :cond_4

    #@34
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@36
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v7, "completeConstruction: maxDepth="

    #@3e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@4d
    .line 942
    :cond_4
    new-array v5, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@4f
    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@51
    .line 943
    new-array v5, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@53
    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@55
    .line 944
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    #@58
    .line 947
    sget-object v5, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@5a
    const/4 v6, -0x2

    #@5b
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@62
    .line 949
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@64
    if-eqz v5, :cond_5

    #@66
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@68
    const-string/jumbo v6, "completeConstruction: X"

    #@6b
    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@6e
    .line 923
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1192
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "deferMessage: msg="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget v3, p1, Landroid/os/Message;->what:I

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@1f
    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    #@22
    move-result-object v0

    #@23
    .line 1196
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    #@26
    .line 1198
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2b
    .line 1191
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    #@0
    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@2
    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@2
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@4
    aget-object v0, v0, v1

    #@6
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@8
    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .param p1, "stateStackEnteringIndex"    # I

    #@0
    .prologue
    .line 1006
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@3
    if-gt v0, v1, :cond_1

    #@5
    .line 1007
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "invokeEnterMethods: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@19
    aget-object v3, v3, v0

    #@1b
    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@1d
    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@2c
    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@2e
    aget-object v1, v1, v0

    #@30
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@32
    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    #@35
    .line 1009
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@37
    aget-object v1, v1, v0

    #@39
    const/4 v2, 0x1

    #@3a
    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    #@3c
    .line 1006
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1005
    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 5
    .param p1, "commonStateInfo"    # Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 992
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@3
    if-ltz v1, :cond_1

    #@5
    .line 993
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@7
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@9
    aget-object v1, v1, v2

    #@b
    if-eq v1, p1, :cond_1

    #@d
    .line 994
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@f
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@11
    aget-object v1, v1, v2

    #@13
    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@15
    .line 995
    .local v0, "curState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@17
    if-eqz v1, :cond_0

    #@19
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "invokeExitMethods: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@36
    .line 996
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    #@39
    .line 997
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3b
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@3d
    aget-object v1, v1, v2

    #@3f
    iput-boolean v4, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    #@41
    .line 998
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@43
    add-int/lit8 v1, v1, -0x1

    #@45
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@47
    goto :goto_0

    #@48
    .line 991
    .end local v0    # "curState":Lcom/android/internal/util/State;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    #@0
    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1215
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@a
    if-ne v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    #@0
    .prologue
    .line 1023
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 1024
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/os/Message;

    #@12
    .line 1025
    .local v0, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    iget v4, v0, Landroid/os/Message;->what:I

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@31
    .line 1026
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@34
    .line 1023
    add-int/lit8 v1, v1, -0x1

    #@36
    goto :goto_0

    #@37
    .line 1028
    .end local v0    # "curMsg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@3c
    .line 1016
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    #@0
    .prologue
    .line 1039
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@2
    add-int/lit8 v2, v3, 0x1

    #@4
    .line 1040
    .local v2, "startingIndex":I
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .line 1041
    .local v0, "i":I
    move v1, v2

    #@9
    .line 1042
    .local v1, "j":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 1043
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "moveTempStackToStateStack: i="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const-string/jumbo v5, ",j="

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@33
    .line 1044
    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@35
    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@37
    aget-object v4, v4, v0

    #@39
    aput-object v4, v3, v1

    #@3b
    .line 1045
    add-int/lit8 v1, v1, 0x1

    #@3d
    .line 1046
    add-int/lit8 v0, v0, -0x1

    #@3f
    goto :goto_0

    #@40
    .line 1049
    :cond_1
    add-int/lit8 v3, v1, -0x1

    #@42
    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@44
    .line 1050
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@46
    if-eqz v3, :cond_2

    #@48
    .line 1051
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    iget v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 1052
    const-string/jumbo v5, ",startingIndex="

    #@5f
    .line 1051
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    .line 1052
    const-string/jumbo v5, ",Top="

    #@6a
    .line 1051
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    .line 1053
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@70
    iget v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@72
    aget-object v5, v5, v6

    #@74
    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@76
    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    .line 1051
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@85
    .line 1055
    :cond_2
    return v2
.end method

.method private performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V
    .locals 12
    .param p1, "msgProcessedState"    # Lcom/android/internal/util/State;
    .param p2, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 817
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@5
    aget-object v0, v0, v1

    #@7
    iget-object v5, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@9
    .line 824
    .local v5, "orgState":Lcom/android/internal/util/State;
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@b
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@17
    if-eq v0, v1, :cond_2

    #@19
    const/4 v9, 0x1

    #@1a
    .line 826
    .local v9, "recordLogMsg":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@1c
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_3

    #@22
    .line 828
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 829
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@28
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@2a
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@2c
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@2e
    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@30
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 830
    iget-object v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@36
    move-object v4, p1

    #@37
    .line 829
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    #@3a
    .line 838
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@3c
    .line 839
    .local v8, "destState":Lcom/android/internal/util/State;
    if-eqz v8, :cond_5

    #@3e
    .line 844
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@40
    if-eqz v0, :cond_1

    #@42
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@44
    const-string/jumbo v1, "handleMessage: new destination call exit/enter"

    #@47
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@4a
    .line 851
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@4d
    move-result-object v7

    #@4e
    .line 852
    .local v7, "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v7}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    #@51
    .line 853
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    #@54
    move-result v10

    #@55
    .line 854
    .local v10, "stateStackEnteringIndex":I
    invoke-direct {p0, v10}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    #@58
    .line 862
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    #@5b
    .line 864
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@5d
    if-eq v8, v0, :cond_4

    #@5f
    .line 866
    iget-object v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@61
    goto :goto_2

    #@62
    .line 824
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v8    # "destState":Lcom/android/internal/util/State;
    .end local v9    # "recordLogMsg":Z
    .end local v10    # "stateStackEnteringIndex":I
    :cond_2
    const/4 v9, 0x0

    #@63
    .restart local v9    # "recordLogMsg":Z
    goto :goto_0

    #@64
    .line 832
    :cond_3
    if-eqz v9, :cond_0

    #@66
    .line 834
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    #@68
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6a
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@6c
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6e
    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@70
    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 835
    iget-object v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@76
    move-object v4, p1

    #@77
    .line 834
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    #@7a
    goto :goto_1

    #@7b
    .line 872
    .restart local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v8    # "destState":Lcom/android/internal/util/State;
    .restart local v10    # "stateStackEnteringIndex":I
    :cond_4
    iput-object v11, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@7d
    .line 879
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v10    # "stateStackEnteringIndex":I
    :cond_5
    if-eqz v8, :cond_6

    #@7f
    .line 880
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    #@81
    if-ne v8, v0, :cond_7

    #@83
    .line 884
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@85
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    #@88
    .line 885
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    #@8b
    .line 811
    :cond_6
    :goto_3
    return-void

    #@8c
    .line 886
    :cond_7
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    #@8e
    if-ne v8, v0, :cond_6

    #@90
    .line 892
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@92
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onHalting()V

    #@95
    goto :goto_3
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 959
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@5
    aget-object v0, v2, v3

    #@7
    .line 960
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 961
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "processMsg: "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@1b
    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@2a
    .line 964
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_4

    #@30
    .line 965
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    #@32
    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    #@35
    .line 984
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@37
    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@39
    :cond_2
    return-object v1

    #@3a
    .line 979
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@3c
    if-eqz v2, :cond_4

    #@3e
    .line 980
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "processMsg: "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@4e
    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@5d
    .line 967
    :cond_4
    iget-object v2, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    #@5f
    invoke-virtual {v2, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_1

    #@65
    .line 971
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@67
    .line 972
    if-nez v0, :cond_3

    #@69
    .line 976
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6b
    invoke-virtual {v2, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    #@6e
    goto :goto_0
.end method

.method private final quit()V
    .locals 2

    #@0
    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    const-string/jumbo v1, "quit:"

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@c
    .line 1204
    :cond_0
    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@e
    const/4 v1, -0x1

    #@f
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    #@16
    .line 1202
    return-void
.end method

.method private final quitNow()V
    .locals 2

    #@0
    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    const-string/jumbo v1, "quitNow:"

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@c
    .line 1210
    :cond_0
    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@e
    const/4 v1, -0x1

    #@f
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    #@16
    .line 1208
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    #@0
    .prologue
    .line 1225
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    .line 1224
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .locals 3
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "setInitialState: initialState="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@21
    .line 1181
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    #@23
    .line 1179
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    #@0
    .prologue
    .line 1094
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1095
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    #@14
    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@23
    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@25
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    #@27
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@2d
    .line 1099
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    #@2e
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@30
    :goto_0
    if-eqz v0, :cond_1

    #@32
    .line 1100
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@34
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@36
    aput-object v0, v1, v2

    #@38
    .line 1101
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@3a
    .line 1099
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@3c
    add-int/lit8 v1, v1, 0x1

    #@3e
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@40
    goto :goto_0

    #@41
    .line 1105
    :cond_1
    const/4 v1, -0x1

    #@42
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    #@44
    .line 1107
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    #@47
    .line 1093
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 4
    .param p1, "destState"    # Lcom/android/internal/util/State;

    #@0
    .prologue
    .line 1076
    const/4 v1, 0x0

    #@1
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@3
    .line 1077
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@b
    .line 1079
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@d
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@f
    add-int/lit8 v3, v2, 0x1

    #@11
    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@13
    aput-object v0, v1, v2

    #@15
    .line 1080
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    #@17
    .line 1081
    if-eqz v0, :cond_1

    #@19
    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 1083
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 1084
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 1085
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    #@31
    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 1085
    const-string/jumbo v3, ",curStateInfo: "

    #@38
    .line 1084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@47
    .line 1087
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 3
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    .line 1186
    check-cast p1, Lcom/android/internal/util/State;

    #@2
    .end local p1    # "destState":Lcom/android/internal/util/IState;
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@4
    .line 1187
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "transitionTo: destState="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@27
    .line 1185
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 780
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    #@2
    if-nez v1, :cond_1

    #@4
    .line 781
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "handleMessage: E msg.what="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@23
    .line 784
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@25
    .line 787
    const/4 v0, 0x0

    #@26
    .line 788
    .local v0, "msgProcessedState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 790
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;

    #@2d
    move-result-object v0

    #@2e
    .line 800
    .end local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V

    #@31
    .line 803
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    #@33
    if-eqz v1, :cond_1

    #@35
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@37
    if-eqz v1, :cond_1

    #@39
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #@3b
    const-string/jumbo v2, "handleMessage: X"

    #@3e
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    #@41
    .line 779
    :cond_1
    return-void

    #@42
    .line 791
    .restart local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    #@44
    if-nez v1, :cond_3

    #@46
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@48
    iget v1, v1, Landroid/os/Message;->what:I

    #@4a
    const/4 v2, -0x2

    #@4b
    if-ne v1, v2, :cond_3

    #@4d
    .line 792
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    #@4f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@51
    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    #@53
    if-ne v1, v2, :cond_3

    #@55
    .line 794
    const/4 v1, 0x1

    #@56
    iput-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    #@58
    .line 795
    const/4 v1, 0x0

    #@59
    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    #@5c
    goto :goto_0

    #@5d
    .line 797
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "StateMachine.handleMessage: The start method not called, received msg: "

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@76
    throw v1
.end method
