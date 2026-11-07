.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist VALUE:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = 0x4098b70a4f3ffc33L


# instance fields
.field private volatile greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 57
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "value"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 60
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 61
    return-void

    .line 58
    :catch_12
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 3
    .param p1, "initialValue"    # Z

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_8

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 73
    :cond_8
    return-void
.end method


# virtual methods
.method public final whitelist test-api compareAndExchange(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 268
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 269
    nop

    .line 270
    nop

    .line 268
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;II)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final whitelist test-api compareAndExchangeAcquire(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 286
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 287
    nop

    .line 288
    nop

    .line 286
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;II)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final whitelist test-api compareAndExchangeRelease(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 304
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 305
    nop

    .line 306
    nop

    .line 304
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;II)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final whitelist test-api compareAndSet(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 102
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 103
    nop

    .line 104
    nop

    .line 102
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api get()Z
    .registers 2

    .line 88
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api getAcquire()Z
    .registers 2

    .line 241
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api getAndSet(Z)Z
    .registers 3
    .param p1, "newValue"    # Z

    .line 175
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api getOpaque()Z
    .registers 2

    .line 219
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api getPlain()Z
    .registers 2

    .line 196
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicBoolean;)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist test-api lazySet(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 164
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 165
    return-void
.end method

.method public final whitelist test-api set(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 153
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 154
    return-void
.end method

.method public final whitelist test-api setOpaque(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 230
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 231
    return-void
.end method

.method public final whitelist test-api setPlain(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 208
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 209
    return-void
.end method

.method public final whitelist test-api setRelease(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .line 252
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    .line 253
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api weakCompareAndSet(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 125
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 126
    nop

    .line 127
    nop

    .line 125
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 338
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 339
    nop

    .line 340
    nop

    .line 338
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api weakCompareAndSetPlain(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 141
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 142
    nop

    .line 143
    nop

    .line 141
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetRelease(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 355
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 356
    nop

    .line 357
    nop

    .line 355
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(ZZ)Z
    .registers 4
    .param p1, "expectedValue"    # Z
    .param p2, "newValue"    # Z

    .line 321
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:Ljava/lang/invoke/VarHandle;

    .line 322
    nop

    .line 323
    nop

    .line 321
    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicBoolean;II)Z

    move-result v0

    return v0
.end method
