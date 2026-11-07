.class public Lcom/android/internal/telephony/d2d/Communicator;
.super Ljava/lang/Object;
.source "Communicator.java"

# interfaces
.implements Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/d2d/Communicator$Callback;,
        Lcom/android/internal/telephony/d2d/Communicator$Message;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_CODEC_AMR_NB:I = 0x3

.field public static final blacklist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final blacklist AUDIO_CODEC_EVS:I = 0x1

.field public static final blacklist BATTERY_STATE_CHARGING:I = 0x3

.field public static final blacklist BATTERY_STATE_GOOD:I = 0x2

.field public static final blacklist BATTERY_STATE_LOW:I = 0x1

.field public static final blacklist COVERAGE_GOOD:I = 0x2

.field public static final blacklist COVERAGE_POOR:I = 0x1

.field public static final blacklist MESSAGE_CALL_AUDIO_CODEC:I = 0x2

.field public static final blacklist MESSAGE_CALL_RADIO_ACCESS_TYPE:I = 0x1

.field public static final blacklist MESSAGE_DEVICE_BATTERY_STATE:I = 0x3

.field public static final blacklist MESSAGE_DEVICE_NETWORK_COVERAGE:I = 0x4

.field public static final blacklist RADIO_ACCESS_TYPE_IWLAN:I = 0x2

.field public static final blacklist RADIO_ACCESS_TYPE_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TYPE_NR:I = 0x3


# instance fields
.field private blacklist mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

.field private blacklist mCallback:Lcom/android/internal/telephony/d2d/Communicator$Callback;

.field private blacklist mIsNegotiated:Z

.field private blacklist mIsNegotiationAttempted:Z

