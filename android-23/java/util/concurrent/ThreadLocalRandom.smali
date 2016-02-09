.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$1;
    }
.end annotation


# static fields
.field private static final addend:J = 0xbL

.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$1;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    #@5
    .line 62
    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    #@7
    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    #@3
    .line 75
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    #@6
    .line 73
    return-void
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    #@0
    .prologue
    .line 84
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->localRandom:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/concurrent/ThreadLocalRandom;

    #@8
    return-object v0
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 100
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    #@2
    const-wide v2, 0x5deece66dL

    #@7
    mul-long/2addr v0, v2

    #@8
    const-wide/16 v2, 0xb

    #@a
    add-long/2addr v0, v2

    #@b
    const-wide v2, 0xffffffffffffL

    #@10
    and-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    #@13
    .line 101
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    #@15
    rsub-int/lit8 v2, p1, 0x30

    #@17
    ushr-long/2addr v0, v2

    #@18
    long-to-int v0, v0

    #@19
    return v0
.end method

.method public nextDouble(D)D
    .locals 3
    .param p1, "n"    # D

    #@0
    .prologue
    .line 175
    const-wide/16 v0, 0x0

    #@2
    cmpl-double v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    if-nez v0, :cond_1

    #@9
    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "n must be positive"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 175
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0

    #@14
    .line 177
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    #@17
    move-result-wide v0

    #@18
    mul-double/2addr v0, p1

    #@19
    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 5
    .param p1, "least"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 191
    cmpl-double v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 193
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    #@d
    move-result-wide v0

    #@e
    sub-double v2, p3, p1

    #@10
    mul-double/2addr v0, v2

    #@11
    add-double/2addr v0, p1

    #@12
    return-wide v0
.end method

.method public nextInt(II)I
    .locals 1
    .param p1, "least"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 115
    if-lt p1, p2, :cond_0

    #@2
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 117
    :cond_0
    sub-int v0, p2, p1

    #@a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    #@d
    move-result v0

    #@e
    add-int/2addr v0, p1

    #@f
    return v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "n"    # J

    #@0
    .prologue
    .line 130
    const-wide/16 v8, 0x0

    #@2
    cmp-long v1, p1, v8

    #@4
    if-gtz v1, :cond_0

    #@6
    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v8, "n must be positive"

    #@b
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 137
    :cond_0
    const-wide/16 v6, 0x0

    #@11
    .line 138
    .local v6, "offset":J
    :goto_0
    const-wide/32 v8, 0x7fffffff

    #@14
    cmp-long v1, p1, v8

    #@16
    if-ltz v1, :cond_3

    #@18
    .line 139
    const/4 v1, 0x2

    #@19
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->next(I)I

    #@1c
    move-result v0

    #@1d
    .line 140
    .local v0, "bits":I
    const/4 v1, 0x1

    #@1e
    ushr-long v2, p1, v1

    #@20
    .line 141
    .local v2, "half":J
    and-int/lit8 v1, v0, 0x2

    #@22
    if-nez v1, :cond_2

    #@24
    move-wide v4, v2

    #@25
    .line 142
    .local v4, "nextn":J
    :goto_1
    and-int/lit8 v1, v0, 0x1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 143
    sub-long v8, p1, v4

    #@2b
    add-long/2addr v6, v8

    #@2c
    .line 144
    :cond_1
    move-wide p1, v4

    #@2d
    goto :goto_0

    #@2e
    .line 141
    .end local v4    # "nextn":J
    :cond_2
    sub-long v4, p1, v2

    #@30
    .restart local v4    # "nextn":J
    goto :goto_1

    #@31
    .line 146
    .end local v0    # "bits":I
    .end local v2    # "half":J
    .end local v4    # "nextn":J
    :cond_3
    long-to-int v1, p1

    #@32
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    #@35
    move-result v1

    #@36
    int-to-long v8, v1

    #@37
    add-long/2addr v8, v6

    #@38
    return-wide v8
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "least"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 160
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@9
    throw v0

    #@a
    .line 162
    :cond_0
    sub-long v0, p3, p1

    #@c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(J)J

    #@f
    move-result-wide v0

    #@10
    add-long/2addr v0, p1

    #@11
    return-wide v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 96
    :cond_0
    const-wide v0, 0x5deece66dL

    #@f
    xor-long/2addr v0, p1

    #@10
    const-wide v2, 0xffffffffffffL

    #@15
    and-long/2addr v0, v2

    #@16
    iput-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->rnd:J

    #@18
    .line 93
    return-void
.end method
