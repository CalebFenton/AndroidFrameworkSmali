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
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/DoubleBinaryOperator;

.field private final identity:J

.field private final value:D


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;J)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p4, "identity"    # J

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 228
    iput-wide p1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    #@5
    .line 229
    iput-object p3, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    #@7
    .line 230
    iput-wide p4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    #@9
    .line 227
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 241
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->identity:J

    #@2
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@5
    move-result-wide v2

    #@6
    .line 242
    .local v2, "d":D
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAccumulator;

    #@8
    iget-object v1, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->function:Ljava/util/function/DoubleBinaryOperator;

    #@a
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/DoubleAccumulator;-><init>(Ljava/util/function/DoubleBinaryOperator;D)V

    #@d
    .line 243
    .local v0, "a":Ljava/util/concurrent/atomic/DoubleAccumulator;
    iget-wide v4, p0, Ljava/util/concurrent/atomic/DoubleAccumulator$SerializationProxy;->value:D

    #@f
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, v0, Ljava/util/concurrent/atomic/DoubleAccumulator;->base:J

    #@15
    .line 244
    return-object v0
.end method
