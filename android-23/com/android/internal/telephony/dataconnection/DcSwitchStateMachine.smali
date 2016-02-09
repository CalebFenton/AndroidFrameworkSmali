.class public Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final CMD_RETRY_ATTACH:I = 0x43002

.field private static final DBG:Z = true

.field private static final EVENT_CONNECTED:I = 0x43000

.field private static final EVENT_DATA_ALLOWED:I = 0x43001

.field private static final EVENT_DATA_DISALLOWED:I = 0x43003

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchSM"

.field private static final VDBG:Z


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

.field private mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

.field private mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

.field private mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

.field private mId:I

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreEmergencyState:Lcom/android/internal/util/IState;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)Lcom/android/internal/util/IState;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@4
    .line 51
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@b
    .line 52
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    #@d
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;)V

    #@10
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    #@12
    .line 53
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    #@14
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;)V

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    #@19
    .line 54
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@1b
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@20
    .line 55
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    #@22
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V

    #@25
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    #@27
    .line 56
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@29
    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;)V

    #@2c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@2e
    .line 64
    const-string/jumbo v0, "DcSwitchState constructor E"

    #@31
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@34
    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;

    #@36
    .line 66
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I

    #@38
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@3a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@3d
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@3f
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@41
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@44
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mEmergencyState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;

    #@46
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@48
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@4b
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;

    #@4d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@4f
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@52
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    #@54
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@56
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@59
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    #@5b
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DefaultState;

    #@5d
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@60
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    #@62
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@65
    .line 75
    const-string/jumbo v0, "DcSwitchState constructor X"

    #@68
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    #@6b
    .line 62
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    const-string/jumbo v0, "DcSwitchSM"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "] "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 459
    return-void
.end method
