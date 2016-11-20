.class public Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
.super Ljava/lang/Object;
.source "ImsExternalCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;,
        Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;
    }
.end annotation


# static fields
.field public static final EXTRA_IMS_EXTERNAL_CALL_ID:Ljava/lang/String; = "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

.field public static final TAG:Ljava/lang/String; = "ImsExternalCallTracker"


# instance fields
.field private final mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

.field private final mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

.field private final mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

.field private mExternalConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPullCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    .line 80
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@a
    .line 85
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@f
    .line 84
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@11
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@13
    .line 90
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@15
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;-><init>(Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;)V

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@1a
    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mCallPuller:Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@1c
    .line 88
    return-void
.end method

.method private containsCallId(Ljava/util/List;I)Z
    .locals 3
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/ims/ImsExternalCallState;

    #@10
    .line 228
    .local v0, "state":Lcom/android/ims/ImsExternalCallState;
    invoke-virtual {v0}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@13
    move-result v2

    #@14
    if-ne v2, p2, :cond_0

    #@16
    .line 229
    const/4 v2, 0x1

    #@17
    return v2

    #@18
    .line 233
    .end local v0    # "state":Lcom/android/ims/ImsExternalCallState;
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method

.method private createExternalConnection(Lcom/android/ims/ImsExternalCallState;)V
    .locals 5
    .param p1, "state"    # Lcom/android/ims/ImsExternalCallState;

    #@0
    .prologue
    .line 167
    const-string/jumbo v1, "ImsExternalCallTracker"

    #@3
    const-string/jumbo v2, "createExternalConnection"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 169
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@b
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@d
    .line 170
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@10
    move-result v2

    #@11
    .line 171
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getAddress()Landroid/net/Uri;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 172
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@1c
    move-result v4

    #@1d
    .line 169
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Z)V

    #@20
    .line 173
    .local v0, "connection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {p1}, Lcom/android/ims/ImsExternalCallState;->getCallType()I

    #@23
    move-result v1

    #@24
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    #@27
    move-result v1

    #@28
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    #@2b
    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@2d
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@30
    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@32
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    #@35
    move-result v2

    #@36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@3f
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    #@42
    .line 166
    return-void
.end method

.method private updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Lcom/android/ims/ImsExternalCallState;)V
    .locals 5
    .param p1, "connection"    # Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    .param p2, "state"    # Lcom/android/ims/ImsExternalCallState;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    .line 196
    .local v0, "existingState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->getCallState()I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x1

    #@9
    if-ne v3, v4, :cond_2

    #@b
    .line 197
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@d
    .line 199
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    if-eq v0, v1, :cond_0

    #@f
    .line 200
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@11
    if-ne v1, v3, :cond_3

    #@13
    .line 201
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    #@16
    .line 210
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->isCallPullable()Z

    #@19
    move-result v3

    #@1a
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setIsPullable(Z)V

    #@1d
    .line 212
    invoke-virtual {p2}, Lcom/android/ims/ImsExternalCallState;->getCallType()I

    #@20
    move-result v3

    #@21
    invoke-static {v3}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    #@24
    move-result v2

    #@25
    .line 213
    .local v2, "newVideoState":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getVideoState()I

    #@28
    move-result v3

    #@29
    if-eq v2, v3, :cond_1

    #@2b
    .line 214
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setVideoState(I)V

    #@2e
    .line 194
    :cond_1
    return-void

    #@2f
    .line 197
    .end local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    .end local v2    # "newVideoState":I
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@31
    goto :goto_0

    #@32
    .line 203
    .restart local v1    # "newState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    #@35
    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@37
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@3a
    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@3c
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@41
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@44
    goto :goto_1
.end method


# virtual methods
.method public getConnectionById(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "callId"    # I

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@c
    return-object v0
.end method

.method public getExternalCallStateListener()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalCallStateListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalCallStateListener;

    #@2
    return-object v0
.end method

.method public refreshExternalCallState(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p1, "externalCallStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    const-string/jumbo v7, "ImsExternalCallTracker"

    #@3
    new-instance v8, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v9, "refreshExternalCallState: depSize = "

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v9

    #@13
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v8

    #@17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v8

    #@1b
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 112
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@20
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@23
    move-result-object v7

    #@24
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    .line 113
    .local v3, "connectionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;>;"
    const/4 v6, 0x0

    #@29
    .line 114
    .local v6, "wasCallRemoved":Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_1

    #@2f
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Ljava/util/Map$Entry;

    #@35
    .line 116
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@38
    move-result-object v7

    #@39
    check-cast v7, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v0

    #@3f
    .line 118
    .local v0, "callId":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->containsCallId(Ljava/util/List;I)Z

    #@42
    move-result v7

    #@43
    if-nez v7, :cond_0

    #@45
    .line 119
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@48
    move-result-object v5

    #@49
    check-cast v5, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@4b
    .line 120
    .local v5, "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setTerminated()V

    #@4e
    .line 121
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnectionListener:Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker$ExternalConnectionListener;

    #@50
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V

    #@53
    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    #@56
    .line 123
    const/4 v6, 0x1

    #@57
    goto :goto_0

    #@58
    .line 128
    .end local v0    # "callId":I
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;>;"
    .end local v5    # "externalConnection":Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
    :cond_1
    if-eqz v6, :cond_2

    #@5a
    .line 129
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@5c
    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    #@5f
    .line 133
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v2

    #@63
    .local v2, "callState$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v7

    #@67
    if-eqz v7, :cond_5

    #@69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v1

    #@6d
    check-cast v1, Lcom/android/ims/ImsExternalCallState;

    #@6f
    .line 134
    .local v1, "callState":Lcom/android/ims/ImsExternalCallState;
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@71
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@74
    move-result v8

    #@75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v8

    #@79
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    if-nez v7, :cond_4

    #@7f
    .line 135
    const-string/jumbo v7, "ImsExternalCallTracker"

    #@82
    new-instance v8, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v9, "refreshExternalCallState: got = "

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 138
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallState()I

    #@9c
    move-result v7

    #@9d
    const/4 v8, 0x1

    #@9e
    if-ne v7, v8, :cond_3

    #@a0
    .line 141
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->createExternalConnection(Lcom/android/ims/ImsExternalCallState;)V

    #@a3
    goto :goto_1

    #@a4
    .line 143
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->mExternalConnections:Ljava/util/Map;

    #@a6
    invoke-virtual {v1}, Lcom/android/ims/ImsExternalCallState;->getCallId()I

    #@a9
    move-result v8

    #@aa
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ad
    move-result-object v8

    #@ae
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    move-result-object v7

    #@b2
    check-cast v7, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    #@b4
    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->updateExistingConnection(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;Lcom/android/ims/ImsExternalCallState;)V

    #@b7
    goto :goto_1

    #@b8
    .line 106
    .end local v1    # "callState":Lcom/android/ims/ImsExternalCallState;
    :cond_5
    return-void
.end method
