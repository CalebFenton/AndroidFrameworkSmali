.class public final Lcom/android/okhttp/internal/spdy/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final ENABLE_PUSH:I = 0x2

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0xa

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    const/16 v0, 0xa

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@9
    .line 24
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@3
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@5
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@7
    .line 86
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    #@c
    .line 84
    return-void
.end method

.method flags(I)I
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    .line 125
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/spdy/Settings;->isPersisted(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x2

    #@8
    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/spdy/Settings;->persistValue(I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    or-int/lit8 v0, v0, 0x1

    #@10
    .line 127
    :cond_1
    return v0
.end method

.method get(I)I
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method getClientCertificateVectorSize(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 204
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit16 v0, v0, 0x100

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/16 v1, 0x8

    #@a
    aget p1, v0, v1

    #@c
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getCurrentCwnd(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 175
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x5

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getDownloadBandwidth(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 150
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x2

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getDownloadRetransRate(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 187
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x6

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getEnablePush(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 157
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@4
    and-int/lit8 v2, v2, 0x4

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@a
    const/4 v3, 0x2

    #@b
    aget v2, v2, v3

    #@d
    :goto_0
    if-ne v2, v0, :cond_2

    #@f
    :goto_1
    return v0

    #@10
    :cond_0
    if-eqz p1, :cond_1

    #@12
    move v2, v0

    #@13
    goto :goto_0

    #@14
    :cond_1
    move v2, v1

    #@15
    goto :goto_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_1
.end method

.method getHeaderTableSize()I
    .locals 2

    #@0
    .prologue
    .line 144
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x1

    #@9
    aget v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, -0x1

    #@d
    goto :goto_0
.end method

.method getInitialWindowSize(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 198
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit16 v0, v0, 0x80

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x7

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getMaxConcurrentStreams(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 169
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x10

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x4

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getMaxFrameSize(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 181
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x5

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getMaxHeaderListSize(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 193
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x40

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x6

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getRoundTripTime(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 163
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x3

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method getUploadBandwidth(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 138
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@8
    const/4 v1, 0x1

    #@9
    aget p1, v0, v1

    #@b
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method isFlowControlDisabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@3
    and-int/lit16 v2, v2, 0x400

    #@5
    if-eqz v2, :cond_1

    #@7
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@9
    const/16 v3, 0xa

    #@b
    aget v0, v2, v3

    #@d
    .line 211
    .local v0, "value":I
    :goto_0
    and-int/lit8 v2, v0, 0x1

    #@f
    if-eqz v2, :cond_0

    #@11
    const/4 v1, 0x1

    #@12
    :cond_0
    return v1

    #@13
    .line 210
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    #@14
    .restart local v0    # "value":I
    goto :goto_0
.end method

.method isPersisted(I)Z
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 225
    shl-int v0, v1, p1

    #@4
    .line 226
    .local v0, "bit":I
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@6
    and-int/2addr v3, v0

    #@7
    if-eqz v3, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0
.end method

.method isSet(I)Z
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 113
    shl-int v0, v1, p1

    #@4
    .line 114
    .local v0, "bit":I
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@6
    and-int/2addr v3, v0

    #@7
    if-eqz v3, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0
.end method

.method merge(Lcom/android/okhttp/internal/spdy/Settings;)V
    .locals 3
    .param p1, "other"    # Lcom/android/okhttp/internal/spdy/Settings;

    #@0
    .prologue
    .line 234
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 235
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->isSet(I)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 234
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->flags(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/spdy/Settings;->get(I)I

    #@15
    move-result v2

    #@16
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/okhttp/internal/spdy/Settings;->set(III)Lcom/android/okhttp/internal/spdy/Settings;

    #@19
    goto :goto_1

    #@1a
    .line 233
    :cond_1
    return-void
.end method

.method persistValue(I)Z
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 219
    shl-int v0, v1, p1

    #@4
    .line 220
    .local v0, "bit":I
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@6
    and-int/2addr v3, v0

    #@7
    if-eqz v3, :cond_0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    move v1, v2

    #@b
    goto :goto_0
.end method

.method set(III)Lcom/android/okhttp/internal/spdy/Settings;
    .locals 3
    .param p1, "id"    # I
    .param p2, "idFlags"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@2
    array-length v1, v1

    #@3
    if-lt p1, v1, :cond_0

    #@5
    .line 91
    return-object p0

    #@6
    .line 94
    :cond_0
    const/4 v1, 0x1

    #@7
    shl-int v0, v1, p1

    #@9
    .line 95
    .local v0, "bit":I
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@b
    or-int/2addr v1, v0

    #@c
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@e
    .line 96
    and-int/lit8 v1, p2, 0x1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 97
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@14
    or-int/2addr v1, v0

    #@15
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@17
    .line 101
    :goto_0
    and-int/lit8 v1, p2, 0x2

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 102
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@1d
    or-int/2addr v1, v0

    #@1e
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@20
    .line 107
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->values:[I

    #@22
    aput p3, v1, p1

    #@24
    .line 108
    return-object p0

    #@25
    .line 99
    :cond_1
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@27
    not-int v2, v0

    #@28
    and-int/2addr v1, v2

    #@29
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persistValue:I

    #@2b
    goto :goto_0

    #@2c
    .line 104
    :cond_2
    iget v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@2e
    not-int v2, v0

    #@2f
    and-int/2addr v1, v2

    #@30
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Settings;->persisted:I

    #@32
    goto :goto_1
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Settings;->set:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
