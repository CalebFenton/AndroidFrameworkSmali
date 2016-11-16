.class public Lsun/misc/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/lang/Error;

    #@5
    const-string/jumbo v1, "No instances"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public static singleWordWangJenkinsHash(Ljava/lang/Object;)I
    .locals 3
    .param p0, "k"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    .line 50
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0xf

    #@6
    xor-int/lit16 v1, v1, -0x3283

    #@8
    add-int/2addr v0, v1

    #@9
    .line 51
    ushr-int/lit8 v1, v0, 0xa

    #@b
    xor-int/2addr v0, v1

    #@c
    .line 52
    shl-int/lit8 v1, v0, 0x3

    #@e
    add-int/2addr v0, v1

    #@f
    .line 53
    ushr-int/lit8 v1, v0, 0x6

    #@11
    xor-int/2addr v0, v1

    #@12
    .line 54
    shl-int/lit8 v1, v0, 0x2

    #@14
    shl-int/lit8 v2, v0, 0xe

    #@16
    add-int/2addr v1, v2

    #@17
    add-int/2addr v0, v1

    #@18
    .line 55
    ushr-int/lit8 v1, v0, 0x10

    #@1a
    xor-int/2addr v1, v0

    #@1b
    return v1
.end method
