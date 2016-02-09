.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final multiplier:J = 0x5deece66dL

.field private static volatile seedBase:J = 0x0L

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 61
    const-wide/16 v0, 0x0

    #@2
    sput-wide v0, Ljava/util/Random;->seedBase:J

    #@4
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@6
    move-result-wide v0

    #@7
    sget-wide v2, Ljava/util/Random;->seedBase:J

    #@9
    add-long/2addr v0, v2

    #@a
    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    #@d
    .line 71
    sget-wide v0, Ljava/util/Random;->seedBase:J

    #@f
    const-wide/16 v2, 0x1

    #@11
    add-long/2addr v0, v2

    #@12
    sput-wide v0, Ljava/util/Random;->seedBase:J

    #@14
    .line 67
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    #@6
    .line 81
    return-void
.end method


# virtual methods
.method protected declared-synchronized next(I)I
    .locals 4
    .param p1, "bits"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 97
    :try_start_0
    iget-wide v0, p0, Ljava/util/Random;->seed:J

    #@3
    const-wide v2, 0x5deece66dL

    #@8
    mul-long/2addr v0, v2

    #@9
    const-wide/16 v2, 0xb

    #@b
    add-long/2addr v0, v2

    #@c
    const-wide v2, 0xffffffffffffL

    #@11
    and-long/2addr v0, v2

    #@12
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    #@14
    .line 98
    iget-wide v0, p0, Ljava/util/Random;->seed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    rsub-int/lit8 v2, p1, 0x30

    #@18
    ushr-long/2addr v0, v2

    #@19
    long-to-int v0, v0

    #@1a
    monitor-exit p0

    #@1b
    return v0

    #@1c
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public nextBoolean()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 105
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    move v0, v1

    #@a
    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 5
    .param p1, "buf"    # [B

    #@0
    .prologue
    .line 112
    const/4 v3, 0x0

    #@1
    .local v3, "rand":I
    const/4 v0, 0x0

    #@2
    .local v0, "count":I
    const/4 v2, 0x0

    #@3
    .line 113
    .local v2, "loop":I
    :goto_0
    array-length v4, p1

    #@4
    if-ge v0, v4, :cond_1

    #@6
    .line 114
    if-nez v2, :cond_0

    #@8
    .line 115
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    #@b
    move-result v3

    #@c
    .line 116
    const/4 v2, 0x3

    #@d
    .line 120
    :goto_1
    add-int/lit8 v1, v0, 0x1

    #@f
    .end local v0    # "count":I
    .local v1, "count":I
    int-to-byte v4, v3

    #@10
    aput-byte v4, p1, v0

    #@12
    .line 121
    shr-int/lit8 v3, v3, 0x8

    #@14
    move v0, v1

    #@15
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    #@16
    .line 118
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@18
    goto :goto_1

    #@19
    .line 111
    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x1b

    #@2
    .line 130
    const/16 v0, 0x1a

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    #@7
    move-result v0

    #@8
    int-to-long v0, v0

    #@9
    shl-long/2addr v0, v2

    #@a
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    #@d
    move-result v2

    #@e
    int-to-long v2, v2

    #@f
    add-long/2addr v0, v2

    #@10
    long-to-double v0, v0

    #@11
    const-wide/high16 v2, 0x4340000000000000L    # 9.007199254740992E15

    #@13
    div-double/2addr v0, v2

    #@14
    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    #@0
    .prologue
    .line 138
    const/16 v0, 0x18

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x4b800000    # 1.6777216E7f

    #@9
    div-float/2addr v0, v1

    #@a
    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 12

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 150
    :try_start_0
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 151
    const/4 v8, 0x0

    #@6
    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@8
    .line 152
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-wide v8

    #@c
    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    #@f
    move-result-wide v8

    #@10
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@12
    mul-double/2addr v8, v10

    #@13
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@15
    sub-double v4, v8, v10

    #@17
    .line 158
    .local v4, "v1":D
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    #@1a
    move-result-wide v8

    #@1b
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@1d
    mul-double/2addr v8, v10

    #@1e
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@20
    sub-double v6, v8, v10

    #@22
    .line 159
    .local v6, "v2":D
    mul-double v8, v4, v4

    #@24
    mul-double v10, v6, v6

    #@26
    add-double v2, v8, v10

    #@28
    .line 160
    .local v2, "s":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@2a
    cmpl-double v8, v2, v8

    #@2c
    if-gez v8, :cond_0

    #@2e
    const-wide/16 v8, 0x0

    #@30
    cmpl-double v8, v2, v8

    #@32
    if-eqz v8, :cond_0

    #@34
    .line 163
    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    #@37
    move-result-wide v8

    #@38
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    #@3a
    mul-double/2addr v8, v10

    #@3b
    div-double/2addr v8, v2

    #@3c
    invoke-static {v8, v9}, Ljava/lang/StrictMath;->sqrt(D)D

    #@3f
    move-result-wide v0

    #@40
    .line 164
    .local v0, "multiplier":D
    mul-double v8, v6, v0

    #@42
    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    #@44
    .line 165
    const/4 v8, 0x1

    #@45
    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 166
    mul-double v8, v4, v0

    #@49
    monitor-exit p0

    #@4a
    return-wide v8

    #@4b
    .end local v0    # "multiplier":D
    .end local v2    # "s":D
    .end local v4    # "v1":D
    .end local v6    # "v2":D
    :catchall_0
    move-exception v8

    #@4c
    monitor-exit p0

    #@4d
    throw v8
.end method

.method public nextInt()I
    .locals 1

    #@0
    .prologue
    .line 173
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextInt(I)I
    .locals 7
    .param p1, "n"    # I

    #@0
    .prologue
    const/16 v6, 0x1f

    #@2
    .line 181
    if-gtz p1, :cond_0

    #@4
    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v3, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v4, "n <= 0: "

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2

    #@1e
    .line 184
    :cond_0
    neg-int v2, p1

    #@1f
    and-int/2addr v2, p1

    #@20
    if-ne v2, p1, :cond_1

    #@22
    .line 185
    int-to-long v2, p1

    #@23
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    #@26
    move-result v4

    #@27
    int-to-long v4, v4

    #@28
    mul-long/2addr v2, v4

    #@29
    shr-long/2addr v2, v6

    #@2a
    long-to-int v2, v2

    #@2b
    return v2

    #@2c
    .line 189
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    #@2f
    move-result v0

    #@30
    .line 190
    .local v0, "bits":I
    rem-int v1, v0, p1

    #@32
    .line 191
    .local v1, "val":I
    sub-int v2, v0, v1

    #@34
    add-int/lit8 v3, p1, -0x1

    #@36
    add-int/2addr v2, v3

    #@37
    if-ltz v2, :cond_1

    #@39
    .line 192
    return v1
.end method

.method public nextLong()J
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 199
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    shl-long/2addr v0, v2

    #@8
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    add-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 207
    const-wide v0, 0x5deece66dL

    #@6
    xor-long/2addr v0, p1

    #@7
    const-wide v2, 0xffffffffffffL

    #@c
    and-long/2addr v0, v2

    #@d
    :try_start_0
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    #@f
    .line 208
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 206
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method
