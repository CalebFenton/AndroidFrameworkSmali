.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/random/RandomGenerator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Random$RandomWrapper;
    }
.end annotation

.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x0
    i = 0x30
    j = 0x0
    k = 0x0
    name = "Random"
.end annotation


# static fields
.field private static final greylist-max-o DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final blacklist FLOAT_UNIT:F = 5.9604645E-8f

.field public static final blacklist STREAM_INT_DIFFERS_FROM_NEXT_INT:J = 0x125d4a66L

.field private static final greylist-max-o addend:J = 0xbL

.field private static final greylist-max-o mask:J = 0xffffffffffffL

.field private static final greylist-max-o multiplier:J = 0x5deece66dL

.field private static final greylist-max-o seedOffset:J

.field private static final greylist-max-o seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x363296344bf00a53L

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# instance fields
.field private greylist-max-o haveNextNextGaussian:Z

.field private greylist-max-o nextNextGaussian:D

.field private final greylist-max-o seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static synthetic blacklist $r8$lambda$oX7E-t8JmZ35SzngXfjAWFGfDRY(Ljava/util/Random;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Random;->lambda$ints$1(II)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rp5Szp5H9yFnzaR8EMQ98Oda6UU(Ljava/util/Random;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/Random;->lambda$ints$0(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 355
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x1ed8b55fac9decL

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 800
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "seed"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "nextNextGaussian"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "haveNextNextGaussian"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/util/Random;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 856
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/Random;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 860
    :try_start_3b
    sget-object v0, Ljava/util/Random;->unsafe:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/Random;

    .line 861
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/Random;->seedOffset:J
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4b

    .line 862
    nop

    .line 863
    return-void

    .line 862
    :catch_4b
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 337
    invoke-static {}, Ljava/util/Random;->seedUniquifier()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 338
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 6
    .param p1, "seed"    # J

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Random;

    if-ne v0, v1, :cond_1a

    .line 374
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_24

    .line 377
    :cond_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 378
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 380
    :goto_24
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Void;)V
    .registers 3
    .param p1, "unused"    # Ljava/lang/Void;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 342
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Void;Ljava/util/Random-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/Random;-><init>(Ljava/lang/Void;)V

    return-void
.end method

.method private blacklist boundedNextInt(II)I
    .registers 5
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 914
    sub-int v0, p2, p1

    .line 915
    .local v0, "n":I
    if-lez v0, :cond_a

    .line 916
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p1

    return v1

    .line 920
    :cond_a
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 921
    .local v1, "r":I
    if-lt v1, p1, :cond_a

    if-ge v1, p2, :cond_a

    .line 922
    return v1
.end method

.method public static whitelist test-api from(Ljava/util/random/RandomGenerator;)Ljava/util/Random;
    .registers 3
    .param p0, "generator"    # Ljava/util/random/RandomGenerator;

    .line 399
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    instance-of v0, p0, Ljava/util/Random;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Ljava/util/Random;

    .line 401
    .local v0, "rand":Ljava/util/Random;
    return-object v0

    .line 403
    .end local v0    # "rand":Ljava/util/Random;
    :cond_b
    new-instance v0, Ljava/util/Random$RandomWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Random$RandomWrapper;-><init>(Ljava/util/random/RandomGenerator;Ljava/util/Random-IA;)V

    return-object v0
.end method

.method private static greylist-max-o initialScramble(J)J
    .registers 6
    .param p0, "seed"    # J

    .line 383
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private synthetic blacklist lambda$ints$0(II)I
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 970
    invoke-direct {p0, p1, p2}, Ljava/util/Random;->boundedNextInt(II)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$ints$1(II)I
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 1018
    invoke-direct {p0, p1, p2}, Ljava/util/Random;->boundedNextInt(II)I

    move-result v0

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 819
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 823
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "seed"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v1

    .line 824
    .local v1, "seedVal":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_29

    .line 827
    invoke-direct {p0, v1, v2}, Ljava/util/Random;->resetSeed(J)V

    .line 828
    const-string v3, "nextNextGaussian"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 829
    const-string v3, "haveNextNextGaussian"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 830
    return-void

    .line 825
    :cond_29
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "Random: invalid seed"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o resetSeed(J)V
    .registers 7
    .param p1, "seedVal"    # J

    .line 865
    sget-object v0, Ljava/util/Random;->unsafe:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/Random;->seedOffset:J

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 866
    return-void
.end method

.method private static greylist seedUniquifier()J
    .registers 5

    .line 348
    nop

    :goto_1
    sget-object v0, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 349
    .local v0, "current":J
    const-wide v2, 0x106689d45497fdb5L    # 1.16138530132345E-229

    mul-long/2addr v2, v0

    .line 350
    .local v2, "next":J
    sget-object v4, Ljava/util/Random;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 351
    return-wide v2

    .line 352
    .end local v0    # "current":J
    .end local v2    # "next":J
    :cond_16
    goto :goto_1
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 847
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "seed"

    iget-object v2, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 848
    const-string v1, "nextNextGaussian"

    iget-wide v2, p0, Ljava/util/Random;->nextNextGaussian:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    .line 849
    const-string v1, "haveNextNextGaussian"

    iget-boolean v2, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 852
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 853
    monitor-exit p0

    return-void

    .line 843
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Ljava/util/Random;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 1178
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 1216
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 1159
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 1196
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;JDD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 3

    .line 904
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_16

    .line 905
    const-wide/32 v0, 0x125d4a66

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 906
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 908
    :cond_16
    new-instance v0, Ljava/util/Random$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljava/util/Random$$ExternalSyntheticLambda1;-><init>(Ljava/util/Random;)V

    invoke-static {v0}, Ljava/util/stream/IntStream;->generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 1013
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_16

    .line 1014
    const-wide/32 v0, 0x125d4a66

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1015
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_16
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 1018
    new-instance v0, Ljava/util/Random$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/Random$$ExternalSyntheticLambda2;-><init>(Ljava/util/Random;II)V

    invoke-static {v0}, Ljava/util/stream/IntStream;->generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 883
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 7
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 963
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_16

    .line 964
    const-wide/32 v0, 0x125d4a66

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 965
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;JII)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 967
    :cond_16
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 968
    invoke-static {p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 969
    new-instance v0, Ljava/util/Random$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p4}, Ljava/util/Random$$ExternalSyntheticLambda0;-><init>(Ljava/util/Random;II)V

    .line 970
    invoke-static {v0}, Ljava/util/stream/IntStream;->generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 971
    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 969
    return-object v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 1055
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 1037
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 1140
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 1097
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api next(I)I
    .registers 9
    .param p1, "bits"    # I

    .line 459
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 461
    .local v0, "seed":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 462
    .local v1, "oldseed":J
    const-wide v3, 0x5deece66dL

    mul-long/2addr v3, v1

    const-wide/16 v5, 0xb

    add-long/2addr v3, v5

    const-wide v5, 0xffffffffffffL

    and-long/2addr v3, v5

    .line 463
    .local v3, "nextseed":J
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    rsub-int/lit8 v5, p1, 0x30

    ushr-long v5, v3, v5

    long-to-int v5, v5

    return v5
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 3

    .line 636
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_1e

    .line 489
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 490
    .local v2, "rnd":I
    sub-int v3, v1, v0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 491
    .local v3, "n":I
    :goto_f
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "n":I
    .local v4, "n":I
    if-lez v3, :cond_1d

    .line 492
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    int-to-byte v5, v2

    aput-byte v5, p1, v0

    .line 491
    shr-int/lit8 v2, v2, 0x8

    move v0, v3

    move v3, v4

    goto :goto_f

    .end local v2    # "rnd":I
    .end local v3    # "i":I
    .end local v4    # "n":I
    .restart local v0    # "i":I
    :cond_1d
    goto :goto_2

    .line 493
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1e
    return-void
.end method

.method public whitelist test-api nextDouble()D
    .registers 5

    .line 717
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1b

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api nextFloat()F
    .registers 3

    .line 676
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized whitelist test-api nextGaussian()D
    .registers 11

    monitor-enter p0

    .line 772
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v0, :cond_c

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 774
    iget-wide v0, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_42

    monitor-exit p0

    return-wide v0

    .line 778
    .end local p0    # "this":Ljava/util/Random;
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    .line 779
    .local v0, "v1":D
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double/2addr v6, v2

    sub-double/2addr v6, v4

    .line 780
    .local v6, "v2":D
    mul-double v2, v0, v0

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    .line 781
    .local v2, "s":D
    cmpl-double v4, v2, v4

    if-gez v4, :cond_c

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_c

    .line 782
    invoke-static {v2, v3}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v4

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v8

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v4

    .line 783
    .local v4, "multiplier":D
    mul-double v8, v6, v4

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 784
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_42

    .line 785
    mul-double v8, v0, v4

    monitor-exit p0

    return-wide v8

    .line 771
    .end local v0    # "v1":D
    .end local v2    # "s":D
    .end local v4    # "multiplier":D
    .end local v6    # "v2":D
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 514
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 9
    .param p1, "bound"    # I

    .line 575
    if-lez p1, :cond_24

    .line 577
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    .line 578
    .local v1, "r":I
    add-int/lit8 v2, p1, -0x1

    .line 579
    .local v2, "m":I
    and-int v3, p1, v2

    if-nez v3, :cond_14

    .line 580
    int-to-long v3, p1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    shr-long/2addr v3, v0

    long-to-int v0, v3

    .end local v1    # "r":I
    .local v0, "r":I
    goto :goto_23

    .line 582
    .end local v0    # "r":I
    .restart local v1    # "r":I
    :cond_14
    move v3, v1

    .line 583
    .local v3, "u":I
    :goto_15
    rem-int v4, v3, p1

    move v1, v4

    sub-int v4, v3, v4

    add-int/2addr v4, v2

    if-gez v4, :cond_22

    .line 584
    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v3

    goto :goto_15

    .line 583
    :cond_22
    move v0, v1

    .line 587
    .end local v1    # "r":I
    .end local v3    # "u":I
    .restart local v0    # "r":I
    :goto_23
    return v0

    .line 576
    .end local v0    # "r":I
    .end local v2    # "m":I
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextLong()J
    .registers 6

    .line 611
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v0

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized whitelist test-api setSeed(J)V
    .registers 6
    .param p1, "seed"    # J

    monitor-enter p0

    .line 423
    :try_start_1
    iget-object v0, p0, Ljava/util/Random;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p2}, Ljava/util/Random;->initialScramble(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 425
    monitor-exit p0

    return-void

    .line 422
    .end local p0    # "this":Ljava/util/Random;
    .end local p1    # "seed":J
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method
