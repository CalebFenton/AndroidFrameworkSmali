.class public Lcom/android/internal/telephony/SimActivationTracker;
.super Ljava/lang/Object;
.source "SimActivationTracker.java"


# static fields
.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mDataActivationState:I

.field private final blacklist mDataActivationStateLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mVoiceActivationState:I

.field private final blacklist mVoiceActivationStateLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SimActivationTracker;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    const-string v0, "SAT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SimActivationTracker;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 74
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 76
    new-instance p1, Lcom/android/internal/telephony/SimActivationTracker$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/SimActivationTracker$1;-><init>(Lcom/android/internal/telephony/SimActivationTracker;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist isValidActivationState(I)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-eq p0, v0, :cond_10

    const/4 v1, 0x2

    if-eq p0, v1, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    const/4 v1, 0x4

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAT"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist toString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    .line 150
    const-string p0, "invalid"

    return-object p0

    .line 148
    :cond_11
    const-string p0, "restricted"

    return-object p0

    .line 146
    :cond_14
    const-string p0, "deactivated"

    return-object p0

    .line 144
    :cond_17
    const-string p0, "activated"

    return-object p0

    .line 142
    :cond_1a
    const-string p0, "activating"

    return-object p0

    .line 140
    :cond_1d
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 163
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 164
    const-string v1, " mVoiceActivationState Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 169
    const-string v1, " mDataActivationState Log:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getDataActivationState()I
    .registers 1

    .line 121
    iget p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    return p0
.end method

.method public blacklist getVoiceActivationState()I
    .registers 1

    .line 117
    iget p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    return p0
.end method

.method public blacklist setDataActivationState(I)V
    .registers 4

    .line 107
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataActivationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 111
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationState:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mDataActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyDataActivationStateChanged(I)V

    return-void

    .line 108
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid data activation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setVoiceActivationState(I)V
    .registers 4

    .line 97
    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->isValidActivationState(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    if-eq v0, p1, :cond_2e

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceActivationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimActivationTracker;->log(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationState:I

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mVoiceActivationStateLog:Lcom/android/internal/telephony/LocalLog;

    invoke-static {p1}, Lcom/android/internal/telephony/SimActivationTracker;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/android/internal/telephony/SimActivationTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyVoiceActivationStateChanged(I)V

    return-void

    .line 98
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid voice activation state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
