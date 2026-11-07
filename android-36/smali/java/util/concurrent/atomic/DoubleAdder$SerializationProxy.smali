.class Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;
.super Ljava/lang/Object;
.source "DoubleAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/DoubleAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final greylist-max-o value:D


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/atomic/DoubleAdder;)V
    .registers 4
    .param p1, "a"    # Ljava/util/concurrent/atomic/DoubleAdder;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;->value:D

    .line 225
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 4

    .line 235
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/DoubleAdder;-><init>()V

    .line 236
    .local v0, "a":Ljava/util/concurrent/atomic/DoubleAdder;
    iget-wide v1, p0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    .line 237
    return-object v0
.end method
