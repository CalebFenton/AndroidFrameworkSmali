.class Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;
.super Ljava/lang/Object;
.source "LongAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/LongAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o function:Ljava/util/function/LongBinaryOperator;

.field private final greylist-max-o identity:J

.field private final greylist-max-o value:J


# direct methods
.method constructor greylist-max-o <init>(JLjava/util/function/LongBinaryOperator;J)V
    .registers 6
    .param p1, "value"    # J
    .param p3, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p4, "identity"    # J

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-wide p1, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->value:J

    .line 257
    iput-object p3, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->function:Ljava/util/function/LongBinaryOperator;

    .line 258
    iput-wide p4, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->identity:J

    .line 259
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 5

    .line 269
    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator;

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->identity:J

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/LongAccumulator;-><init>(Ljava/util/function/LongBinaryOperator;J)V

    .line 270
    .local v0, "a":Ljava/util/concurrent/atomic/LongAccumulator;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->value:J

    iput-wide v1, v0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 271
    return-object v0
.end method
