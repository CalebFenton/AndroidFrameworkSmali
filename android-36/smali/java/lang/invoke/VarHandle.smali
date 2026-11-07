.class public abstract Ljava/lang/invoke/VarHandle;
.super Ljava/lang/Object;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/VarHandle$AccessMode;,
        Ljava/lang/invoke/VarHandle$AccessType;,
        Ljava/lang/invoke/VarHandle$VarHandleDesc;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALL_MODES_BIT_MASK:I = 0x7fffffff

.field private static final greylist-max-o ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I = 0x7ff00

.field private static final greylist-max-o BITWISE_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I = 0x7fc00000

.field private static final greylist-max-o NUMERIC_ATOMIC_UPDATE_ACCESS_MODES_BIT_MASK:I = 0x380000

.field private static final greylist-max-o READ_ACCESS_MODES_BIT_MASK:I = 0x55

.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final greylist-max-o WRITE_ACCESS_MODES_BIT_MASK:I = 0xaa


# instance fields
.field private final greylist-max-o accessModesBitMask:I

.field private final greylist-max-o coordinateType0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o coordinateType1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o varType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 444
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;Ljava/lang/Class;)V
    .registers 10
    .param p3, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2222
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "backingArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "coordinateType0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "coordinateType1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2224
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2225
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2226
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2228
    .local v0, "backingArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p1, :cond_42

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_29

    goto :goto_42

    .line 2229
    :cond_29
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported backingArrayType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2232
    :cond_42
    :goto_42
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_4f

    .line 2233
    invoke-static {p1, p3}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    goto :goto_55

    .line 2235
    :cond_4f
    invoke-static {p1}, Ljava/lang/invoke/VarHandle;->unalignedAccessModesBitMask(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2237
    :goto_55
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Z)V
    .registers 4
    .param p2, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2189
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2191
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2192
    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2193
    invoke-static {p1, p2}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2194
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;ZLjava/lang/Class;)V
    .registers 5
    .param p2, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2204
    .local p1, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "coordinateType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2205
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    .line 2206
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    .line 2207
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    .line 2208
    invoke-static {p1, p2}, Ljava/lang/invoke/VarHandle;->alignedAccessModesBitMask(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    .line 2209
    return-void
.end method

.method public static whitelist test-api acquireFence()V
    .registers 1

    .line 2140
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 2141
    return-void
.end method

.method static greylist-max-o alignedAccessModesBitMask(Ljava/lang/Class;Z)I
    .registers 4
    .param p1, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    .line 2308
    .local p0, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v0, 0x7fffffff

    .line 2311
    .local v0, "bitMask":I
    if-eqz p1, :cond_7

    .line 2312
    and-int/lit8 v0, v0, 0x55

    .line 2318
    :cond_7
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_27

    .line 2321
    const v1, -0x380001

    and-int/2addr v0, v1

    .line 2325
    :cond_27
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_43

    .line 2327
    const v1, -0x7fc00001

    and-int/2addr v0, v1

    .line 2329
    :cond_43
    return v0
.end method

.method public static whitelist test-api fullFence()V
    .registers 1

    .line 2126
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->fullFence()V

    .line 2127
    return-void
.end method

.method public static whitelist test-api loadLoadFence()V
    .registers 1

    .line 2166
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->loadFence()V

    .line 2167
    return-void
.end method

.method public static whitelist test-api releaseFence()V
    .registers 1

    .line 2154
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 2155
    return-void
.end method

.method public static whitelist test-api storeStoreFence()V
    .registers 1

    .line 2178
    sget-object v0, Ljava/lang/invoke/VarHandle;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 2179
    return-void
.end method

.method static greylist-max-o unalignedAccessModesBitMask(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2344
    .local p0, "varType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xff

    .line 2347
    .local v0, "bitMask":I
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_12

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_12

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_12

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_16

    .line 2349
    :cond_12
    const v1, 0x7ff00

    or-int/2addr v0, v1

    .line 2353
    :cond_16
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_1e

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_21

    .line 2354
    :cond_1e
    const/high16 v1, 0x380000

    or-int/2addr v0, v1

    .line 2358
    :cond_21
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_29

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_2c

    .line 2359
    :cond_29
    const/high16 v1, 0x7fc00000    # Float.NaN

    or-int/2addr v0, v1

    .line 2361
    :cond_2c
    return v0
.end method


# virtual methods
.method public final whitelist test-api accessModeType(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1961
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 1964
    iget-object v0, p1, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/invoke/VarHandle$AccessType;->accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 1966
    :cond_12
    iget-object v0, p1, Ljava/lang/invoke/VarHandle$AccessMode;->at:Ljava/lang/invoke/VarHandle$AccessType;

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    iget-object v5, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/invoke/VarHandle$AccessType;->accessModeType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public final varargs native whitelist test-api compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api compareAndSet([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final whitelist test-api coordinateTypes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 1925
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1926
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    if-nez v0, :cond_12

    .line 1927
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1929
    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType0:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/lang/invoke/VarHandle;->coordinateType1:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final varargs native whitelist test-api get([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndAdd([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndAddAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndAddRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseAnd([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseAndAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseAndRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseOr([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseOrAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseOrRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseXor([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseXorAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndBitwiseXorRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndSet([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndSetAcquire([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getAndSetRelease([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getOpaque([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api getVolatile([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final whitelist test-api isAccessModeSupported(Ljava/lang/invoke/VarHandle$AccessMode;)Z
    .registers 5
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 1990
    invoke-virtual {p1}, Ljava/lang/invoke/VarHandle$AccessMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 1991
    .local v0, "testBit":I
    iget v2, p0, Ljava/lang/invoke/VarHandle;->accessModesBitMask:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final varargs native whitelist test-api set([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api setOpaque([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api setRelease([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api setVolatile([Ljava/lang/Object;)V
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final whitelist test-api toMethodHandle(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;

    .line 2030
    invoke-virtual {p0, p1}, Ljava/lang/invoke/VarHandle;->accessModeType(Ljava/lang/invoke/VarHandle$AccessMode;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 2031
    .local v0, "type":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles;->varHandleExactInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1895
    nop

    .line 1896
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle;->varType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1897
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle;->coordinateTypes()Ljava/util/List;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1895
    const-string v1, "VarHandle[varType=%s, coord=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api varType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1910
    iget-object v0, p0, Ljava/lang/invoke/VarHandle;->varType:Ljava/lang/Class;

    return-object v0
.end method

.method public final varargs native whitelist test-api weakCompareAndSet([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api weakCompareAndSetAcquire([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api weakCompareAndSetPlain([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api weakCompareAndSetRelease([Ljava/lang/Object;)Z
    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method
