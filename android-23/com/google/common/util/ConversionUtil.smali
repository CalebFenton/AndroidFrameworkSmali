.class public Landroid_maps_conflict_avoidance/com/google/common/util/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 34
    array-length v0, p0

    #@1
    const/4 v1, 0x4

    #@2
    if-ne v0, v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 37
    aget-byte v0, p0, v0

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    shl-int/lit8 v0, v0, 0x18

    #@b
    const/4 v1, 0x1

    #@c
    aget-byte v1, p0, v1

    #@e
    and-int/lit16 v1, v1, 0xff

    #@10
    shl-int/lit8 v1, v1, 0x10

    #@12
    or-int/2addr v0, v1

    #@13
    const/4 v1, 0x2

    #@14
    aget-byte v1, p0, v1

    #@16
    and-int/lit16 v1, v1, 0xff

    #@18
    shl-int/lit8 v1, v1, 0x8

    #@1a
    or-int/2addr v0, v1

    #@1b
    const/4 v1, 0x3

    #@1c
    aget-byte v1, p0, v1

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    or-int/2addr v0, v1

    #@21
    return v0

    #@22
    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@24
    const-string/jumbo v1, "byte[] must be size 4, there are 4 bytes to an int"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
.end method
