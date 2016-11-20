.class public Lcom/android/server/wifi/anqp/HSWanMetricsElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "HSWanMetricsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    }
.end annotation


# instance fields
.field private final mCapped:Z

.field private final mDlLoad:I

.field private final mDlSpeed:J

.field private final mLMD:I

.field private final mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

.field private final mSymmetric:Z

.field private final mUlLoad:I

.field private final mUlSpeed:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    const/4 v2, 0x1

    #@6
    const/4 v3, 0x0

    #@7
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    #@a
    .line 32
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v1

    #@e
    const/16 v4, 0xd

    #@10
    if-eq v1, v4, :cond_0

    #@12
    .line 33
    new-instance v1, Ljava/net/ProtocolException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Bad WAN metrics length: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@33
    move-result v1

    #@34
    and-int/lit16 v0, v1, 0xff

    #@36
    .line 37
    .local v0, "status":I
    invoke-static {}, Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;->values()[Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@39
    move-result-object v1

    #@3a
    and-int/lit8 v4, v0, 0x3

    #@3c
    aget-object v1, v1, v4

    #@3e
    iput-object v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@40
    .line 38
    and-int/lit8 v1, v0, 0x4

    #@42
    if-eqz v1, :cond_1

    #@44
    move v1, v2

    #@45
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    #@47
    .line 39
    and-int/lit8 v1, v0, 0x8

    #@49
    if-eqz v1, :cond_2

    #@4b
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    #@4d
    .line 40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@50
    move-result v1

    #@51
    int-to-long v2, v1

    #@52
    and-long/2addr v2, v6

    #@53
    iput-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    #@55
    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    #@58
    move-result v1

    #@59
    int-to-long v2, v1

    #@5a
    and-long/2addr v2, v6

    #@5b
    iput-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    #@5d
    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@60
    move-result v1

    #@61
    and-int/lit16 v1, v1, 0xff

    #@63
    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    #@65
    .line 43
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    #@68
    move-result v1

    #@69
    and-int/lit16 v1, v1, 0xff

    #@6b
    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    #@6d
    .line 44
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    #@70
    move-result v1

    #@71
    const v2, 0xffff

    #@74
    and-int/2addr v1, v2

    #@75
    iput v1, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    #@77
    .line 29
    return-void

    #@78
    :cond_1
    move v1, v3

    #@79
    .line 38
    goto :goto_0

    #@7a
    :cond_2
    move v2, v3

    #@7b
    .line 39
    goto :goto_1
.end method


# virtual methods
.method public getDlLoad()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    #@2
    return v0
.end method

.method public getDlSpeed()J
    .locals 2

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    #@2
    return-wide v0
.end method

.method public getLMD()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    #@2
    return v0
.end method

.method public getStatus()Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@2
    return-object v0
.end method

.method public getUlLoad()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    #@2
    return v0
.end method

.method public getUlSpeed()J
    .locals 2

    #@0
    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    #@2
    return-wide v0
.end method

.method public isCapped()Z
    .locals 1

    #@0
    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    #@2
    return v0
.end method

.method public isSymmetric()Z
    .locals 1

    #@0
    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    #@2
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    #@4
    .line 81
    const-string/jumbo v0, "HSWanMetrics{mStatus=%s, mSymmetric=%s, mCapped=%s, mDlSpeed=%d, mUlSpeed=%d, mDlLoad=%f, mUlLoad=%f, mLMD=%d}"

    #@7
    const/16 v1, 0x8

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    .line 83
    iget-object v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mStatus:Lcom/android/server/wifi/anqp/HSWanMetricsElement$LinkStatus;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v1, v3

    #@10
    iget-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mSymmetric:Z

    #@12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v2

    #@16
    const/4 v3, 0x1

    #@17
    aput-object v2, v1, v3

    #@19
    iget-boolean v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mCapped:Z

    #@1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1e
    move-result-object v2

    #@1f
    const/4 v3, 0x2

    #@20
    aput-object v2, v1, v3

    #@22
    .line 84
    iget-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlSpeed:J

    #@24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v2

    #@28
    const/4 v3, 0x3

    #@29
    aput-object v2, v1, v3

    #@2b
    iget-wide v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlSpeed:J

    #@2d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v2

    #@31
    const/4 v3, 0x4

    #@32
    aput-object v2, v1, v3

    #@34
    .line 85
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mDlLoad:I

    #@36
    int-to-double v2, v2

    #@37
    mul-double/2addr v2, v4

    #@38
    div-double/2addr v2, v6

    #@39
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3c
    move-result-object v2

    #@3d
    const/4 v3, 0x5

    #@3e
    aput-object v2, v1, v3

    #@40
    .line 86
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mUlLoad:I

    #@42
    int-to-double v2, v2

    #@43
    mul-double/2addr v2, v4

    #@44
    div-double/2addr v2, v6

    #@45
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@48
    move-result-object v2

    #@49
    const/4 v3, 0x6

    #@4a
    aput-object v2, v1, v3

    #@4c
    .line 87
    iget v2, p0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;->mLMD:I

    #@4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51
    move-result-object v2

    #@52
    const/4 v3, 0x7

    #@53
    aput-object v2, v1, v3

    #@55
    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0
.end method
