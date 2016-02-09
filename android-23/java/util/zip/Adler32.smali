.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private adler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    const-wide/16 v0, 0x1

    #@5
    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@7
    .line 27
    return-void
.end method

.method private native updateByteImpl(IJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .locals 2

    #@0
    .prologue
    .line 37
    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@2
    return-wide v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 44
    const-wide/16 v0, 0x1

    #@2
    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@4
    .line 43
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/Adler32;->updateByteImpl(IJ)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@8
    .line 54
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 65
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Adler32;->update([BII)V

    #@5
    .line 64
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 73
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 74
    iget-wide v4, p0, Ljava/util/zip/Adler32;->adler:J

    #@6
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Adler32;->updateImpl([BIIJ)J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    #@10
    .line 72
    return-void
.end method
