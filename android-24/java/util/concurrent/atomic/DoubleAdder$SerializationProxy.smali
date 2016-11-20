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
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final value:D


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/DoubleAdder;)V
    .locals 2
    .param p1, "a"    # Ljava/util/concurrent/atomic/DoubleAdder;

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/DoubleAdder;->sum()D

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;->value:D

    #@9
    .line 197
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/DoubleAdder;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/DoubleAdder;-><init>()V

    #@5
    .line 210
    .local v0, "a":Ljava/util/concurrent/atomic/DoubleAdder;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/DoubleAdder$SerializationProxy;->value:D

    #@7
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@a
    move-result-wide v2

    #@b
    iput-wide v2, v0, Ljava/util/concurrent/atomic/DoubleAdder;->base:J

    #@d
    .line 211
    return-object v0
.end method