.field private blacklist mTransportProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/d2d/TransportProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$4iy68DF4EIlA2JPboj5-s7Et6TM(Lcom/android/internal/telephony/d2d/Communicator;Lcom/android/internal/telephony/d2d/TransportProtocol;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator;->lambda$new$1(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8S90CP1W4T8r4f9p2AtXawbathg(Lcom/android/internal/telephony/d2d/TransportProtocol;)V
    .registers 1

    .line 334
    invoke-interface {p0}, Lcom/android/internal/telephony/d2d/TransportProtocol;->forceNotNegotiated()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$C0Xs8w1IEVDWTr5Q1tjTNwGq3v0(Ljava/util/Optional;Lcom/android/internal/telephony/d2d/TransportProtocol;)Z
    .registers 2

    .line 333
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CMV56mBuMkHRHke-up15jjPwxZs(Ljava/lang/String;Lcom/android/internal/telephony/d2d/TransportProtocol;)Z
    .registers 2

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$T0-cJ_fyBN8u2MgGO6ozc5-Nixo(Lcom/android/internal/telephony/d2d/TransportProtocol;)Ljava/lang/String;
    .registers 1

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/List;Lcom/android/internal/telephony/d2d/Communicator$Callback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/d2d/TransportProtocol;",
            ">;",
            "Lcom/android/internal/telephony/d2d/Communicator$Callback;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    .line 113
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    .line 114
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 112
    const-string v1, "Initializing communicator with transports: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/d2d/Communicator;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/d2d/Communicator;->mCallback:Lcom/android/internal/telephony/d2d/Communicator$Callback;

    return-void
.end method

.method private blacklist getNextCandidateProtocol()Lcom/android/internal/telephony/d2d/TransportProtocol;
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 231
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/d2d/TransportProtocol;

    return-object p0

    .line 233
    :cond_17
    iput-boolean v1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    return-object v2

    .line 236
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_44

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/d2d/TransportProtocol;

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    if-ne v0, v3, :cond_41

    add-int/lit8 v1, v1, 0x1

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_44

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/d2d/TransportProtocol;

    return-object p0

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_44
    return-object v2
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/telephony/d2d/TransportProtocol;)V
    .registers 2

    .line 116
    invoke-interface {p1, p0}, Lcom/android/internal/telephony/d2d/TransportProtocol;->setCallback(Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;)V

    return-void
.end method

.method public static blacklist messageToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 272
    const-string p0, ""

    return-object p0

    .line 270
    :cond_f
    const-string p0, "MESSAGE_DEVICE_NETWORK_COVERAGE"

    return-object p0

    .line 268
    :cond_12
    const-string p0, "MESSAGE_DEVICE_BATTERY_STATE"

    return-object p0

    .line 266
    :cond_15
    const-string p0, "MESSAGE_CALL_AUDIO_CODEC"

    return-object p0

    .line 264
    :cond_18
    const-string p0, "MESSAGE_CALL_RADIO_ACCESS_TYPE"

    return-object p0
.end method

.method private blacklist negotiateNextProtocol()V
    .registers 4

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/Communicator;->getNextCandidateProtocol()Lcom/android/internal/telephony/d2d/TransportProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    if-nez v0, :cond_14

    .line 214
    const-string v0, "negotiateNextProtocol: no remaining transports."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/d2d/Communicator;->notifyD2DStatus(Z)V

    return-void

    .line 219
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 218
    const-string v1, "negotiateNextProtocol: trying %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-interface {p0}, Lcom/android/internal/telephony/d2d/TransportProtocol;->startNegotiation()V

    return-void
.end method

.method private blacklist notifyD2DStatus(Z)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mCallback:Lcom/android/internal/telephony/d2d/Communicator$Callback;

    if-eqz p0, :cond_7

    .line 257
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator$Callback;->onD2DAvailabilitychanged(Z)V

    :cond_7
    return-void
.end method

.method public static blacklist valueToString(II)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    .line 276
    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3a

    if-eq p0, v2, :cond_2a

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    return-object v1

    :cond_f
    if-eq p1, v3, :cond_17

    if-eq p1, v2, :cond_14

    return-object v1

    .line 312
    :cond_14
    const-string p0, "COVERAGE_GOOD"

    return-object p0

    .line 310
    :cond_17
    const-string p0, "COVERAGE_POOR"

    return-object p0

    :cond_1a
    if-eq p1, v3, :cond_27

    if-eq p1, v2, :cond_24

    if-eq p1, v0, :cond_21

    return-object v1

    .line 304
    :cond_21
    const-string p0, "BATTERY_STATE_CHARGING"

    return-object p0

    .line 302
    :cond_24
    const-string p0, "BATTERY_STATE_GOOD"

    return-object p0

    .line 300
    :cond_27
    const-string p0, "BATTERY_STATE_LOW"

    return-object p0

    :cond_2a
    if-eq p1, v3, :cond_37

    if-eq p1, v2, :cond_34

    if-eq p1, v0, :cond_31

    return-object v1

    .line 294
    :cond_31
    const-string p0, "AUDIO_CODEC_AMR_NB"

    return-object p0

    .line 292
    :cond_34
    const-string p0, "AUDIO_CODEC_AMR_WB"

    return-object p0

    .line 290
    :cond_37
    const-string p0, "AUDIO_CODEC_EVS"

    return-object p0

    :cond_3a
    if-eq p1, v3, :cond_47

    if-eq p1, v2, :cond_44

    if-eq p1, v0, :cond_41

    return-object v1

    .line 284
    :cond_41
    const-string p0, "RADIO_ACCESS_TYPE_NR"

    return-object p0

    .line 282
    :cond_44
    const-string p0, "RADIO_ACCESS_TYPE_IWLAN"

    return-object p0

    .line 280
    :cond_47
    const-string p0, "RADIO_ACCESS_TYPE_LTE"

    return-object p0
.end method


# virtual methods
.method public blacklist getActiveTransport()Lcom/android/internal/telephony/d2d/TransportProtocol;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    return-object p0
.end method

.method public blacklist getTransportProtocols()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/d2d/TransportProtocol;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    return-object p0
.end method

.method public blacklist onMessagesReceived(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mCallback:Lcom/android/internal/telephony/d2d/Communicator$Callback;

    if-eqz p0, :cond_7

    .line 188
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator$Callback;->onMessagesReceived(Ljava/util/Set;)V

    :cond_7
    return-void
.end method

.method public blacklist onNegotiationFailed(Lcom/android/internal/telephony/d2d/TransportProtocol;)V
    .registers 3

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 174
    const-string v0, "onNegotiationFailed: %s failed to negotiate."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    .line 177
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/Communicator;->negotiateNextProtocol()V

    return-void
.end method

.method public blacklist onNegotiationSuccess(Lcom/android/internal/telephony/d2d/TransportProtocol;)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    if-eq p1, v0, :cond_22

    if-nez v0, :cond_9

    .line 154
    const-string v0, "none"

    goto :goto_11

    .line 155
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 156
    const-string v1, "onNegotiationSuccess: ignored - %s negotiated but active transport is %s."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 159
    const-string v0, "onNegotiationSuccess: %s negotiated; setting active."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/Communicator;->notifyD2DStatus(Z)V

    return-void
.end method

.method public blacklist onStateChanged(Ljava/lang/String;I)V
    .registers 4

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onStateChanged: id=%s, newState=%d"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_28

    .line 137
    iget-object p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    if-nez p1, :cond_28

    iget-boolean p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiationAttempted:Z

    if-nez p1, :cond_28

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    const/4 p2, 0x1

    .line 139
    iput-boolean p2, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiationAttempted:Z

    .line 140
    const-string p2, "onStateChanged: call active; negotiate D2D."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/Communicator;->negotiateNextProtocol()V

    :cond_28
    return-void
.end method

.method public blacklist sendMessages(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    if-nez v0, :cond_9

    goto :goto_2a

    .line 203
    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 202
    const-string v1, "sendMessages: msgs=%d, activeTransport=%s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/d2d/TransportProtocol;->sendMessages(Ljava/util/Set;)V

    return-void

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 198
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "sendMessages: no active transport"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setTransportActive(Ljava/lang/String;)V
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 p1, 0x0

    .line 328
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "setTransportActive: %s is not a valid transport."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 332
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/Communicator;->mTransportProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda3;-><init>(Ljava/util/Optional;)V

    .line 333
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/d2d/Communicator$$ExternalSyntheticLambda4;-><init>()V

    .line 334
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 335
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/d2d/TransportProtocol;

    invoke-interface {v1}, Lcom/android/internal/telephony/d2d/TransportProtocol;->forceNegotiated()V

    .line 336
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/d2d/TransportProtocol;

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mActiveTransport:Lcom/android/internal/telephony/d2d/TransportProtocol;

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/android/internal/telephony/d2d/Communicator;->mIsNegotiated:Z

    .line 338
    const-string v0, "setTransportActive: %s has been forced active."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
