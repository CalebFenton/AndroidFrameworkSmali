.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist PAIR:Ljava/lang/invoke/VarHandle;


# instance fields
.field private volatile greylist-max-o pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 196
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 197
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/AtomicStampedReference;

    const-string v2, "pair"

    const-class v3, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicStampedReference;->PAIR:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 201
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 202
    return-void

    .line 199
    :catch_12
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;I)V
    .registers 4
    .param p2, "initialStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 78
    return-void
.end method

.method private greylist-max-o casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<",
            "TV;>;",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<",
            "TV;>;)Z"
        }
    .end annotation

    .line 205
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->PAIR:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicStampedReference;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api attemptStamp(Ljava/lang/Object;I)Z
    .registers 5
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    .line 185
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 186
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_16

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_14

    .line 189
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 186
    :goto_17
    return v1
.end method

.method public whitelist test-api compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 7
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .line 150
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 151
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1e

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-ne p3, v1, :cond_1e

    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_12

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p4, v1, :cond_1c

    .line 156
    :cond_12
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 151
    :goto_1f
    return v1
.end method

.method public whitelist test-api get([I)Ljava/lang/Object;
    .registers 5
    .param p1, "stampHolder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .line 107
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 108
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    const/4 v1, 0x0

    iget v2, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    aput v2, p1, v1

    .line 109
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public whitelist test-api getReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 86
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getStamp()I
    .registers 2

    .line 95
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    return v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;I)V
    .registers 5
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 167
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_10

    .line 168
    :cond_a
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 169
    :cond_10
    return-void
.end method

.method public whitelist test-api weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 6
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .line 130
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
