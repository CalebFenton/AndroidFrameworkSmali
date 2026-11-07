.class Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;
.super Ljava/lang/Object;
.source "DoubleAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/DoubleAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/DoubleBinaryOperator;

.field private final greylist-max-o identity:J

.field private final greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>(DLjava/util/function/DoubleBinaryOperator;J)V
    .registers 6
    .param p1, "value"    # D
    .param p3, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p4, "identity"    # J

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-wide p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    .line 265
    iput-object p3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    .line 266
    iput-wide p4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    .line 267
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 6

    .line 277
    iget-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 278
    .local v0, "d":D
    new-instance v2, Ljava/util/concurrent/atomic/DoubleAccumulator;

    iget-object v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v2, v3, v0, v1}, Ljava/util/concurrent/atomic/DoubleAccumulator;-><init>(Ljava/util/function/DoubleBinaryOperator;D)V

    .line 279
    .local v2, "a":Ljava/util/concurrent/atomic/DoubleAccumulator;
    iget-wide v3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    iput-wide v3, v2, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    .line 280
    return-object v2
.end method
