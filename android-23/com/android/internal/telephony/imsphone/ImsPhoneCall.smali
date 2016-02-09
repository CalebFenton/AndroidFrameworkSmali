.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsPhoneCall.java"


# static fields
.field public static final CONTEXT_BACKGROUND:Ljava/lang/String; = "BG"

.field public static final CONTEXT_FOREGROUND:Ljava/lang/String; = "FG"

.field public static final CONTEXT_HANDOVER:Ljava/lang/String; = "HO"

.field public static final CONTEXT_RINGING:Ljava/lang/String; = "RG"

.field public static final CONTEXT_UNKNOWN:Ljava/lang/String; = "UK"

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCall"

.field private static final VDBG:Z


# instance fields
.field private final mCallContext:Ljava/lang/String;

.field mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mRingbackTonePlayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, "ImsPhoneCall"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    #@a
    .line 45
    const-string/jumbo v0, "ImsPhoneCall"

    #@d
    const/4 v1, 0x2

    #@e
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    #@14
    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@6
    .line 66
    const-string/jumbo v0, "UK"

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@b
    .line 65
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p2, "context"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@6
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@8
    .line 72
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@a
    .line 70
    return-void
.end method

.method static isLocalTone(Lcom/android/ims/ImsCall;)Z
    .locals 3
    .param p0, "imsCall"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 315
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@6
    move-result-object v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 317
    :cond_0
    return v1

    #@a
    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@d
    move-result-object v2

    #@e
    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 320
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@15
    move-result-object v2

    #@16
    iget-object v0, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@18
    .line 322
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1a
    if-nez v2, :cond_2

    #@1c
    .line 323
    const/4 v1, 0x1

    #@1d
    .line 322
    :cond_2
    return v1
.end method

.method private takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 377
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@4
    .line 378
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@6
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@8
    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1a
    .line 380
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@1c
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@1f
    goto :goto_0

    #@20
    .line 376
    :cond_0
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 156
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 157
    const-string/jumbo v0, "ImsPhoneCall"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "attach : "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " conn = "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@2e
    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    #@38
    .line 155
    return-void
.end method

.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 167
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    const-string/jumbo v0, "ImsPhoneCall"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "attach : "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " state = "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 169
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    #@32
    .line 172
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@34
    .line 166
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    #@3
    .line 176
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

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
    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@12
    .line 247
    .local v0, "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 244
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 252
    .end local v0    # "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 253
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@2c
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2e
    .line 243
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    .line 185
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4
    if-eq v3, v4, :cond_2

    #@6
    .line 188
    const/4 v0, 0x1

    #@7
    .line 190
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@10
    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Lcom/android/internal/telephony/Connection;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@1b
    move-result-object v3

    #@1c
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@1e
    if-eq v3, v4, :cond_1

    #@20
    .line 192
    const/4 v0, 0x0

    #@21
    .line 197
    :cond_0
    if-eqz v0, :cond_2

    #@23
    .line 198
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@25
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@27
    .line 199
    const/4 v3, 0x1

    #@28
    return v3

    #@29
    .line 190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 203
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    #@2d
    return v3
.end method

.method detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@0
    .prologue
    .line 208
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 209
    const-string/jumbo v0, "ImsPhoneCall"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "detach : "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " conn = "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@30
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    #@33
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    #@38
    .line 207
    return-void
.end method

.method public dispose()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    .line 77
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 82
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    #@10
    .line 83
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@18
    .line 84
    .local v0, "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@1b
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 78
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "i":I
    .end local v3    # "s":I
    :catch_0
    move-exception v1

    #@1f
    .line 82
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const/4 v2, 0x0

    #@20
    .restart local v2    # "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v3

    #@26
    .restart local v3    # "s":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@28
    .line 83
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@30
    .line 84
    .restart local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@33
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_1

    #@36
    .line 81
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v2    # "i":I
    .end local v3    # "s":I
    :catchall_0
    move-exception v4

    #@37
    .line 82
    const/4 v2, 0x0

    #@38
    .restart local v2    # "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v3

    #@3e
    .restart local v3    # "s":I
    :goto_2
    if-ge v2, v3, :cond_0

    #@40
    .line 83
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@48
    .line 84
    .restart local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    #@4b
    .line 82
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 81
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    throw v4

    #@4f
    .line 75
    :cond_1
    return-void
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@4
    move-result-object v0

    #@5
    .line 146
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    #@7
    .line 147
    return-object v1

    #@8
    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getConferenceParticipants()Ljava/util/List;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@13
    return-object v0
