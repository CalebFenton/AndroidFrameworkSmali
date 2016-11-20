.class Lsun/security/ssl/EngineArgs;
.super Ljava/lang/Object;
.source "EngineArgs.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field appData:[Ljava/nio/ByteBuffer;

.field private appLims:[I

.field private appPoss:[I

.field private appRemaining:I

.field private len:I

.field netData:Ljava/nio/ByteBuffer;

.field private netLim:I

.field private netPos:I

.field private offset:I

.field private wrapMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/security/ssl/EngineArgs;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineArgs;->-assertionsDisabled:Z

    #@b
    .line 37
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@6
    .line 81
    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    #@8
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    #@b
    .line 80
    return-void
.end method

.method constructor <init>([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "appData"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "netData"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@6
    .line 72
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    #@9
    .line 73
    invoke-direct {p0, p4, p1, p2, p3}, Lsun/security/ssl/EngineArgs;->init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V

    #@c
    .line 71
    return-void
.end method

.method private init(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)V
    .locals 4
    .param p1, "netData"    # Ljava/nio/ByteBuffer;
    .param p2, "appData"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 99
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "src/dst is null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 103
    :cond_1
    if-ltz p3, :cond_2

    #@f
    if-gez p4, :cond_3

    #@11
    .line 104
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v1

    #@17
    .line 103
    :cond_3
    array-length v1, p2

    #@18
    sub-int/2addr v1, p4

    #@19
    if-gt p3, v1, :cond_2

    #@1b
    .line 107
    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    #@1d
    if-eqz v1, :cond_4

    #@1f
    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 108
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@27
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@2a
    throw v1

    #@2b
    .line 111
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    #@31
    .line 112
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    #@34
    move-result v1

    #@35
    iput v1, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    #@37
    .line 114
    array-length v1, p2

    #@38
    new-array v1, v1, [I

    #@3a
    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    #@3c
    .line 115
    array-length v1, p2

    #@3d
    new-array v1, v1, [I

    #@3f
    iput-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    #@41
    .line 117
    move v0, p3

    #@42
    .local v0, "i":I
    :goto_0
    add-int v1, p3, p4

    #@44
    if-ge v0, v1, :cond_7

    #@46
    .line 118
    aget-object v1, p2, v0

    #@48
    if-nez v1, :cond_5

    #@4a
    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4c
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "appData["

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    const-string/jumbo v3, "] == null"

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    .line 119
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v1

    #@6b
    .line 127
    :cond_5
    iget-boolean v1, p0, Lsun/security/ssl/EngineArgs;->wrapMethod:Z

    #@6d
    if-nez v1, :cond_6

    #@6f
    aget-object v1, p2, v0

    #@71
    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_6

    #@77
    .line 128
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@79
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@7c
    throw v1

    #@7d
    .line 131
    :cond_6
    iget v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@7f
    aget-object v2, p2, v0

    #@81
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    #@84
    move-result v2

    #@85
    add-int/2addr v1, v2

    #@86
    iput v1, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@88
    .line 133
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    #@8a
    aget-object v2, p2, v0

    #@8c
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    #@8f
    move-result v2

    #@90
    aput v2, v1, v0

    #@92
    .line 134
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    #@94
    aget-object v2, p2, v0

    #@96
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    #@99
    move-result v2

    #@9a
    aput v2, v1, v0

    #@9c
    .line 117
    add-int/lit8 v0, v0, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 141
    :cond_7
    iput-object p1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@a1
    .line 142
    iput-object p2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@a3
    .line 143
    iput p3, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@a5
    .line 144
    iput p4, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@a7
    .line 97
    return-void
.end method


# virtual methods
.method deltaApp()I
    .locals 4

    #@0
    .prologue
    .line 200
    const/4 v1, 0x0

    #@1
    .line 202
    .local v1, "sum":I
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@5
    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@7
    add-int/2addr v2, v3

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 203
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    #@11
    move-result v2

    #@12
    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    #@14
    aget v3, v3, v0

    #@16
    sub-int/2addr v2, v3

    #@17
    add-int/2addr v1, v2

    #@18
    .line 202
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 206
    :cond_0
    return v1
.end method

.method deltaNet()I
    .locals 2

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method gather(I)V
    .locals 4
    .param p1, "spaceLeft"    # I

    #@0
    .prologue
    .line 155
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@2
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@4
    iget v3, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@6
    add-int/2addr v2, v3

    #@7
    if-ge v1, v2, :cond_0

    #@9
    if-lez p1, :cond_0

    #@b
    .line 156
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@d
    aget-object v2, v2, v1

    #@f
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    #@12
    move-result v2

    #@13
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v0

    #@17
    .line 157
    .local v0, "amount":I
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@19
    aget-object v2, v2, v1

    #@1b
    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@1d
    aget-object v3, v3, v1

    #@1f
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    #@22
    move-result v3

    #@23
    add-int/2addr v3, v0

    #@24
    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@27
    .line 158
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@29
    iget-object v3, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@2b
    aget-object v3, v3, v1

    #@2d
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@30
    .line 159
    iget v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@32
    sub-int/2addr v2, v0

    #@33
    iput v2, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@35
    .line 160
    sub-int/2addr p1, v0

    #@36
    .line 155
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 154
    .end local v0    # "amount":I
    :cond_0
    return-void
.end method

.method getAppRemaining()I
    .locals 1

    #@0
    .prologue
    .line 184
    iget v0, p0, Lsun/security/ssl/EngineArgs;->appRemaining:I

    #@2
    return v0
.end method

.method resetLim()V
    .locals 3

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@2
    iget v2, p0, Lsun/security/ssl/EngineArgs;->netLim:I

    #@4
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@7
    .line 234
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@9
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@b
    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@d
    add-int/2addr v1, v2

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 235
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@12
    aget-object v1, v1, v0

    #@14
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appLims:[I

    #@16
    aget v2, v2, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 234
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 232
    :cond_0
    return-void
.end method

.method resetPos()V
    .locals 3

    #@0
    .prologue
    .line 219
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    #@2
    iget v2, p0, Lsun/security/ssl/EngineArgs;->netPos:I

    #@4
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@7
    .line 220
    iget v0, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@9
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@b
    iget v2, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@d
    add-int/2addr v1, v2

    #@e
    if-ge v0, v1, :cond_0

    #@10
    .line 222
    iget-object v1, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@12
    aget-object v1, v1, v0

    #@14
    iget-object v2, p0, Lsun/security/ssl/EngineArgs;->appPoss:[I

    #@16
    aget v2, v2, v0

    #@18
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@1b
    .line 220
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 218
    :cond_0
    return-void
.end method

.method scatter(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "readyData"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 171
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@4
    move-result v1

    #@5
    .line 173
    .local v1, "amountLeft":I
    iget v2, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@7
    .local v2, "i":I
    :goto_0
    iget v4, p0, Lsun/security/ssl/EngineArgs;->offset:I

    #@9
    iget v5, p0, Lsun/security/ssl/EngineArgs;->len:I

    #@b
    add-int/2addr v4, v5

    #@c
    if-ge v2, v4, :cond_0

    #@e
    if-lez v1, :cond_0

    #@10
    .line 175
    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@12
    aget-object v4, v4, v2

    #@14
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    #@17
    move-result v4

    #@18
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v0

    #@1c
    .line 176
    .local v0, "amount":I
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    #@1f
    move-result v4

    #@20
    add-int/2addr v4, v0

    #@21
    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 177
    iget-object v4, p0, Lsun/security/ssl/EngineArgs;->appData:[Ljava/nio/ByteBuffer;

    #@26
    aget-object v4, v4, v2

    #@28
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    #@2b
    .line 178
    sub-int/2addr v1, v0

    #@2c
    .line 174
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 180
    .end local v0    # "amount":I
    :cond_0
    sget-boolean v4, Lsun/security/ssl/EngineArgs;->-assertionsDisabled:Z

    #@31
    if-nez v4, :cond_2

    #@33
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_1

    #@39
    const/4 v3, 0x1

    #@3a
    :cond_1
    if-nez v3, :cond_2

    #@3c
    new-instance v3, Ljava/lang/AssertionError;

    #@3e
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@41
    throw v3

    #@42
    .line 170
    :cond_2
    return-void
.end method
