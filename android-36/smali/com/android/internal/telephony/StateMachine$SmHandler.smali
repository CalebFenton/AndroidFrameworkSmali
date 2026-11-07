.class Lcom/android/internal/telephony/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;,
        Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;
    }
.end annotation


# static fields
.field private static final blacklist mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private blacklist mDbg:Z

.field private final blacklist mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDestState:Lcom/android/internal/telephony/State;

.field private final blacklist mHaltingState:Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

.field private blacklist mHasQuit:Z

.field private blacklist mInitialState:Lcom/android/internal/telephony/State;

.field private blacklist mIsConstructionCompleted:Z

.field private final blacklist mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

.field private blacklist mMsg:Landroid/os/Message;

.field private final blacklist mQuittingState:Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;

.field private blacklist mSm:Lcom/android/internal/telephony/StateMachine;

.field private final blacklist mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/State;",
            "Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

.field private blacklist mStateStackTopIndex:I

.field private blacklist mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

.field private blacklist mTempStateStackCount:I

.field private blacklist mTransitionInProgress:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$mAUsmkAW2qfGGYOQxYz7ejPBH-k(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)Z
    .registers 2

    .line 1208
    iget-object p1, p1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeferredMessages(Lcom/android/internal/telephony/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDestState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHaltingState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogRecords(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine$LogRecords;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSm(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/StateMachine;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateStack(Lcom/android/internal/telephony/StateMachine$SmHandler;)[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateStackTopIndex(Lcom/android/internal/telephony/StateMachine$SmHandler;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine$SmHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcompleteConstruction(Lcom/android/internal/telephony/StateMachine$SmHandler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdeferMessage(Lcom/android/internal/telephony/StateMachine$SmHandler;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentMessage(Lcom/android/internal/telephony/StateMachine$SmHandler;)Landroid/os/Message;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentState(Lcom/android/internal/telephony/StateMachine$SmHandler;)Lcom/android/internal/telephony/IState;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->isDbg()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misQuit(Lcom/android/internal/telephony/StateMachine$SmHandler;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mquit(Lcom/android/internal/telephony/StateMachine$SmHandler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mquitNow(Lcom/android/internal/telephony/StateMachine$SmHandler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->removeState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDbg(Lcom/android/internal/telephony/StateMachine$SmHandler;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetInitialState(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/State;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/telephony/State;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransitionTo(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/IState;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/telephony/IState;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 691
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/StateMachine;)V
    .registers 7

    .line 1222
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 685
    iput-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHasQuit:Z

    .line 688
    iput-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    .line 697
    new-instance v0, Lcom/android/internal/telephony/StateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/StateMachine$LogRecords;-><init>(Lcom/android/internal/telephony/StateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    const/4 v0, -0x1

    .line 706
    iput v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 715
    new-instance v0, Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/telephony/StateMachine$SmHandler;Lcom/android/internal/telephony/StateMachine-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

    .line 718
    new-instance v2, Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/telephony/StateMachine-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;

    .line 757
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 771
    iput-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 774
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1223
    iput-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    .line 1225
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 1226
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Looper;Lcom/android/internal/telephony/StateMachine;Lcom/android/internal/telephony/StateMachine-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/StateMachine;)V

    return-void
.end method

.method private final blacklist addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;
    .registers 6

    .line 1170
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2f

    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_21

    .line 1172
    const-string v2, ""

    goto :goto_25

    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_2f
    const/4 v0, 0x0

    if-eqz p2, :cond_42

    .line 1176
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-nez v1, :cond_41

    .line 1179
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    goto :goto_42

    :cond_41
    move-object v0, v1

    .line 1182
    :cond_42
    :goto_42
    iget-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-nez p2, :cond_56

    .line 1184
    new-instance p2, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V

    .line 1185
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_56
    iget-object p1, p2, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_65

    if-ne p1, v0, :cond_5d

    goto :goto_65

    .line 1191
    :cond_5d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "state already added"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1193
    :cond_65
    :goto_65
    iget-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_7f

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addStateInternal: X stateInfo: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_7f
    return-object p2
.end method

.method private final blacklist cleanupAfterQuitting()V
    .registers 3

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine;->-$$Nest$fgetmSmThread(Lcom/android/internal/telephony/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 938
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/StateMachine;->-$$Nest$fputmSmThread(Lcom/android/internal/telephony/StateMachine;Landroid/os/HandlerThread;)V

    .line 942
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/StateMachine;->-$$Nest$fputmSmHandler(Lcom/android/internal/telephony/StateMachine;Lcom/android/internal/telephony/StateMachine$SmHandler;)V

    .line 943
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    .line 944
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine$LogRecords;->cleanup()V

    .line 946
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 947
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 949
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/telephony/State;

    .line 950
    iput-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final blacklist completeConstruction()V
    .registers 6

    .line 959
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 966
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    move v4, v1

    :goto_24
    if-eqz v3, :cond_2b

    .line 969
    iget-object v3, v3, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_2b
    if-ge v2, v4, :cond_17

    move v2, v4

    goto :goto_17

    .line 975
    :cond_2f
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 977
    :cond_49
    new-array v0, v2, [Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 978
    new-array v0, v2, [Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 979
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v0, -0x2

    .line 982
    sget-object v1, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 984
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_69

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const-string v0, "completeConstruction: X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_69
    return-void
.end method

.method private final blacklist deferMessage(Landroid/os/Message;)V
    .registers 5

    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1250
    :cond_1c
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1253
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final blacklist getCurrentMessage()Landroid/os/Message;
    .registers 1

    .line 1150
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object p0
.end method

.method private final blacklist getCurrentState()Lcom/android/internal/telephony/IState;
    .registers 2

    .line 1157
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    return-object p0
.end method

.method private final blacklist invokeEnterMethods(I)V
    .registers 6

    move v0, p1

    .line 1037
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_41

    if-ne p1, v1, :cond_a

    .line 1040
    iput-boolean v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 1042
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1043
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/State;->enter()V

    .line 1044
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1046
    :cond_41
    iput-boolean v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTransitionInProgress:Z

    return-void
.end method

.method private final blacklist invokeExitMethods(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V
    .registers 6

    .line 1023
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_3b

    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    aget-object v0, v1, v0

    if-eq v0, p1, :cond_3b

    .line 1025
    iget-object v0, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    .line 1026
    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1027
    :cond_2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/State;->exit()V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v1, v1, -0x1

    .line 1029
    iput v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_3b
    return-void
.end method

.method private final blacklist isDbg()Z
    .registers 1

    .line 1275
    iget-boolean p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    return p0
.end method

.method private final blacklist isQuit(Landroid/os/Message;)Z
    .registers 3

    .line 1270
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private final blacklist moveDeferredMessageAtFrontOfQueue()V
    .registers 6

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_34

    .line 1060
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1061
    iget-boolean v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1062
    :cond_2e
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1064
    :cond_34
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final blacklist moveTempStateStackToStateStack()I
    .registers 7

    .line 1075
    iget v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1076
    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_9
    if-ltz v1, :cond_3a

    .line 1079
    iget-boolean v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1080
    :cond_2d
    iget-object v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_3a
    add-int/lit8 v2, v2, -0x1

    .line 1085
    iput v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1086
    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_76

    .line 1087
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",startingIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",Top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object p0, v3, p0

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    .line 1089
    invoke-virtual {p0}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1087
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_76
    return v0
.end method

.method private blacklist performTransitions(Lcom/android/internal/telephony/State;Landroid/os/Message;)V
    .registers 12

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v0, v1, :cond_19

    move v0, v8

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 859
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    if-eqz v0, :cond_47

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    move-object v5, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/StateMachine$LogRecords;->add(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V

    goto :goto_47

    :cond_36
    move-object v5, p1

    move-object v3, p2

    if-eqz v0, :cond_47

    .line 867
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/telephony/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/StateMachine$LogRecords;->add(Lcom/android/internal/telephony/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;Lcom/android/internal/telephony/IState;)V

    .line 871
    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    if-eqz p1, :cond_72

    .line 877
    :goto_4b
    iget-boolean p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz p2, :cond_56

    iget-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const-string v0, "handleMessage: new destination call exit/enter"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 884
    :cond_56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    move-result-object p2

    .line 886
    iput-boolean v8, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTransitionInProgress:Z

    .line 887
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V

    .line 888
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result p2

    .line 889
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 897
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 899
    iget-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    if-eq p1, p2, :cond_6f

    move-object p1, p2

    goto :goto_4b

    :cond_6f
    const/4 p2, 0x0

    .line 907
    iput-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    :cond_72
    if-eqz p1, :cond_8a

    .line 915
    iget-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;

    if-ne p1, p2, :cond_81

    .line 919
    iget-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {p1}, Lcom/android/internal/telephony/StateMachine;->onQuitting()V

    .line 920
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->cleanupAfterQuitting()V

    return-void

    .line 921
    :cond_81
    iget-object p2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/telephony/StateMachine$SmHandler$HaltingState;

    if-ne p1, p2, :cond_8a

    .line 927
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->onHalting()V

    :cond_8a
    return-void
.end method

.method private final blacklist processMsg(Landroid/os/Message;)Lcom/android/internal/telephony/State;
    .registers 7

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 995
    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    const-string v2, "processMsg: "

    if-eqz v1, :cond_26

    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 999
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1000
    iget-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/telephony/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_63

    .line 1002
    :cond_32
    :goto_32
    iget-object v1, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1004
    iget-object v0, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_44

    .line 1007
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_63

    .line 1010
    :cond_44
    iget-boolean v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_32

    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    invoke-virtual {v4}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_32

    :cond_63
    :goto_63
    if-eqz v0, :cond_68

    .line 1015
    iget-object p0, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/telephony/State;

    return-object p0

    :cond_68
    const/4 p0, 0x0

    return-object p0
.end method

.method private final blacklist quit()V
    .registers 3

    .line 1258
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_b
    const/4 v0, -0x1

    .line 1259
    sget-object v1, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final blacklist quitNow()V
    .registers 3

    .line 1264
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_b
    const/4 v0, -0x1

    .line 1265
    sget-object v1, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist removeState(Lcom/android/internal/telephony/State;)V
    .registers 5

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_2a

    .line 1204
    iget-boolean v1, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_f

    goto :goto_2a

    .line 1207
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/StateMachine$SmHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;)V

    .line 1208
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2a

    .line 1212
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    :goto_2a
    return-void
.end method

.method private final blacklist setDbg(Z)V
    .registers 2

    .line 1280
    iput-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    return-void
.end method

.method private final blacklist setInitialState(Lcom/android/internal/telephony/State;)V
    .registers 5

    .line 1231
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1232
    :cond_1e
    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/telephony/State;

    return-void
.end method

.method private final blacklist setupInitialStateStack()V
    .registers 4

    .line 1130
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_20

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/telephony/State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 1134
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/telephony/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    .line 1135
    iput v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_2d
    if-eqz v0, :cond_3c

    .line 1136
    iget-object v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1137
    iget-object v0, v0, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v2, v2, 0x1

    .line 1135
    iput v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_2d

    :cond_3c
    const/4 v0, -0x1

    .line 1141
    iput v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final blacklist setupTempStateStackWithStatesToEnter(Lcom/android/internal/telephony/State;)Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;
    .registers 5

    const/4 v0, 0x0

    .line 1112
    iput v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1113
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    .line 1115
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object p1, v0, v1

    .line 1116
    iget-object p1, p1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;

    if-eqz p1, :cond_1d

    .line 1117
    iget-boolean v0, p1, Lcom/android/internal/telephony/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v0, :cond_b

    .line 1119
    :cond_1d
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_41

    .line 1120
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",curStateInfo: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_41
    return-object p1
.end method

.method private final blacklist transitionTo(Lcom/android/internal/telephony/IState;)V
    .registers 5

    .line 1237
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_28

    .line 1238
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/StateMachine;->-$$Nest$fgetmName(Lcom/android/internal/telephony/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_28
    check-cast p1, Lcom/android/internal/telephony/State;

    iput-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    .line 1242
    iget-boolean p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transitionTo: destState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDestState:Lcom/android/internal/telephony/State;

    invoke-virtual {p0}, Lcom/android/internal/telephony/State;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 805
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_8a

    .line 806
    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_13

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_13

    if-eq v3, v1, :cond_13

    .line 807
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 810
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 814
    :cond_2f
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 815
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 818
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_69

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_41

    goto :goto_69

    :cond_41
    if-ne v0, v2, :cond_52

    .line 821
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v3, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v3, :cond_52

    const/4 v0, 0x1

    .line 823
    iput-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v0, 0x0

    .line 824
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine$SmHandler;->invokeEnterMethods(I)V

    const/4 v0, 0x0

    goto :goto_6d

    .line 826
    :cond_52
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 820
    :cond_69
    :goto_69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/internal/telephony/State;

    move-result-object v0

    .line 829
    :goto_6d
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/StateMachine$SmHandler;->performTransitions(Lcom/android/internal/telephony/State;Landroid/os/Message;)V

    .line 832
    iget-boolean v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    if-eqz v0, :cond_7d

    const-string v3, "handleMessage: X"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/StateMachine;->log(Ljava/lang/String;)V

    .line 834
    :cond_7d
    iget-object p0, p0, Lcom/android/internal/telephony/StateMachine$SmHandler;->mSm:Lcom/android/internal/telephony/StateMachine;

    if-eqz p0, :cond_8a

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_8a

    if-eq v0, v1, :cond_8a

    .line 835
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    :cond_8a
    return-void
.end method
