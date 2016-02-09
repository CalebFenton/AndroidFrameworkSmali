.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$Entry;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 638
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 58
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "bucketDuration"    # J

    #@0
    .prologue
    .line 97
    const/16 v0, 0xa

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    #@6
    .line 96
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I

    #@0
    .prologue
    .line 101
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    #@4
    .line 100
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 3
    .param p1, "bucketDuration"    # J
    .param p3, "initialSize"    # I
    .param p4, "fields"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 105
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@6
    .line 106
    new-array v0, p3, [J

    #@8
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@a
    .line 107
    and-int/lit8 v0, p4, 0x1

    #@c
    if-eqz v0, :cond_0

    #@e
    new-array v0, p3, [J

    #@10
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@12
    .line 108
    :cond_0
    and-int/lit8 v0, p4, 0x2

    #@14
    if-eqz v0, :cond_1

    #@16
    new-array v0, p3, [J

    #@18
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@1a
    .line 109
    :cond_1
    and-int/lit8 v0, p4, 0x4

    #@1c
    if-eqz v0, :cond_2

    #@1e
    new-array v0, p3, [J

    #@20
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@22
    .line 110
    :cond_2
    and-int/lit8 v0, p4, 0x8

    #@24
    if-eqz v0, :cond_3

    #@26
    new-array v0, p3, [J

    #@28
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@2a
    .line 111
    :cond_3
    and-int/lit8 v0, p4, 0x10

    #@2c
    if-eqz v0, :cond_4

    #@2e
    new-array v0, p3, [J

    #@30
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@32
    .line 112
    :cond_4
    and-int/lit8 v0, p4, 0x20

    #@34
    if-eqz v0, :cond_5

    #@36
    new-array v0, p3, [J

    #@38
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@3a
    .line 113
    :cond_5
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@3c
    .line 114
    const-wide/16 v0, 0x0

    #@3e
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@40
    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 2
    .param p1, "existing"    # Landroid/net/NetworkStatsHistory;
    .param p2, "bucketDuration"    # J

    #@0
    .prologue
    .line 118
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    #@7
    .line 119
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    #@a
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@9
    .line 124
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@f
    .line 125
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@15
    .line 126
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@1b
    .line 127
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@21
    .line 128
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@27
    .line 129
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@2d
    .line 130
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@33
    .line 131
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@35
    array-length v0, v0

    #@36
    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@38
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3b
    move-result-wide v0

    #@3c
    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@3e
    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 149
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    #@6
    move-result v0

    #@7
    .line 150
    .local v0, "version":I
    packed-switch v0, :pswitch_data_0

    #@a
    .line 179
    new-instance v1, Ljava/net/ProtocolException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "unexpected version: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 152
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    #@27
    move-result-wide v2

    #@28
    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@2a
    .line 153
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@30
    .line 154
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@36
    .line 155
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@38
    array-length v1, v1

    #@39
    new-array v1, v1, [J

    #@3b
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@3d
    .line 156
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    #@40
    move-result-object v1

    #@41
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@43
    .line 157
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@45
    array-length v1, v1

    #@46
    new-array v1, v1, [J

    #@48
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@4a
    .line 158
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@4c
    array-length v1, v1

    #@4d
    new-array v1, v1, [J

    #@4f
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@51
    .line 159
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@53
    array-length v1, v1

    #@54
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@56
    .line 160
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@58
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    #@5b
    move-result-wide v2

    #@5c
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@5e
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    #@61
    move-result-wide v4

    #@62
    add-long/2addr v2, v4

    #@63
    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@65
    .line 183
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@67
    array-length v1, v1

    #@68
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@6a
    if-ne v1, v2, :cond_0

    #@6c
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@6e
    array-length v1, v1

    #@6f
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@71
    if-eq v1, v2, :cond_2

    #@73
    .line 186
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    #@75
    const-string/jumbo v2, "Mismatched history lengths"

    #@78
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v1

    #@7c
    .line 165
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    #@7f
    move-result-wide v2

    #@80
    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@82
    .line 166
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@85
    move-result-object v1

    #@86
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@88
    .line 167
    const/4 v1, 0x3

    #@89
    if-lt v0, v1, :cond_1

    #@8b
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@8e
    move-result-object v1

    #@8f
    :goto_1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@91
    .line 169
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@94
    move-result-object v1

    #@95
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@97
    .line 170
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@9a
    move-result-object v1

    #@9b
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@9d
    .line 171
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@a0
    move-result-object v1

    #@a1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@a3
    .line 172
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@a6
    move-result-object v1

    #@a7
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@a9
    .line 173
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    #@ac
    move-result-object v1

    #@ad
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@af
    .line 174
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@b1
    array-length v1, v1

    #@b2
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@b4
    .line 175
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@b6
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    #@b9
    move-result-wide v2

    #@ba
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@bc
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    #@bf
    move-result-wide v4

    #@c0
    add-long/2addr v2, v4

    #@c1
    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@c3
    goto :goto_0

    #@c4
    .line 168
    :cond_1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@c6
    array-length v1, v1

    #@c7
    new-array v1, v1, [J

    #@c9
    goto :goto_1

    #@ca
    .line 184
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@cc
    array-length v1, v1

    #@cd
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@cf
    if-ne v1, v2, :cond_0

    #@d1
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@d3
    array-length v1, v1

    #@d4
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@d6
    if-ne v1, v2, :cond_0

    #@d8
    .line 185
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@da
    array-length v1, v1

    #@db
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@dd
    if-ne v1, v2, :cond_0

    #@df
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@e1
    array-length v1, v1

    #@e2
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@e4
    if-ne v1, v2, :cond_0

    #@e6
    .line 148
    return-void

    #@e7
    .line 150
    nop

    #@e8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 659
    if-eqz p0, :cond_0

    #@2
    aget-wide v0, p0, p1

    #@4
    add-long/2addr v0, p2

    #@5
    aput-wide v0, p0, p1

    #@7
    .line 658
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 386
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@3
    rem-long v4, p1, v4

    #@5
    sub-long/2addr p1, v4

    #@6
    .line 387
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@8
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@a
    rem-long v6, p3, v6

    #@c
    sub-long/2addr v4, v6

    #@d
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@f
    rem-long/2addr v4, v6

    #@10
    add-long/2addr p3, v4

    #@11
    .line 389
    move-wide v2, p1

    #@12
    .local v2, "now":J
    :goto_0
    cmp-long v1, v2, p3

    #@14
    if-gez v1, :cond_1

    #@16
    .line 391
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@18
    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@1a
    invoke-static {v1, v8, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    #@1d
    move-result v0

    #@1e
    .line 392
    .local v0, "index":I
    if-gez v0, :cond_0

    #@20
    .line 394
    not-int v1, v0

    #@21
    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    #@24
    .line 389
    :cond_0
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@26
    add-long/2addr v2, v4

    #@27
    goto :goto_0

    #@28
    .line 384
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 651
    if-eqz p0, :cond_0

    #@2
    aget-wide p2, p0, p1

    #@4
    .end local p2    # "value":J
    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "start"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 404
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@4
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@6
    array-length v4, v4

    #@7
    if-lt v3, v4, :cond_5

    #@9
    .line 405
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@b
    array-length v3, v3

    #@c
    const/16 v4, 0xa

    #@e
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v3

    #@12
    mul-int/lit8 v3, v3, 0x3

    #@14
    div-int/lit8 v2, v3, 0x2

    #@16
    .line 406
    .local v2, "newLength":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@18
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@1b
    move-result-object v3

    #@1c
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@1e
    .line 407
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@20
    if-eqz v3, :cond_0

    #@22
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@24
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@27
    move-result-object v3

    #@28
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@2a
    .line 408
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@2c
    if-eqz v3, :cond_1

    #@2e
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@30
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@33
    move-result-object v3

    #@34
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@36
    .line 409
    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@38
    if-eqz v3, :cond_2

    #@3a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@3c
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@3f
    move-result-object v3

    #@40
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@42
    .line 410
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@44
    if-eqz v3, :cond_3

    #@46
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@48
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@4b
    move-result-object v3

    #@4c
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@4e
    .line 411
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@50
    if-eqz v3, :cond_4

    #@52
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@54
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@57
    move-result-object v3

    #@58
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@5a
    .line 412
    :cond_4
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@5c
    if-eqz v3, :cond_5

    #@5e
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@60
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    #@63
    move-result-object v3

    #@64
    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@66
    .line 416
    .end local v2    # "newLength":I
    :cond_5
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@68
    if-ge p1, v3, :cond_b

    #@6a
    .line 417
    add-int/lit8 v0, p1, 0x1

    #@6c
    .line 418
    .local v0, "dstPos":I
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@6e
    sub-int v1, v3, p1

    #@70
    .line 420
    .local v1, "length":I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@72
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@74
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@77
    .line 421
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@79
    if-eqz v3, :cond_6

    #@7b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@7d
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@7f
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@82
    .line 422
    :cond_6
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@84
    if-eqz v3, :cond_7

    #@86
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@88
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@8a
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@8d
    .line 423
    :cond_7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@8f
    if-eqz v3, :cond_8

    #@91
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@93
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@95
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@98
    .line 424
    :cond_8
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@9a
    if-eqz v3, :cond_9

    #@9c
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@9e
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@a0
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@a3
    .line 425
    :cond_9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@a5
    if-eqz v3, :cond_a

    #@a7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@a9
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@ab
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@ae
    .line 426
    :cond_a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@b0
    if-eqz v3, :cond_b

    #@b2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@b4
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@b6
    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@b9
    .line 429
    .end local v0    # "dstPos":I
    .end local v1    # "length":I
    :cond_b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@bb
    aput-wide p2, v3, p1

    #@bd
    .line 430
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@bf
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@c2
    .line 431
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@c4
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@c7
    .line 432
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@c9
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@cc
    .line 433
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@ce
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@d1
    .line 434
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@d3
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@d6
    .line 435
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@d8
    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    #@db
    .line 436
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@dd
    add-int/lit8 v3, v3, 0x1

    #@df
    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@e1
    .line 402
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 5
    .param p0, "r"    # Ljava/util/Random;
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    .line 575
    long-to-float v0, p1

    #@1
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    #@4
    move-result v1

    #@5
    sub-long v2, p3, p1

    #@7
    long-to-float v2, v2

    #@8
    mul-float/2addr v1, v2

    #@9
    add-float/2addr v0, v1

    #@a
    float-to-long v0, v0

    #@b
    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 655
    if-eqz p0, :cond_0

    #@2
    aput-wide p2, p0, p1

    #@4
    .line 654
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 204
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "fullHistory"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const/4 v4, 0x0

    #@3
    .line 592
    const-string/jumbo v2, "NetworkStatsHistory: bucketDuration="

    #@6
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 593
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@b
    div-long/2addr v2, v6

    #@c
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    #@f
    .line 594
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@12
    .line 596
    if-eqz p2, :cond_6

    #@14
    const/4 v1, 0x0

    #@15
    .line 597
    .local v1, "start":I
    :goto_0
    if-lez v1, :cond_0

    #@17
    .line 598
    const-string/jumbo v2, "(omitting "

    #@1a
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@1d
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    #@20
    const-string/jumbo v2, " buckets)"

    #@23
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@26
    .line 601
    :cond_0
    move v0, v1

    #@27
    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@29
    if-ge v0, v2, :cond_7

    #@2b
    .line 602
    const-string/jumbo v2, "st="

    #@2e
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@33
    aget-wide v2, v2, v0

    #@35
    div-long/2addr v2, v6

    #@36
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@39
    .line 603
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@3b
    if-eqz v2, :cond_1

    #@3d
    const-string/jumbo v2, " rb="

    #@40
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@45
    aget-wide v2, v2, v0

    #@47
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@4a
    .line 604
    :cond_1
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@4c
    if-eqz v2, :cond_2

    #@4e
    const-string/jumbo v2, " rp="

    #@51
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@54
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@56
    aget-wide v2, v2, v0

    #@58
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@5b
    .line 605
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@5d
    if-eqz v2, :cond_3

    #@5f
    const-string/jumbo v2, " tb="

    #@62
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@67
    aget-wide v2, v2, v0

    #@69
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@6c
    .line 606
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@6e
    if-eqz v2, :cond_4

    #@70
    const-string/jumbo v2, " tp="

    #@73
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@76
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@78
    aget-wide v2, v2, v0

    #@7a
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@7d
    .line 607
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@7f
    if-eqz v2, :cond_5

    #@81
    const-string/jumbo v2, " op="

    #@84
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@87
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@89
    aget-wide v2, v2, v0

    #@8b
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    #@8e
    .line 608
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@91
    .line 601
    add-int/lit8 v0, v0, 0x1

    #@93
    goto :goto_1

    #@94
    .line 596
    .end local v0    # "i":I
    .end local v1    # "start":I
    :cond_6
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@96
    add-int/lit8 v2, v2, -0x20

    #@98
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@9b
    move-result v1

    #@9c
    .restart local v1    # "start":I
    goto/16 :goto_0

    #@9e
    .line 611
    .restart local v0    # "i":I
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@a1
    .line 591
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const/16 v4, 0x2c

    #@4
    .line 615
    const-string/jumbo v1, "d,"

    #@7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 616
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@c
    div-long/2addr v2, v6

    #@d
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@10
    .line 617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@13
    .line 619
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@16
    if-ge v0, v1, :cond_5

    #@18
    .line 620
    const-string/jumbo v1, "b,"

    #@1b
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 621
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@20
    aget-wide v2, v1, v0

    #@22
    div-long/2addr v2, v6

    #@23
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@26
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@29
    .line 622
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@2b
    if-eqz v1, :cond_0

    #@2d
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@2f
    aget-wide v2, v1, v0

    #@31
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@34
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@37
    .line 623
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@39
    if-eqz v1, :cond_1

    #@3b
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@3d
    aget-wide v2, v1, v0

    #@3f
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@42
    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@45
    .line 624
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@47
    if-eqz v1, :cond_2

    #@49
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@4b
    aget-wide v2, v1, v0

    #@4d
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@50
    :goto_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@53
    .line 625
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@55
    if-eqz v1, :cond_3

    #@57
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@59
    aget-wide v2, v1, v0

    #@5b
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@5e
    :goto_4
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    #@61
    .line 626
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@63
    if-eqz v1, :cond_4

    #@65
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@67
    aget-wide v2, v1, v0

    #@69
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    #@6c
    .line 627
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@6f
    .line 619
    add-int/lit8 v0, v0, 0x1

    #@71
    goto :goto_0

    #@72
    .line 622
    :cond_0
    const-string/jumbo v1, "*"

    #@75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@78
    goto :goto_1

    #@79
    .line 623
    :cond_1
    const-string/jumbo v1, "*"

    #@7c
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7f
    goto :goto_2

    #@80
    .line 624
    :cond_2
    const-string/jumbo v1, "*"

    #@83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    goto :goto_3

    #@87
    .line 625
    :cond_3
    const-string/jumbo v1, "*"

    #@8a
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    goto :goto_4

    #@8e
    .line 626
    :cond_4
    const-string/jumbo v1, "*"

    #@91
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@94
    goto :goto_5

    #@95
    .line 614
    :cond_5
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 5
    .param p1, "newBucketDuration"    # J

    #@0
    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    #@8
    move-result-wide v2

    #@9
    mul-long/2addr v0, v2

    #@a
    div-long/2addr v0, p1

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method public generateRandom(JJJ)V
    .locals 19
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "bytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 530
    new-instance v18, Ljava/util/Random;

    #@2
    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    #@5
    .line 532
    .local v18, "r":Ljava/util/Random;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextFloat()F

    #@8
    move-result v2

    #@9
    .line 533
    .local v2, "fractionRx":F
    move-wide/from16 v0, p5

    #@b
    long-to-float v3, v0

    #@c
    mul-float/2addr v3, v2

    #@d
    float-to-long v8, v3

    #@e
    .line 534
    .local v8, "rxBytes":J
    move-wide/from16 v0, p5

    #@10
    long-to-float v3, v0

    #@11
    const/high16 v4, 0x3f800000    # 1.0f

    #@13
    sub-float/2addr v4, v2

    #@14
    mul-float/2addr v3, v4

    #@15
    float-to-long v12, v3

    #@16
    .line 536
    .local v12, "txBytes":J
    const-wide/16 v4, 0x400

    #@18
    div-long v10, v8, v4

    #@1a
    .line 537
    .local v10, "rxPackets":J
    const-wide/16 v4, 0x400

    #@1c
    div-long v14, v12, v4

    #@1e
    .line 538
    .local v14, "txPackets":J
    const-wide/16 v4, 0x800

    #@20
    div-long v16, v8, v4

    #@22
    .local v16, "operations":J
    move-object/from16 v3, p0

    #@24
    move-wide/from16 v4, p1

    #@26
    move-wide/from16 v6, p3

    #@28
    .line 540
    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    #@2b
    .line 529
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 23
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J
    .param p15, "r"    # Ljava/util/Random;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 549
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    #@3
    .line 551
    new-instance v7, Landroid/net/NetworkStats$Entry;

    #@5
    .line 552
    sget-object v8, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@7
    const/4 v9, -0x1

    #@8
    const/4 v10, 0x0

    #@9
    const/4 v11, 0x0

    #@a
    const-wide/16 v12, 0x0

    #@c
    const-wide/16 v14, 0x0

    #@e
    const-wide/16 v16, 0x0

    #@10
    const-wide/16 v18, 0x0

    #@12
    const-wide/16 v20, 0x0

    #@14
    .line 551
    invoke-direct/range {v7 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@17
    .line 553
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    const-wide/16 v8, 0x400

    #@19
    cmp-long v6, p5, v8

    #@1b
    if-gtz v6, :cond_0

    #@1d
    const-wide/16 v8, 0x80

    #@1f
    cmp-long v6, p7, v8

    #@21
    if-lez v6, :cond_1

    #@23
    .line 555
    :cond_0
    move-object/from16 v0, p15

    #@25
    move-wide/from16 v1, p1

    #@27
    move-wide/from16 v3, p3

    #@29
    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@2c
    move-result-wide v10

    #@2d
    .line 556
    .local v10, "curStart":J
    const-wide/16 v8, 0x0

    #@2f
    sub-long v14, p3, v10

    #@31
    const-wide/16 v16, 0x2

    #@33
    div-long v14, v14, v16

    #@35
    move-object/from16 v0, p15

    #@37
    invoke-static {v0, v8, v9, v14, v15}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@3a
    move-result-wide v8

    #@3b
    add-long v12, v10, v8

    #@3d
    .line 558
    .local v12, "curEnd":J
    const-wide/16 v8, 0x0

    #@3f
    move-object/from16 v0, p15

    #@41
    move-wide/from16 v1, p5

    #@43
    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@46
    move-result-wide v8

    #@47
    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@49
    .line 559
    const-wide/16 v8, 0x0

    #@4b
    move-object/from16 v0, p15

    #@4d
    move-wide/from16 v1, p7

    #@4f
    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@52
    move-result-wide v8

    #@53
    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@55
    .line 560
    const-wide/16 v8, 0x0

    #@57
    move-object/from16 v0, p15

    #@59
    move-wide/from16 v1, p9

    #@5b
    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@5e
    move-result-wide v8

    #@5f
    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@61
    .line 561
    const-wide/16 v8, 0x0

    #@63
    move-object/from16 v0, p15

    #@65
    move-wide/from16 v1, p11

    #@67
    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@6a
    move-result-wide v8

    #@6b
    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@6d
    .line 562
    const-wide/16 v8, 0x0

    #@6f
    move-object/from16 v0, p15

    #@71
    move-wide/from16 v1, p13

    #@73
    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    #@76
    move-result-wide v8

    #@77
    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    #@79
    .line 564
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7b
    sub-long p5, p5, v8

    #@7d
    .line 565
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@7f
    sub-long p7, p7, v8

    #@81
    .line 566
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@83
    sub-long p9, p9, v8

    #@85
    .line 567
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@87
    sub-long p11, p11, v8

    #@89
    .line 568
    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    #@8b
    sub-long p13, p13, v8

    #@8d
    move-object/from16 v9, p0

    #@8f
    move-object v14, v7

    #@90
    .line 570
    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    #@93
    goto :goto_0

    #@94
    .line 553
    .end local v10    # "curStart":J
    .end local v12    # "curEnd":J
    :cond_1
    const-wide/16 v8, 0x400

    #@96
    cmp-long v6, p9, v8

    #@98
    if-gtz v6, :cond_0

    #@9a
    const-wide/16 v8, 0x80

    #@9c
    cmp-long v6, p11, v8

    #@9e
    if-gtz v6, :cond_0

    #@a0
    .line 554
    const-wide/16 v8, 0x20

    #@a2
    cmp-long v6, p13, v8

    #@a4
    if-gtz v6, :cond_0

    #@a6
    .line 548
    return-void
.end method

.method public getBucketDuration()J
    .locals 2

    #@0
    .prologue
    .line 212
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@2
    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    #@0
    .prologue
    .line 224
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 225
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@6
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    aget-wide v0, v0, v1

    #@c
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@e
    add-long/2addr v0, v2

    #@f
    return-wide v0

    #@10
    .line 227
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    #@12
    return-wide v0
.end method

.method public getIndexAfter(J)I
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 257
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@3
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@5
    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    #@8
    move-result v0

    #@9
    .line 258
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    .line 259
    not-int v0, v0

    #@c
    .line 263
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 243
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@3
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@5
    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    #@8
    move-result v0

    #@9
    .line 244
    .local v0, "index":I
    if-gez v0, :cond_0

    #@b
    .line 245
    not-int v1, v0

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .line 249
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 247
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 216
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 217
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@7
    aget-wide v0, v0, v1

    #@9
    return-wide v0

    #@a
    .line 219
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@f
    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    #@0
    .prologue
    .line 235
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@2
    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 6
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 270
    if-eqz p2, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 271
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@7
    aget-wide v2, v1, p1

    #@9
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@b
    .line 272
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@d
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    #@f
    .line 273
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@11
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    #@17
    .line 274
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@19
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@1c
    move-result-wide v2

    #@1d
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@1f
    .line 275
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@21
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@24
    move-result-wide v2

    #@25
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@27
    .line 276
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@29
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@2c
    move-result-wide v2

    #@2d
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@2f
    .line 277
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@31
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@34
    move-result-wide v2

    #@35
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@37
    .line 278
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@39
    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@3c
    move-result-wide v2

    #@3d
    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    #@3f
    .line 279
    return-object v0

    #@40
    .line 270
    .end local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    #@42
    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    #@45
    .restart local v0    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 25
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "now"    # J
    .param p7, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    #@0
    .prologue
    .line 482
    if-eqz p7, :cond_1

    #@2
    move-object/from16 v5, p7

    #@4
    .line 483
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v18, p3, p1

    #@6
    move-wide/from16 v0, v18

    #@8
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    #@a
    .line 484
    move-wide/from16 v0, p1

    #@c
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    #@e
    .line 485
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@12
    move-object/from16 v18, v0

    #@14
    if-eqz v18, :cond_2

    #@16
    const-wide/16 v18, 0x0

    #@18
    :goto_1
    move-wide/from16 v0, v18

    #@1a
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    #@1c
    .line 486
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@20
    move-object/from16 v18, v0

    #@22
    if-eqz v18, :cond_3

    #@24
    const-wide/16 v18, 0x0

    #@26
    :goto_2
    move-wide/from16 v0, v18

    #@28
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@2a
    .line 487
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@2e
    move-object/from16 v18, v0

    #@30
    if-eqz v18, :cond_4

    #@32
    const-wide/16 v18, 0x0

    #@34
    :goto_3
    move-wide/from16 v0, v18

    #@36
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@38
    .line 488
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@3c
    move-object/from16 v18, v0

    #@3e
    if-eqz v18, :cond_5

    #@40
    const-wide/16 v18, 0x0

    #@42
    :goto_4
    move-wide/from16 v0, v18

    #@44
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@46
    .line 489
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@4a
    move-object/from16 v18, v0

    #@4c
    if-eqz v18, :cond_6

    #@4e
    const-wide/16 v18, 0x0

    #@50
    :goto_5
    move-wide/from16 v0, v18

    #@52
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@54
    .line 490
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@58
    move-object/from16 v18, v0

    #@5a
    if-eqz v18, :cond_7

    #@5c
    const-wide/16 v18, 0x0

    #@5e
    :goto_6
    move-wide/from16 v0, v18

    #@60
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    #@62
    .line 492
    move-object/from16 v0, p0

    #@64
    move-wide/from16 v1, p3

    #@66
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    #@69
    move-result v11

    #@6a
    .line 493
    .local v11, "startIndex":I
    move v10, v11

    #@6b
    .local v10, "i":I
    :goto_7
    if-ltz v10, :cond_0

    #@6d
    .line 494
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@71
    move-object/from16 v18, v0

    #@73
    aget-wide v8, v18, v10

    #@75
    .line 495
    .local v8, "curStart":J
    move-object/from16 v0, p0

    #@77
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@79
    move-wide/from16 v18, v0

    #@7b
    add-long v6, v8, v18

    #@7d
    .line 498
    .local v6, "curEnd":J
    cmp-long v18, v6, p1

    #@7f
    if-gtz v18, :cond_8

    #@81
    .line 522
    .end local v6    # "curEnd":J
    .end local v8    # "curStart":J
    :cond_0
    return-object v5

    #@82
    .line 482
    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v10    # "i":I
    .end local v11    # "startIndex":I
    :cond_1
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    #@84
    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    #@87
    .restart local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto/16 :goto_0

    #@89
    .line 485
    :cond_2
    const-wide/16 v18, -0x1

    #@8b
    goto :goto_1

    #@8c
    .line 486
    :cond_3
    const-wide/16 v18, -0x1

    #@8e
    goto :goto_2

    #@8f
    .line 487
    :cond_4
    const-wide/16 v18, -0x1

    #@91
    goto :goto_3

    #@92
    .line 488
    :cond_5
    const-wide/16 v18, -0x1

    #@94
    goto :goto_4

    #@95
    .line 489
    :cond_6
    const-wide/16 v18, -0x1

    #@97
    goto :goto_5

    #@98
    .line 490
    :cond_7
    const-wide/16 v18, -0x1

    #@9a
    goto :goto_6

    #@9b
    .line 500
    .restart local v6    # "curEnd":J
    .restart local v8    # "curStart":J
    .restart local v10    # "i":I
    .restart local v11    # "startIndex":I
    :cond_8
    cmp-long v18, v8, p3

    #@9d
    if-ltz v18, :cond_a

    #@9f
    .line 493
    :cond_9
    :goto_8
    add-int/lit8 v10, v10, -0x1

    #@a1
    goto :goto_7

    #@a2
    .line 503
    :cond_a
    cmp-long v18, v8, p5

    #@a4
    if-gez v18, :cond_10

    #@a6
    cmp-long v18, v6, p5

    #@a8
    if-lez v18, :cond_10

    #@aa
    const/4 v4, 0x1

    #@ab
    .line 505
    .local v4, "activeBucket":Z
    :goto_9
    if-eqz v4, :cond_11

    #@ad
    .line 506
    move-object/from16 v0, p0

    #@af
    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@b1
    .line 512
    .local v12, "overlap":J
    :goto_a
    const-wide/16 v18, 0x0

    #@b3
    cmp-long v18, v12, v18

    #@b5
    if-lez v18, :cond_9

    #@b7
    .line 515
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@bb
    move-object/from16 v18, v0

    #@bd
    if-eqz v18, :cond_b

    #@bf
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    #@c1
    move-wide/from16 v18, v0

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@c7
    move-object/from16 v20, v0

    #@c9
    aget-wide v20, v20, v10

    #@cb
    mul-long v20, v20, v12

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@d1
    move-wide/from16 v22, v0

    #@d3
    div-long v20, v20, v22

    #@d5
    add-long v18, v18, v20

    #@d7
    move-wide/from16 v0, v18

    #@d9
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    #@db
    .line 516
    :cond_b
    move-object/from16 v0, p0

    #@dd
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@df
    move-object/from16 v18, v0

    #@e1
    if-eqz v18, :cond_c

    #@e3
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@e5
    move-wide/from16 v18, v0

    #@e7
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@eb
    move-object/from16 v20, v0

    #@ed
    aget-wide v20, v20, v10

    #@ef
    mul-long v20, v20, v12

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@f5
    move-wide/from16 v22, v0

    #@f7
    div-long v20, v20, v22

    #@f9
    add-long v18, v18, v20

    #@fb
    move-wide/from16 v0, v18

    #@fd
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    #@ff
    .line 517
    :cond_c
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@103
    move-object/from16 v18, v0

    #@105
    if-eqz v18, :cond_d

    #@107
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@109
    move-wide/from16 v18, v0

    #@10b
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@10f
    move-object/from16 v20, v0

    #@111
    aget-wide v20, v20, v10

    #@113
    mul-long v20, v20, v12

    #@115
    move-object/from16 v0, p0

    #@117
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@119
    move-wide/from16 v22, v0

    #@11b
    div-long v20, v20, v22

    #@11d
    add-long v18, v18, v20

    #@11f
    move-wide/from16 v0, v18

    #@121
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    #@123
    .line 518
    :cond_d
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@127
    move-object/from16 v18, v0

    #@129
    if-eqz v18, :cond_e

    #@12b
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@12d
    move-wide/from16 v18, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@133
    move-object/from16 v20, v0

    #@135
    aget-wide v20, v20, v10

    #@137
    mul-long v20, v20, v12

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@13d
    move-wide/from16 v22, v0

    #@13f
    div-long v20, v20, v22

    #@141
    add-long v18, v18, v20

    #@143
    move-wide/from16 v0, v18

    #@145
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    #@147
    .line 519
    :cond_e
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@14b
    move-object/from16 v18, v0

    #@14d
    if-eqz v18, :cond_f

    #@14f
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@151
    move-wide/from16 v18, v0

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@157
    move-object/from16 v20, v0

    #@159
    aget-wide v20, v20, v10

    #@15b
    mul-long v20, v20, v12

    #@15d
    move-object/from16 v0, p0

    #@15f
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@161
    move-wide/from16 v22, v0

    #@163
    div-long v20, v20, v22

    #@165
    add-long v18, v18, v20

    #@167
    move-wide/from16 v0, v18

    #@169
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    #@16b
    .line 520
    :cond_f
    move-object/from16 v0, p0

    #@16d
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@16f
    move-object/from16 v18, v0

    #@171
    if-eqz v18, :cond_9

    #@173
    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    #@175
    move-wide/from16 v18, v0

    #@177
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@17b
    move-object/from16 v20, v0

    #@17d
    aget-wide v20, v20, v10

    #@17f
    mul-long v20, v20, v12

    #@181
    move-object/from16 v0, p0

    #@183
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@185
    move-wide/from16 v22, v0

    #@187
    div-long v20, v20, v22

    #@189
    add-long v18, v18, v20

    #@18b
    move-wide/from16 v0, v18

    #@18d
    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    #@18f
    goto/16 :goto_8

    #@191
    .line 503
    .end local v4    # "activeBucket":Z
    .end local v12    # "overlap":J
    :cond_10
    const/4 v4, 0x0

    #@192
    .restart local v4    # "activeBucket":Z
    goto/16 :goto_9

    #@194
    .line 508
    :cond_11
    cmp-long v18, v6, p3

    #@196
    if-gez v18, :cond_12

    #@198
    move-wide v14, v6

    #@199
    .line 509
    .local v14, "overlapEnd":J
    :goto_b
    cmp-long v18, v8, p1

    #@19b
    if-lez v18, :cond_13

    #@19d
    move-wide/from16 v16, v8

    #@19f
    .line 510
    .local v16, "overlapStart":J
    :goto_c
    sub-long v12, v14, v16

    #@1a1
    .restart local v12    # "overlap":J
    goto/16 :goto_a

    #@1a3
    .line 508
    .end local v12    # "overlap":J
    .end local v14    # "overlapEnd":J
    .end local v16    # "overlapStart":J
    :cond_12
    move-wide/from16 v14, p3

    #@1a5
    .restart local v14    # "overlapEnd":J
    goto :goto_b

    #@1a6
    .line 509
    :cond_13
    move-wide/from16 v16, p1

    #@1a8
    .restart local v16    # "overlapStart":J
    goto :goto_c
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "recycle"    # Landroid/net/NetworkStatsHistory$Entry;

    #@0
    .prologue
    .line 474
    const-wide v6, 0x7fffffffffffffffL

    #@5
    move-object v1, p0

    #@6
    move-wide v2, p1

    #@7
    move-wide v4, p3

    #@8
    move-object v8, p5

    #@9
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public intersects(JJ)Z
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 582
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    #@4
    move-result-wide v2

    #@5
    .line 583
    .local v2, "dataStart":J
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    #@8
    move-result-wide v0

    #@9
    .line 584
    .local v0, "dataEnd":J
    cmp-long v4, p1, v2

    #@b
    if-ltz v4, :cond_0

    #@d
    cmp-long v4, p1, v0

    #@f
    if-gtz v4, :cond_0

    #@11
    return v5

    #@12
    .line 585
    :cond_0
    cmp-long v4, p3, v2

    #@14
    if-ltz v4, :cond_1

    #@16
    cmp-long v4, p3, v0

    #@18
    if-gtz v4, :cond_1

    #@1a
    return v5

    #@1b
    .line 586
    :cond_1
    cmp-long v4, v2, p1

    #@1d
    if-ltz v4, :cond_2

    #@1f
    cmp-long v4, v2, p3

    #@21
    if-gtz v4, :cond_2

    #@23
    return v5

    #@24
    .line 587
    :cond_2
    cmp-long v4, v0, p1

    #@26
    if-ltz v4, :cond_3

    #@28
    cmp-long v4, v0, p3

    #@2a
    if-gtz v4, :cond_3

    #@2c
    return v5

    #@2d
    .line 588
    :cond_3
    const/4 v4, 0x0

    #@2e
    return v4
.end method

.method public recordData(JJJJ)V
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "rxBytes"    # J
    .param p7, "txBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 288
    new-instance v1, Landroid/net/NetworkStats$Entry;

    #@2
    .line 289
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@4
    const/4 v3, -0x1

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x0

    #@7
    const-wide/16 v8, 0x0

    #@9
    const-wide/16 v12, 0x0

    #@b
    const-wide/16 v14, 0x0

    #@d
    move-wide/from16 v6, p5

    #@f
    move-wide/from16 v10, p7

    #@11
    .line 288
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@14
    move-object/from16 v3, p0

    #@16
    move-wide/from16 v4, p1

    #@18
    move-wide/from16 v6, p3

    #@1a
    move-object v8, v1

    #@1b
    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    #@1e
    .line 287
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 41
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "entry"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 297
    move-object/from16 v0, p5

    #@2
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@4
    move-wide/from16 v26, v0

    #@6
    .line 298
    .local v26, "rxBytes":J
    move-object/from16 v0, p5

    #@8
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@a
    move-wide/from16 v28, v0

    #@c
    .line 299
    .local v28, "rxPackets":J
    move-object/from16 v0, p5

    #@e
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@10
    move-wide/from16 v30, v0

    #@12
    .line 300
    .local v30, "txBytes":J
    move-object/from16 v0, p5

    #@14
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@16
    move-wide/from16 v32, v0

    #@18
    .line 301
    .local v32, "txPackets":J
    move-object/from16 v0, p5

    #@1a
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1c
    move-wide/from16 v22, v0

    #@1e
    .line 303
    .local v22, "operations":J
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    #@21
    move-result v34

    #@22
    if-eqz v34, :cond_0

    #@24
    .line 304
    new-instance v34, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v35, "tried recording negative data"

    #@29
    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v34

    #@2d
    .line 306
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    #@30
    move-result v34

    #@31
    if-eqz v34, :cond_1

    #@33
    .line 307
    return-void

    #@34
    .line 311
    :cond_1
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    #@37
    .line 314
    sub-long v8, p3, p1

    #@39
    .line 315
    .local v8, "duration":J
    move-object/from16 v0, p0

    #@3b
    move-wide/from16 v1, p3

    #@3d
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    #@40
    move-result v21

    #@41
    .line 316
    .local v21, "startIndex":I
    move/from16 v20, v21

    #@43
    .local v20, "i":I
    :goto_0
    if-ltz v20, :cond_2

    #@45
    .line 317
    move-object/from16 v0, p0

    #@47
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@49
    move-object/from16 v34, v0

    #@4b
    aget-wide v6, v34, v20

    #@4d
    .line 318
    .local v6, "curStart":J
    move-object/from16 v0, p0

    #@4f
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@51
    move-wide/from16 v34, v0

    #@53
    add-long v4, v6, v34

    #@55
    .line 321
    .local v4, "curEnd":J
    cmp-long v34, v4, p1

    #@57
    if-gez v34, :cond_3

    #@59
    .line 345
    .end local v4    # "curEnd":J
    .end local v6    # "curStart":J
    :cond_2
    move-object/from16 v0, p0

    #@5b
    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@5d
    move-wide/from16 v34, v0

    #@5f
    move-object/from16 v0, p5

    #@61
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@63
    move-wide/from16 v36, v0

    #@65
    move-object/from16 v0, p5

    #@67
    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@69
    move-wide/from16 v38, v0

    #@6b
    add-long v36, v36, v38

    #@6d
    add-long v34, v34, v36

    #@6f
    move-wide/from16 v0, v34

    #@71
    move-object/from16 v2, p0

    #@73
    iput-wide v0, v2, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@75
    .line 296
    return-void

    #@76
    .line 323
    .restart local v4    # "curEnd":J
    .restart local v6    # "curStart":J
    :cond_3
    cmp-long v34, v6, p3

    #@78
    if-lez v34, :cond_5

    #@7a
    .line 316
    :cond_4
    :goto_1
    add-int/lit8 v20, v20, -0x1

    #@7c
    goto :goto_0

    #@7d
    .line 325
    :cond_5
    move-wide/from16 v0, p3

    #@7f
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@82
    move-result-wide v34

    #@83
    move-wide/from16 v0, p1

    #@85
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@88
    move-result-wide v36

    #@89
    sub-long v24, v34, v36

    #@8b
    .line 326
    .local v24, "overlap":J
    const-wide/16 v34, 0x0

    #@8d
    cmp-long v34, v24, v34

    #@8f
    if-lez v34, :cond_4

    #@91
    .line 329
    mul-long v34, v26, v24

    #@93
    div-long v12, v34, v8

    #@95
    .line 330
    .local v12, "fracRxBytes":J
    mul-long v34, v28, v24

    #@97
    div-long v14, v34, v8

    #@99
    .line 331
    .local v14, "fracRxPackets":J
    mul-long v34, v30, v24

    #@9b
    div-long v16, v34, v8

    #@9d
    .line 332
    .local v16, "fracTxBytes":J
    mul-long v34, v32, v24

    #@9f
    div-long v18, v34, v8

    #@a1
    .line 333
    .local v18, "fracTxPackets":J
    mul-long v34, v22, v24

    #@a3
    div-long v10, v34, v8

    #@a5
    .line 335
    .local v10, "fracOperations":J
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@a9
    move-object/from16 v34, v0

    #@ab
    move-object/from16 v0, v34

    #@ad
    move/from16 v1, v20

    #@af
    move-wide/from16 v2, v24

    #@b1
    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@b4
    .line 336
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@b8
    move-object/from16 v34, v0

    #@ba
    move-object/from16 v0, v34

    #@bc
    move/from16 v1, v20

    #@be
    invoke-static {v0, v1, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@c1
    sub-long v26, v26, v12

    #@c3
    .line 337
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@c7
    move-object/from16 v34, v0

    #@c9
    move-object/from16 v0, v34

    #@cb
    move/from16 v1, v20

    #@cd
    invoke-static {v0, v1, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@d0
    sub-long v28, v28, v14

    #@d2
    .line 338
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@d6
    move-object/from16 v34, v0

    #@d8
    move-object/from16 v0, v34

    #@da
    move/from16 v1, v20

    #@dc
    move-wide/from16 v2, v16

    #@de
    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@e1
    sub-long v30, v30, v16

    #@e3
    .line 339
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@e7
    move-object/from16 v34, v0

    #@e9
    move-object/from16 v0, v34

    #@eb
    move/from16 v1, v20

    #@ed
    move-wide/from16 v2, v18

    #@ef
    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@f2
    sub-long v32, v32, v18

    #@f4
    .line 340
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@f8
    move-object/from16 v34, v0

    #@fa
    move-object/from16 v0, v34

    #@fc
    move/from16 v1, v20

    #@fe
    invoke-static {v0, v1, v10, v11}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    #@101
    sub-long v22, v22, v10

    #@103
    .line 342
    sub-long v8, v8, v24

    #@105
    goto/16 :goto_1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;

    #@0
    .prologue
    .line 353
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    const-wide v4, 0x7fffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    #@c
    .line 352
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 18
    .param p1, "input"    # Landroid/net/NetworkStatsHistory;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 362
    new-instance v3, Landroid/net/NetworkStats$Entry;

    #@2
    .line 363
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@4
    const/4 v5, -0x1

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v7, 0x0

    #@7
    const-wide/16 v8, 0x0

    #@9
    const-wide/16 v10, 0x0

    #@b
    const-wide/16 v12, 0x0

    #@d
    const-wide/16 v14, 0x0

    #@f
    const-wide/16 v16, 0x0

    #@11
    .line 362
    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@14
    .line 364
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    #@15
    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p1

    #@17
    iget v4, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@19
    if-ge v2, v4, :cond_2

    #@1b
    .line 365
    move-object/from16 v0, p1

    #@1d
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@1f
    aget-wide v6, v4, v2

    #@21
    .line 366
    .local v6, "bucketStart":J
    move-object/from16 v0, p1

    #@23
    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@25
    add-long v8, v6, v4

    #@27
    .line 369
    .local v8, "bucketEnd":J
    cmp-long v4, v6, p2

    #@29
    if-ltz v4, :cond_0

    #@2b
    cmp-long v4, v8, p4

    #@2d
    if-lez v4, :cond_1

    #@2f
    .line 364
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_0

    #@32
    .line 371
    :cond_1
    move-object/from16 v0, p1

    #@34
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@36
    const-wide/16 v10, 0x0

    #@38
    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@3b
    move-result-wide v4

    #@3c
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@3e
    .line 372
    move-object/from16 v0, p1

    #@40
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@42
    const-wide/16 v10, 0x0

    #@44
    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@47
    move-result-wide v4

    #@48
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@4a
    .line 373
    move-object/from16 v0, p1

    #@4c
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@4e
    const-wide/16 v10, 0x0

    #@50
    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@53
    move-result-wide v4

    #@54
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@56
    .line 374
    move-object/from16 v0, p1

    #@58
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@5a
    const-wide/16 v10, 0x0

    #@5c
    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@5f
    move-result-wide v4

    #@60
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@62
    .line 375
    move-object/from16 v0, p1

    #@64
    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@66
    const-wide/16 v10, 0x0

    #@68
    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    #@6b
    move-result-wide v4

    #@6c
    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->operations:J

    #@6e
    move-object/from16 v5, p0

    #@70
    move-object v10, v3

    #@71
    .line 377
    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    #@74
    goto :goto_1

    #@75
    .line 361
    .end local v6    # "bucketStart":J
    .end local v8    # "bucketEnd":J
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 9
    .param p1, "cutoff"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 445
    const/4 v4, 0x0

    #@1
    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@3
    if-ge v4, v6, :cond_0

    #@5
    .line 446
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@7
    aget-wide v2, v6, v4

    #@9
    .line 447
    .local v2, "curStart":J
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@b
    add-long v0, v2, v6

    #@d
    .line 451
    .local v0, "curEnd":J
    cmp-long v6, v0, p1

    #@f
    if-lez v6, :cond_8

    #@11
    .line 454
    .end local v0    # "curEnd":J
    .end local v2    # "curStart":J
    :cond_0
    if-lez v4, :cond_7

    #@13
    .line 455
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@15
    array-length v5, v6

    #@16
    .line 456
    .local v5, "length":I
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@18
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@1b
    move-result-object v6

    #@1c
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@1e
    .line 457
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@20
    if-eqz v6, :cond_1

    #@22
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@24
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@27
    move-result-object v6

    #@28
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@2a
    .line 458
    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@2c
    if-eqz v6, :cond_2

    #@2e
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@30
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@33
    move-result-object v6

    #@34
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@36
    .line 459
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@38
    if-eqz v6, :cond_3

    #@3a
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@3c
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@3f
    move-result-object v6

    #@40
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@42
    .line 460
    :cond_3
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@44
    if-eqz v6, :cond_4

    #@46
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@48
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@4b
    move-result-object v6

    #@4c
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@4e
    .line 461
    :cond_4
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@50
    if-eqz v6, :cond_5

    #@52
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@54
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@57
    move-result-object v6

    #@58
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@5a
    .line 462
    :cond_5
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@5c
    if-eqz v6, :cond_6

    #@5e
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@60
    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    #@63
    move-result-object v6

    #@64
    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@66
    .line 463
    :cond_6
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@68
    sub-int/2addr v6, v4

    #@69
    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@6b
    .line 443
    .end local v5    # "length":I
    :cond_7
    return-void

    #@6c
    .line 445
    .restart local v0    # "curEnd":J
    .restart local v2    # "curStart":J
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@6e
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 208
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 633
    new-instance v0, Ljava/io/CharArrayWriter;

    #@2
    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    #@5
    .line 634
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@7
    const-string/jumbo v2, "  "

    #@a
    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    #@11
    .line 635
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 137
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 138
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@7
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@9
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@c
    .line 139
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@e
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@10
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@13
    .line 140
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@15
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@17
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@1a
    .line 141
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@1c
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@1e
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@21
    .line 142
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@23
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@25
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@28
    .line 143
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@2a
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@2c
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@2f
    .line 144
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@31
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@33
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    #@36
    .line 145
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    #@38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@3b
    .line 136
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    const/4 v0, 0x3

    #@1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@4
    .line 192
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    #@6
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@9
    .line 193
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    #@b
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@d
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@10
    .line 194
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    #@12
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@14
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@17
    .line 195
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    #@19
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@1b
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@1e
    .line 196
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    #@20
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@22
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@25
    .line 197
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    #@27
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@29
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@2c
    .line 198
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    #@2e
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@30
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@33
    .line 199
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    #@35
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    #@37
    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    #@3a
    .line 190
    return-void
.end method
