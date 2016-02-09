.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private crc:J

.field tbytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 28
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    #@7
    .line 30
    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    #@9
    .line 26
    return-void
.end method

.method private native updateByteImpl(BJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .locals 2

    #@0
    .prologue
    .line 38
    iget-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    #@2
    return-wide v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 45
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    #@4
    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    #@6
    .line 44
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "val"    # I

    #@0
    .prologue
    .line 56
    int-to-byte v0, p1

    #@1
    iget-wide v2, p0, Ljava/util/zip/CRC32;->crc:J

    #@3
    invoke-direct {p0, v0, v2, v3}, Ljava/util/zip/CRC32;->updateByteImpl(BJ)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    #@9
    .line 55
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 66
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/CRC32;->update([BII)V

    #@5
    .line 65
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 74
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 75
    iget-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    #@6
    int-to-long v2, p3

    #@7
    add-long/2addr v0, v2

    #@8
    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    #@a
    .line 76
    iget-wide v4, p0, Ljava/util/zip/CRC32;->crc:J

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    move v2, p2

    #@f
    move v3, p3

    #@10
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/CRC32;->updateImpl([BIIJ)J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    #@16
    .line 73
    return-void
.end method