.end method

.method getHandoverConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@6
    return-object v0
.end method

.method public getImsCall()Lcom/android/ims/ImsCall;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@5
    .line 119
    return-void
.end method

.method isFull()Z
    .locals 2

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x5

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@3
    move-result-object v0

    #@4
    .line 107
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    #@6
    .line 108
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3
    move-result-object v2

    #@4
    .line 283
    .local v2, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v2, :cond_0

    #@6
    .line 284
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceConnectTime()J

    #@9
    move-result-wide v0

    #@a
    .line 285
    .local v0, "conferenceConnectTime":J
    const-wide/16 v4, 0x0

    #@c
    cmp-long v3, v0, v4

    #@e
    if-lez v3, :cond_2

    #@10
    .line 286
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectTime(J)V

    #@13
    .line 293
    .end local v0    # "conferenceConnectTime":J
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 294
    const-string/jumbo v3, "ImsPhoneCall"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "merge("

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, "): "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "state = "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 278
    :cond_1
    return-void

    #@4a
    .line 288
    .restart local v0    # "conferenceConnectTime":J
    :cond_2
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    #@4c
    if-eqz v3, :cond_0

    #@4e
    .line 289
    const-string/jumbo v3, "ImsPhoneCall"

    #@51
    const-string/jumbo v4, "merge: conference connect time is 0"

    #@54
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 4

    #@0
    .prologue
    .line 232
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@9
    .line 233
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@11
    .line 234
    .local v0, "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHangupLocal()V

    #@14
    .line 232
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 236
    .end local v0    # "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@19
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@1b
    .line 231
    return-void
.end method

.method setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    #@0
    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@3
    move-result-object v2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 267
    const/4 v1, 0x0

    #@7
    .line 268
    :goto_0
    if-eqz v1, :cond_0

    #@9
    .line 270
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCall;->setMute(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 265
    :cond_0
    :goto_1
    return-void

    #@d
    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    #@14
    move-result-object v1

    #@15
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    goto :goto_0

    #@16
    .line 271
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    #@17
    .line 272
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneCall"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "setMute failed : "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    goto :goto_1
.end method

.method switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@0
    .prologue
    .line 364
    sget-boolean v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 365
    const-string/jumbo v1, "ImsPhoneCall"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "switchWith : switchCall = "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " withCall = "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 367
    :cond_0
    const-class v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2b
    monitor-enter v2

    #@2c
    .line 368
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@2e
    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>()V

    #@31
    .line 369
    .local v0, "tmp":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@34
    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    #@37
    .line 371
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    #@40
    .line 363
    return-void

    #@41
    .line 367
    .end local v0    # "tmp":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    :catchall_0
    move-exception v1

    #@42
    monitor-exit v2

    #@43
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 126
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[ImsPhoneCall "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 128
    const-string/jumbo v3, " state: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 130
    const-string/jumbo v3, " "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v3

    #@2b
    const/4 v4, 0x1

    #@2c
    if-le v3, v4, :cond_0

    #@2e
    .line 132
    const-string/jumbo v3, " ERROR_MULTIPLE "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 134
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    .local v1, "conn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_1

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@46
    .line 135
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    .line 136
    const-string/jumbo v3, " "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    goto :goto_0

    #@50
    .line 139
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string/jumbo v3, "]"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    return-object v3
.end method

.method update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 328
    move-object v1, p3

    #@2
    .line 329
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    const/4 v0, 0x0

    #@3
    .line 333
    .local v0, "changed":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@5
    if-ne p3, v2, :cond_4

    #@7
    .line 334
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_3

    #@11
    .line 337
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@13
    if-nez v2, :cond_1

    #@15
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@1d
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@1f
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startRingbackTone()V

    #@22
    .line 339
    const/4 v2, 0x1

    #@23
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@25
    .line 348
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@27
    if-eq v1, v2, :cond_5

    #@29
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2b
    if-eq p3, v2, :cond_5

    #@2d
    .line 349
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    #@2f
    .line 350
    const/4 v0, 0x1

    #@30
    .line 355
    :cond_2
    :goto_1
    return v0

    #@31
    .line 335
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@33
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@35
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    #@38
    .line 336
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@3a
    goto :goto_0

    #@3b
    .line 342
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 343
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@41
    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@43
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    #@46
    .line 344
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    #@48
    goto :goto_0

    #@49
    .line 351
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@4b
    if-ne p3, v2, :cond_2

    #@4d
    .line 352
    const/4 v0, 0x1

    #@4e
    goto :goto_1
.end method
