.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Random$RandomDoublesSpliterator;,
        Ljava/util/Random$RandomIntsSpliterator;,
        Ljava/util/Random$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BadBound:Ljava/lang/String; = "bound must be positive"

.field static final BadRange:Ljava/lang/String; = "bound must be greater than origin"

.field static final BadSize:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final addend:J = 0xbL

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final seedOffset:J

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x363296344bf00a53L

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    const-wide v2, 0x1ed8b55fac9decL

    #@7
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@a
    .line 119
    sput-object v1, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    #@c
    .line 1175
    const/4 v1, 0x3

    #@d
    new-array v1, v1, [Ljava/io/ObjectStreamField;

    #@f
    .line 1176
    new-instance v2, Ljava/io/ObjectStreamField;

    #@11
    const-string/jumbo v3, "seed"

    #@14
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@16
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@19
    const/4 v3, 0x0

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 1177
    new-instance v2, Ljava/io/ObjectStreamField;

    #@1e
    const-string/jumbo v3, "nextNextGaussian"

    #@21
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@23
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@26
    const/4 v3, 0x1

    #@27
    aput-object v2, v1, v3

    #@29
    .line 1178
    new-instance v2, Ljava/io/ObjectStreamField;

    #@2b
    const-string/jumbo v3, "haveNextNextGaussian"

    #@2e
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@30
    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@33
    const/4 v3, 0x2

    #@34
    aput-object v2, v1, v3

    #@36
    .line 1175
    sput-object v1, Ljava/util/Random;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@38
    .line 1220
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3b
    move-result-object v1

    #@3c
    sput-object v1, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    #@3e
    .line 1224
    :try_start_0
    sget-object v1, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    #@40
    .line 1225
    const-class v2, Ljava/util/Random;

    #@42
    const-string/jumbo v3, "seed"

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@48
    move-result-object v2

    #@49
    .line 1224
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4c
    move-result-wide v2

    #@4d
    sput-wide v2, Ljava/util/Random;->seedOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 77
    return-void

    #@50
    .line 1226
    :catch_0
    move-exception v0

    #@51
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    #@53
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@56
    throw v1
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 105
    invoke-static {}, Ljava/util/Random;->seedUniquifier()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7
    move-result-wide v2

    #@8
    xor-long/2addr v0, v2

    #@9
    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    #@c
    .line 104
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 540
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@6
    .line 136
    invoke-virtual {p0}, Ljava/util/Random;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    const-class v1, Ljava/util/Random;

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@10
    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    #@13
    move-result-wide v2

    #@14
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@17
    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    #@19
    .line 135
    :goto_0
    return-void

    #@1a
    .line 140
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@1c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    #@1f
    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    #@21
    .line 141
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    #@24
    goto :goto_0
.end method

.method private static initialScramble(J)J
    .locals 4
    .param p0, "seed"    # J

    #@0
    .prologue
    .line 146
    const-wide v0, 0x5deece66dL

    #@5
    xor-long/2addr v0, p0

    #@6
    const-wide v2, 0xffffffffffffL

    #@b
    and-long/2addr v0, v2

    #@c
    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@3
    move-result-object v0

    #@4
    .line 1192
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "seed"

    #@7
    const-wide/16 v4, -0x1

    #@9
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    #@c
    move-result-wide v2

    #@d
    .line 1193
    .local v2, "seedVal":J
    const-wide/16 v4, 0x0

    #@f
    cmp-long v1, v2, v4

    #@11
    if-gez v1, :cond_0

    #@13
    .line 1194
    new-instance v1, Ljava/io/StreamCorruptedException;

    #@15
    .line 1195
    const-string/jumbo v4, "Random: invalid seed"

    #@18
    .line 1194
    invoke-direct {v1, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1196
    :cond_0
    invoke-direct {p0, v2, v3}, Ljava/util/Random;->resetSeed(J)V

    #@1f
    .line 1197
    const-string/jumbo v1, "nextNextGaussian"

    #@22
    const-wide/16 v4, 0x0

    #@24
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    #@27
    move-result-wide v4

    #@28
    iput-wide v4, p0, Ljava/util/Random;->nextNextGaussian:D

    #@2a
    .line 1198
    const-string/jumbo v1, "haveNextNextGaussian"

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@34
    .line 1186
    return-void
.end method

.method private resetSeed(J)V
    .locals 5
    .param p1, "seedVal"    # J

    #@0
    .prologue
    .line 1229
    sget-object v0, Ljava/util/Random;->unsafe:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/Random;->seedOffset:J

    #@4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    #@6
    invoke-direct {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@9
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@c
    .line 1228
    return-void
.end method

.method private static seedUniquifier()J
    .locals 6

    #@0
    .prologue
    .line 112
    .local v0, "current":J
    .local v2, "next":J
    :cond_0
    sget-object v4, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v0

    #@6
    .line 113
    .end local v2    # "next":J
    const-wide v4, 0x285d320ad33fdb5L

    #@b
    mul-long v2, v0, v4

    #@d
    .line 114
    .restart local v2    # "next":J
    sget-object v4, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    #@f
    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 115
    return-wide v2
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1208
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@4
    move-result-object v0

    #@5
    .line 1211
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "seed"

    #@8
    iget-object v2, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    #@a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@d
    move-result-wide v2

    #@e
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    #@11
    .line 1212
    const-string/jumbo v1, "nextNextGaussian"

    #@14
    iget-wide v2, p0, Ljava/util/Random;->nextNextGaussian:D

    #@16
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    #@19
    .line 1213
    const-string/jumbo v1, "haveNextNextGaussian"

    #@1c
    iget-boolean v2, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@21
    .line 1216
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 1205
    return-void

    #@26
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .locals 10

    #@0
    .prologue
    .line 914
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    #@2
    .line 915
    const-wide/16 v2, 0x0

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@e
    const-wide/16 v8, 0x0

    #@10
    move-object v1, p0

    #@11
    .line 914
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    #@14
    .line 916
    const/4 v1, 0x0

    #@15
    .line 913
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 986
    cmpg-double v0, p1, p3

    #@3
    if-gez v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    if-nez v0, :cond_1

    #@8
    .line 987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "bound must be greater than origin"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_0
    move v0, v10

    #@12
    .line 986
    goto :goto_0

    #@13
    .line 989
    :cond_1
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    #@15
    .line 990
    const-wide/16 v2, 0x0

    #@17
    const-wide v4, 0x7fffffffffffffffL

    #@1c
    move-object v1, p0

    #@1d
    move-wide v6, p1

    #@1e
    move-wide v8, p3

    #@1f
    .line 989
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    #@22
    .line 988
    invoke-static {v0, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 890
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 891
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 893
    :cond_0
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    #@11
    .line 894
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@16
    const-wide/16 v8, 0x0

    #@18
    move-object v1, p0

    #@19
    move-wide v4, p1

    #@1a
    .line 893
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    #@1d
    .line 895
    const/4 v1, 0x0

    #@1e
    .line 892
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    #@0
    .prologue
    .line 948
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 949
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 950
    :cond_0
    cmpg-double v0, p3, p5

    #@11
    if-gez v0, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    if-nez v0, :cond_2

    #@16
    .line 951
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "bound must be greater than origin"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 950
    :cond_1
    const/4 v0, 0x0

    #@20
    goto :goto_0

    #@21
    .line 953
    :cond_2
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    #@23
    .line 954
    const-wide/16 v2, 0x0

    #@25
    move-object v1, p0

    #@26
    move-wide v4, p1

    #@27
    move-wide v6, p3

    #@28
    move-wide/from16 v8, p5

    #@2a
    .line 953
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    #@2d
    .line 955
    const/4 v1, 0x0

    #@2e
    .line 952
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method final internalNextDouble(DD)D
    .locals 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    #@3
    move-result-wide v0

    #@4
    .line 303
    .local v0, "r":D
    cmpg-double v2, p1, p3

    #@6
    if-gez v2, :cond_0

    #@8
    .line 304
    sub-double v2, p3, p1

    #@a
    mul-double/2addr v2, v0

    #@b
    add-double v0, v2, p1

    #@d
    .line 305
    cmpl-double v2, v0, p3

    #@f
    if-ltz v2, :cond_0

    #@11
    .line 306
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@14
    move-result-wide v2

    #@15
    const-wide/16 v4, 0x1

    #@17
    sub-long/2addr v2, v4

    #@18
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1b
    move-result-wide v0

    #@1c
    .line 308
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 3
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 276
    if-ge p1, p2, :cond_1

    #@2
    .line 277
    sub-int v0, p2, p1

    #@4
    .line 278
    .local v0, "n":I
    if-lez v0, :cond_0

    #@6
    .line 279
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    #@9
    move-result v2

    #@a
    add-int/2addr v2, p1

    #@b
    return v2

    #@c
    .line 284
    :cond_0
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    #@f
    move-result v1

    #@10
    .line 285
    .local v1, "r":I
    if-lt v1, p1, :cond_0

    #@12
    if-ge v1, p2, :cond_0

    #@14
    .line 286
    return v1

    #@15
    .line 290
    .end local v0    # "n":I
    .end local v1    # "r":I
    :cond_1
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    #@18
    move-result v2

    #@19
    return v2
.end method

.method final internalNextLong(JJ)J
    .locals 13
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    #@3
    move-result-wide v4

    #@4
    .line 246
    .local v4, "r":J
    cmp-long v8, p1, p3

    #@6
    if-gez v8, :cond_0

    #@8
    .line 247
    sub-long v2, p3, p1

    #@a
    .local v2, "n":J
    const-wide/16 v8, 0x1

    #@c
    sub-long v0, v2, v8

    #@e
    .line 248
    .local v0, "m":J
    and-long v8, v2, v0

    #@10
    const-wide/16 v10, 0x0

    #@12
    cmp-long v8, v8, v10

    #@14
    if-nez v8, :cond_1

    #@16
    .line 249
    and-long v8, v4, v0

    #@18
    add-long v4, v8, p1

    #@1a
    .line 262
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_0
    :goto_0
    return-wide v4

    #@1b
    .line 250
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1
    const-wide/16 v8, 0x0

    #@1d
    cmp-long v8, v2, v8

    #@1f
    if-lez v8, :cond_3

    #@21
    .line 251
    const/4 v8, 0x1

    #@22
    ushr-long v6, v4, v8

    #@24
    .line 252
    .local v6, "u":J
    :goto_1
    add-long v8, v6, v0

    #@26
    rem-long v4, v6, v2

    #@28
    sub-long/2addr v8, v4

    #@29
    const-wide/16 v10, 0x0

    #@2b
    .line 251
    cmp-long v8, v8, v10

    #@2d
    if-gez v8, :cond_2

    #@2f
    .line 253
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    #@32
    move-result-wide v8

    #@33
    const/4 v10, 0x1

    #@34
    ushr-long v6, v8, v10

    #@36
    goto :goto_1

    #@37
    .line 255
    :cond_2
    add-long/2addr v4, p1

    #@38
    goto :goto_0

    #@39
    .line 258
    .end local v6    # "u":J
    :cond_3
    :goto_2
    cmp-long v8, v4, p1

    #@3b
    if-ltz v8, :cond_4

    #@3d
    cmp-long v8, v4, p3

    #@3f
    if-ltz v8, :cond_0

    #@41
    .line 259
    :cond_4
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    #@44
    move-result-wide v4

    #@45
    goto :goto_2
.end method

.method public ints()Ljava/util/stream/IntStream;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 646
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    #@3
    .line 647
    const-wide/16 v2, 0x0

    #@5
    const-wide v4, 0x7fffffffffffffffL

    #@a
    const v6, 0x7fffffff

    #@d
    move-object v1, p0

    #@e
    .line 646
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    #@11
    .line 645
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    #@0
    .prologue
    .line 729
    if-lt p1, p2, :cond_0

    #@2
    .line 730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "bound must be greater than origin"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 732
    :cond_0
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    #@d
    .line 733
    const-wide/16 v2, 0x0

    #@f
    const-wide v4, 0x7fffffffffffffffL

    #@14
    move-object v1, p0

    #@15
    move v6, p1

    #@16
    move v7, p2

    #@17
    .line 732
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    #@1a
    .line 734
    const/4 v1, 0x0

    #@1b
    .line 731
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 623
    cmp-long v0, p1, v2

    #@5
    if-gez v0, :cond_0

    #@7
    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "size must be non-negative"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 626
    :cond_0
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    #@12
    .line 627
    const v6, 0x7fffffff

    #@15
    move-object v1, p0

    #@16
    move-wide v4, p1

    #@17
    .line 626
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    #@1a
    .line 625
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 685
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 687
    :cond_0
    if-lt p3, p4, :cond_1

    #@11
    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bound must be greater than origin"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 690
    :cond_1
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    #@1c
    move-object v1, p0

    #@1d
    move-wide v4, p1

    #@1e
    move v6, p3

    #@1f
    move v7, p4

    #@20
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    #@23
    .line 692
    const/4 v1, 0x0

    #@24
    .line 689
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .locals 10

    #@0
    .prologue
    const-wide v4, 0x7fffffffffffffffL

    #@5
    const-wide/16 v2, 0x0

    #@7
    .line 774
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    #@9
    move-object v1, p0

    #@a
    move-wide v6, v4

    #@b
    move-wide v8, v2

    #@c
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    #@f
    .line 776
    const/4 v1, 0x0

    #@10
    .line 773
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 751
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 752
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 754
    :cond_0
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    #@11
    .line 755
    const-wide v6, 0x7fffffffffffffffL

    #@16
    move-object v1, p0

    #@17
    move-wide v4, p1

    #@18
    move-wide v8, v2

    #@19
    .line 754
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    #@1c
    .line 756
    const/4 v1, 0x0

    #@1d
    .line 753
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    #@0
    .prologue
    .line 867
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "bound must be greater than origin"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 870
    :cond_0
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    #@f
    .line 871
    const-wide/16 v2, 0x0

    #@11
    const-wide v4, 0x7fffffffffffffffL

    #@16
    move-object v1, p0

    #@17
    move-wide v6, p1

    #@18
    move-wide v8, p3

    #@19
    .line 870
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    #@1c
    .line 872
    const/4 v1, 0x0

    #@1d
    .line 869
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    #@0
    .prologue
    .line 818
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 820
    :cond_0
    cmp-long v0, p3, p5

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 821
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "bound must be greater than origin"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 823
    :cond_1
    new-instance v0, Ljava/util/Random$RandomLongsSpliterator;

    #@1e
    .line 824
    const-wide/16 v2, 0x0

    #@20
    move-object v1, p0

    #@21
    move-wide v4, p1

    #@22
    move-wide v6, p3

    #@23
    move-wide/from16 v8, p5

    #@25
    .line 823
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomLongsSpliterator;-><init>(Ljava/util/Random;JJJJ)V

    #@28
    .line 825
    const/4 v1, 0x0

    #@29
    .line 822
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method protected next(I)I
    .locals 10
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 200
    iget-object v4, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    #@2
    .line 202
    .local v4, "seed":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    #@5
    move-result-wide v2

    #@6
    .line 203
    .local v2, "oldseed":J
    const-wide v6, 0x5deece66dL

    #@b
    mul-long/2addr v6, v2

    #@c
    const-wide/16 v8, 0xb

    #@e
    add-long/2addr v6, v8

    #@f
    const-wide v8, 0xffffffffffffL

    #@14
    and-long v0, v6, v8

    #@16
    .line 204
    .local v0, "nextseed":J
    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 205
    rsub-int/lit8 v5, p1, 0x30

    #@1e
    ushr-long v6, v0, v5

    #@20
    long-to-int v5, v6

    #@21
    return v5
.end method

.method public nextBoolean()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 449
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
    .locals 8
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 228
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    array-length v2, p1

    #@2
    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@4
    .line 229
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    #@7
    move-result v5

    #@8
    .line 230
    .local v5, "rnd":I
    sub-int v6, v2, v0

    #@a
    const/4 v7, 0x4

    #@b
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@e
    move-result v3

    #@f
    .local v3, "n":I
    move v4, v3

    #@10
    .end local v3    # "n":I
    .local v4, "n":I
    move v1, v0

    #@11
    .line 231
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    #@13
    .line 229
    .end local v4    # "n":I
    .restart local v3    # "n":I
    if-lez v4, :cond_0

    #@15
    .line 232
    add-int/lit8 v0, v1, 0x1

    #@17
    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-byte v6, v5

    #@18
    aput-byte v6, p1, v1

    #@1a
    .line 231
    shr-int/lit8 v5, v5, 0x8

    #@1c
    move v4, v3

    #@1d
    .end local v3    # "n":I
    .restart local v4    # "n":I
    move v1, v0

    #@1e
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    #@1f
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_0
    move v0, v1

    #@20
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@21
    .line 227
    .end local v3    # "n":I
    .end local v5    # "rnd":I
    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x1b

    #@2
    .line 535
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
    .line 536
    const-wide/high16 v2, 0x4340000000000000L    # 9.007199254740992E15

    #@13
    .line 535
    div-double/2addr v0, v2

    #@14
    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    #@0
    .prologue
    .line 492
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
    .line 589
    :try_start_0
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@3
    if-eqz v8, :cond_0

    #@5
    .line 590
    const/4 v8, 0x0

    #@6
    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    #@8
    .line 591
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-wide v8

    #@c
    .line 595
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
    .line 596
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
    .line 597
    .local v6, "v2":D
    mul-double v8, v4, v4

    #@24
    mul-double v10, v6, v6

    #@26
    add-double v2, v8, v10

    #@28
    .line 598
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
    .line 599
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
    .line 600
    .local v0, "multiplier":D
    mul-double v8, v6, v0

    #@42
    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    #@44
    .line 601
    const/4 v8, 0x1

    #@45
    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 602
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
    .line 330
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
    .line 390
    if-gtz p1, :cond_0

    #@4
    .line 391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v3, "n must be positive"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 393
    :cond_0
    neg-int v2, p1

    #@e
    and-int/2addr v2, p1

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 394
    int-to-long v2, p1

    #@12
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    #@15
    move-result v4

    #@16
    int-to-long v4, v4

    #@17
    mul-long/2addr v2, v4

    #@18
    shr-long/2addr v2, v6

    #@19
    long-to-int v2, v2

    #@1a
    return v2

    #@1b
    .line 398
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    #@1e
    move-result v0

    #@1f
    .line 399
    .local v0, "bits":I
    rem-int v1, v0, p1

    #@21
    .line 400
    .local v1, "val":I
    sub-int v2, v0, v1

    #@23
    add-int/lit8 v3, p1, -0x1

    #@25
    add-int/2addr v2, v3

    #@26
    if-ltz v2, :cond_1

    #@28
    .line 401
    return v1
.end method

.method public nextLong()J
    .locals 4

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 425
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
    .line 169
    :try_start_0
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    #@3
    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    #@6
    move-result-wide v2

    #@7
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@a
    .line 170
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 168
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
