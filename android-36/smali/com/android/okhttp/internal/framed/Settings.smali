.class public final Lcom/android/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final blacklist CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final blacklist COUNT:I = 0xa

.field static final blacklist CURRENT_CWND:I = 0x5

.field static final blacklist DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final blacklist DOWNLOAD_BANDWIDTH:I = 0x2

.field static final blacklist DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final blacklist ENABLE_PUSH:I = 0x2

.field static final blacklist FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final blacklist FLOW_CONTROL_OPTIONS:I = 0xa

.field static final blacklist FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final blacklist HEADER_TABLE_SIZE:I = 0x1

.field static final blacklist INITIAL_WINDOW_SIZE:I = 0x7

.field static final blacklist MAX_CONCURRENT_STREAMS:I = 0x4

.field static final blacklist MAX_FRAME_SIZE:I = 0x5

.field static final blacklist MAX_HEADER_LIST_SIZE:I = 0x6

.field static final blacklist PERSISTED:I = 0x2

.field static final blacklist PERSIST_VALUE:I = 0x1

.field static final blacklist ROUND_TRIP_TIME:I = 0x3

.field static final blacklist UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private blacklist persistValue:I

.field private blacklist persisted:I

.field private blacklist set:I

.field private final blacklist values:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 84
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method blacklist clear()V
    .registers 2

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    .line 88
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method blacklist flags(I)I
    .registers 3

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/Settings;->isPersisted(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 128
    :goto_9
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/Settings;->persistValue(I)Z

    move-result p0

    if-eqz p0, :cond_12

    or-int/lit8 p0, v0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method blacklist get(I)I
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    aget p0, p0, p1

    return p0
.end method

.method blacklist getClientCertificateVectorSize(I)I
    .registers 3

    .line 206
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/16 p1, 0x8

    aget p0, p0, p1

    return p0

    :cond_d
    return p1
.end method

.method blacklist getCurrentCwnd(I)I
    .registers 3

    .line 177
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x5

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getDownloadBandwidth(I)I
    .registers 3

    .line 152
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getDownloadRetransRate(I)I
    .registers 3

    .line 189
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x6

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getEnablePush(Z)Z
    .registers 5

    .line 159
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x2

    aget p0, p0, p1

    goto :goto_13

    :cond_e
    if-eqz p1, :cond_12

    move p0, v2

    goto :goto_13

    :cond_12
    move p0, v1

    :goto_13
    if-ne p0, v2, :cond_16

    return v2

    :cond_16
    return v1
.end method

.method blacklist getHeaderTableSize()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method blacklist getInitialWindowSize(I)I
    .registers 3

    .line 200
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x7

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getMaxConcurrentStreams(I)I
    .registers 3

    .line 171
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x4

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getMaxFrameSize(I)I
    .registers 3

    .line 183
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x5

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getMaxHeaderListSize(I)I
    .registers 3

    .line 195
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x6

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getRoundTripTime(I)I
    .registers 3

    .line 165
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist getUploadBandwidth(I)I
    .registers 3

    .line 140
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    :cond_c
    return p1
.end method

.method blacklist isFlowControlDisabled()Z
    .registers 3

    .line 212
    iget v0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    const/16 v0, 0xa

    aget p0, p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    return v1
.end method

.method blacklist isPersisted(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 228
    iget p0, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isSet(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 116
    iget p0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method blacklist merge(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    .line 237
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_17

    .line 238
    :cond_c
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method blacklist persistValue(I)Z
    .registers 3

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 222
    iget p0, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method blacklist set(III)Lcom/android/okhttp/internal/framed/Settings;
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_6

    return-object p0

    :cond_6
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 97
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_17

    .line 99
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_1d

    .line 101
    :cond_17
    iget v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/internal/framed/Settings;->persistValue:I

    :goto_1d
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_27

    .line 104
    iget p2, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_2d

    .line 106
    :cond_27
    iget p2, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, p0, Lcom/android/okhttp/internal/framed/Settings;->persisted:I

    .line 109
    :goto_2d
    aput p3, v0, p1

    return-object p0
.end method

.method blacklist size()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/android/okhttp/internal/framed/Settings;->set:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
