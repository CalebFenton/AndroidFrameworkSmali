.class final Ljava/util/Random$RandomWrapper;
.super Ljava/util/Random;
.source "Random.java"

# interfaces
.implements Ljava/util/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomWrapper"
.end annotation


# instance fields
.field private final blacklist generator:Ljava/util/random/RandomGenerator;


# direct methods
.method private constructor blacklist <init>(Ljava/util/random/RandomGenerator;)V
    .registers 3
    .param p1, "randomToWrap"    # Ljava/util/random/RandomGenerator;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/util/Random;-><init>(Ljava/lang/Void;Ljava/util/Random-IA;)V

    .line 105
    iput-object p1, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/random/RandomGenerator;Ljava/util/Random-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/Random$RandomWrapper;-><init>(Ljava/util/random/RandomGenerator;)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "not serializable"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "not serializable"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 276
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->doubles()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 286
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->doubles(DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 271
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->doubles(J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 281
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":D
    .end local p5    # "randomNumberBound":D
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":D
    .local v5, "randomNumberBound":D
    invoke-interface/range {v0 .. v6}, Ljava/util/random/RandomGenerator;->doubles(JDD)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 2

    .line 236
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->ints()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 246
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->ints(II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 231
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->ints(J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 241
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->ints(JII)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isDeprecated()Z
    .registers 2

    .line 141
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->isDeprecated()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 256
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->longs()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 251
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->longs(J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 266
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->longs(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 261
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":J
    .end local p5    # "randomNumberBound":J
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":J
    .local v5, "randomNumberBound":J
    invoke-interface/range {v0 .. v6}, Ljava/util/random/RandomGenerator;->longs(JJJ)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api next(I)I
    .registers 3
    .param p1, "bits"    # I

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 2

    .line 181
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 146
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1}, Ljava/util/random/RandomGenerator;->nextBytes([B)V

    .line 147
    return-void
.end method

.method public whitelist test-api nextDouble()D
    .registers 3

    .line 201
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextDouble(D)D
    .registers 5
    .param p1, "bound"    # D

    .line 206
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->nextDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextDouble(DD)D
    .registers 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 211
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextExponential()D
    .registers 3

    .line 216
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextExponential()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextFloat()F
    .registers 2

    .line 186
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextFloat()F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextFloat(F)F
    .registers 3
    .param p1, "bound"    # F

    .line 191
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1}, Ljava/util/random/RandomGenerator;->nextFloat(F)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextFloat(FF)F
    .registers 4
    .param p1, "origin"    # F
    .param p2, "bound"    # F

    .line 196
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextGaussian()D
    .registers 3

    .line 221
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextGaussian(DD)D
    .registers 7
    .param p1, "mean"    # D
    .param p3, "stddev"    # D

    .line 226
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->nextGaussian(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 151
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 3
    .param p1, "bound"    # I

    .line 156
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1}, Ljava/util/random/RandomGenerator;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(II)I
    .registers 4
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 161
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 166
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(J)J
    .registers 5
    .param p1, "bound"    # J

    .line 171
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Ljava/util/random/RandomGenerator;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(JJ)J
    .registers 7
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 176
    iget-object v0, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api setSeed(J)V
    .registers 4
    .param p1, "seed"    # J

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RandomWrapper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Random$RandomWrapper;->generator:Ljava/util/random/RandomGenerator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
