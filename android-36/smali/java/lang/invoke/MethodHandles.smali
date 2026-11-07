.class public Ljava/lang/invoke/MethodHandles;
.super Ljava/lang/Object;
.source "MethodHandles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandles$Lookup;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist HANDLES:[Ljava/lang/invoke/MethodHandle;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private static final blacklist IDENTITY_MHS:[Ljava/lang/invoke/MethodHandle;

.field static final blacklist MH_Array_newInstance:I = 0xb

.field static final blacklist MH_LIMIT:I = 0xc

.field static final blacklist MH_arrayIdentity:I = 0x5

.field static final blacklist MH_cast:I = 0x0

.field static final blacklist MH_copyAsPrimitiveArray:I = 0x2

.field static final blacklist MH_countedLoopPred:I = 0x6

.field static final blacklist MH_countedLoopStep:I = 0x7

.field static final blacklist MH_fillNewArray:I = 0x4

.field static final blacklist MH_fillNewTypedArray:I = 0x3

.field static final blacklist MH_initIterator:I = 0x8

.field static final blacklist MH_iterateNext:I = 0xa

.field static final blacklist MH_iteratePred:I = 0x9

.field static final blacklist MH_selectAlternative:I = 0x1

.field private static final blacklist ZERO_MHS:[Ljava/lang/invoke/MethodHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 1

    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    nop

    .line 3219
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/invoke/MethodHandle;

    sput-object v1, Ljava/lang/invoke/MethodHandles;->IDENTITY_MHS:[Ljava/lang/invoke/MethodHandle;

    .line 3258
    new-array v0, v0, [Ljava/lang/invoke/MethodHandle;

    sput-object v0, Ljava/lang/invoke/MethodHandles;->ZERO_MHS:[Ljava/lang/invoke/MethodHandle;

    .line 5982
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/invoke/MethodHandle;

    sput-object v0, Ljava/lang/invoke/MethodHandles;->HANDLES:[Ljava/lang/invoke/MethodHandle;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api arrayConstructor(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2322
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2329
    new-instance v0, Ljava/lang/invoke/Transformers$ArrayConstructor;

    invoke-direct {v0, p0}, Ljava/lang/invoke/Transformers$ArrayConstructor;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 2323
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an array class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static greylist-max-o arrayElementGetter([BI)B
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I

    .line 2440
    aget-byte v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([CI)C
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I

    .line 2442
    aget-char v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([DI)D
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I

    .line 2447
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public static greylist-max-o arrayElementGetter([FI)F
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I

    .line 2446
    aget v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([II)I
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I

    .line 2444
    aget v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([JI)J
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I

    .line 2445
    aget-wide v0, p0, p1

    return-wide v0
.end method

.method private static blacklist arrayElementGetter([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .line 2448
    aget-object v0, p0, p1

    return-object v0
.end method

.method public static whitelist test-api arrayElementGetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2413
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2414
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2415
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const-string v2, "arrayElementGetter"

    const-class v3, Ljava/lang/invoke/MethodHandles;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2b

    .line 2417
    :try_start_13
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 2419
    invoke-static {v0, p0, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 2417
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_23} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_23} :catch_24

    return-object v1

    .line 2420
    :catch_24
    move-exception v1

    .line 2421
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2427
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_2b
    const/4 v1, 0x2

    :try_start_2c
    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v1, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v1, v4

    .line 2428
    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2431
    .local v1, "arrayElementGetter":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/invoke/MethodHandleImpl;

    .line 2432
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v6

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 2434
    invoke-static {v0, p0, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v6, v7, v4, v3}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_4e} :catch_4f

    .line 2431
    return-object v2

    .line 2435
    .end local v1    # "arrayElementGetter":Ljava/lang/reflect/Method;
    :catch_4f
    move-exception v1

    .line 2436
    .local v1, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static greylist-max-o arrayElementGetter([SI)S
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I

    .line 2443
    aget-short v0, p0, p1

    return v0
.end method

.method public static greylist-max-o arrayElementGetter([ZI)Z
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I

    .line 2441
    aget-boolean v0, p0, p1

    return v0
.end method

.method public static whitelist test-api arrayElementSetter(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2462
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2463
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2464
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const-string v2, "arrayElementSetter"

    const-class v3, Ljava/lang/invoke/MethodHandles;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_30

    .line 2466
    :try_start_14
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v6

    aput-object v0, v5, v4

    .line 2468
    invoke-static {v7, p0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 2466
    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_28} :catch_29

    return-object v1

    .line 2469
    :catch_29
    move-exception v1

    .line 2470
    .local v1, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2475
    .end local v1    # "exception":Ljava/lang/ReflectiveOperationException;
    :cond_30
    const/4 v1, 0x3

    :try_start_31
    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/Object;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v5

    .line 2476
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2479
    .local v2, "arrayElementSetter":Ljava/lang/reflect/Method;
    new-instance v3, Ljava/lang/invoke/MethodHandleImpl;

    .line 2480
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v7

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v6

    aput-object v0, v5, v4

    .line 2482
    invoke-static {v9, p0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-direct {v3, v7, v8, v1, v4}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V
    :try_end_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_5a} :catch_5b

    .line 2479
    return-object v3

    .line 2483
    .end local v2    # "arrayElementSetter":Ljava/lang/reflect/Method;
    :catch_5b
    move-exception v1

    .line 2484
    .local v1, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static greylist-max-o arrayElementSetter([BIB)V
    .registers 3
    .param p0, "array"    # [B
    .param p1, "i"    # I
    .param p2, "val"    # B

    .line 2489
    aput-byte p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([CIC)V
    .registers 3
    .param p0, "array"    # [C
    .param p1, "i"    # I
    .param p2, "val"    # C

    .line 2493
    aput-char p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([DID)V
    .registers 4
    .param p0, "array"    # [D
    .param p1, "i"    # I
    .param p2, "val"    # D

    .line 2503
    aput-wide p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([FIF)V
    .registers 3
    .param p0, "array"    # [F
    .param p1, "i"    # I
    .param p2, "val"    # F

    .line 2501
    aput p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([III)V
    .registers 3
    .param p0, "array"    # [I
    .param p1, "i"    # I
    .param p2, "val"    # I

    .line 2497
    aput p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([JIJ)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "i"    # I
    .param p2, "val"    # J

    .line 2499
    aput-wide p2, p0, p1

    return-void
.end method

.method private static blacklist arrayElementSetter([Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "i"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .line 2504
    aput-object p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([SIS)V
    .registers 3
    .param p0, "array"    # [S
    .param p1, "i"    # I
    .param p2, "val"    # S

    .line 2495
    aput-short p2, p0, p1

    return-void
.end method

.method public static greylist-max-o arrayElementSetter([ZIZ)V
    .registers 3
    .param p0, "array"    # [Z
    .param p1, "i"    # I
    .param p2, "val"    # Z

    .line 2491
    aput-boolean p2, p0, p1

    return-void
.end method

.method public static whitelist test-api arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2561
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2562
    invoke-static {p0}, Ljava/lang/invoke/ArrayElementVarHandle;->create(Ljava/lang/Class;)Ljava/lang/invoke/ArrayElementVarHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist arrayLength([B)I
    .registers 2
    .param p0, "array"    # [B

    .line 2378
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([C)I
    .registers 2
    .param p0, "array"    # [C

    .line 2380
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([D)I
    .registers 2
    .param p0, "array"    # [D

    .line 2385
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([F)I
    .registers 2
    .param p0, "array"    # [F

    .line 2384
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([I)I
    .registers 2
    .param p0, "array"    # [I

    .line 2382
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([J)I
    .registers 2
    .param p0, "array"    # [J

    .line 2383
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 2386
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([S)I
    .registers 2
    .param p0, "array"    # [S

    .line 2381
    array-length v0, p0

    return v0
.end method

.method private static blacklist arrayLength([Z)I
    .registers 2
    .param p0, "array"    # [Z

    .line 2379
    array-length v0, p0

    return v0
.end method

.method public static whitelist test-api arrayLength(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2352
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2355
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2356
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p0

    goto :goto_14

    :cond_12
    const-class v1, [Ljava/lang/Object;

    .line 2359
    .local v1, "reducedArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_14
    :try_start_14
    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string v3, "arrayLength"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 2360
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2362
    .local v2, "arrayLength":Ljava/lang/reflect/Method;
    new-instance v3, Ljava/lang/invoke/MethodHandleImpl;

    .line 2363
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2365
    invoke-static {v6, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v3, v4, v5, v7, v6}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_32} :catch_33

    .line 2362
    return-object v3

    .line 2366
    .end local v2    # "arrayLength":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v2

    .line 2367
    .local v2, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2353
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "reducedArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "nsme":Ljava/lang/NoSuchMethodException;
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an array class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist buildCommonSuffix(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .param p4, "cpSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 4757
    .local p0, "init":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p1, "step":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p2, "pred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p3, "fini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/lang/invoke/MethodHandles;->longestParameterList(Ljava/util/stream/Stream;I)Ljava/util/List;

    move-result-object v0

    .line 4758
    .local v0, "longest1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/invoke/MethodHandles;->longestParameterList(Ljava/util/stream/Stream;I)Ljava/util/List;

    move-result-object v4

    .line 4759
    .local v4, "longest2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-array v3, v3, [Ljava/util/List;

    aput-object v0, v3, v1

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandles;->longestParameterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api byteArrayViewVarHandle(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/VarHandle;
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2644
    .local p0, "viewArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2645
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->checkTypeIsViewable(Ljava/lang/Class;)V

    .line 2646
    invoke-static {p0, p1}, Ljava/lang/invoke/ByteArrayViewVarHandle;->create(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/ByteArrayViewVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api byteBufferViewVarHandle(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/VarHandle;
    .registers 3
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/nio/ByteOrder;",
            ")",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2732
    .local p0, "viewArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->checkClassIsArray(Ljava/lang/Class;)V

    .line 2733
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->checkTypeIsViewable(Ljava/lang/Class;)V

    .line 2734
    invoke-static {p0, p1}, Ljava/lang/invoke/ByteBufferViewVarHandle;->create(Ljava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/invoke/ByteBufferViewVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api catchException(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "handler"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 4291
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 4292
    .local v0, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 4293
    .local v1, "htype":Ljava/lang/invoke/MethodType;
    const-class v2, Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 4295
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4a

    .line 4296
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 4298
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_43

    .line 4300
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v3, v4, v2, v3}, Ljava/lang/invoke/MethodHandles;->dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    .line 4301
    if-eqz p2, :cond_3c

    .line 4306
    new-instance v2, Ljava/lang/invoke/Transformers$CatchException;

    invoke-direct {v2, p0, p2, p1}, Ljava/lang/invoke/Transformers$CatchException;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V

    return-object v2

    .line 4302
    :cond_3c
    const-string v2, "target and handler types"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4299
    :cond_43
    const-string v2, "target and handler return types"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4297
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handler does not accept exception type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4294
    :cond_62
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o checkClassIsArray(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2373
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2376
    return-void

    .line 2374
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkTypeIsViewable(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2389
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_32

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_32

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_32

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_32

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_32

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    goto :goto_32

    .line 2397
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2395
    :cond_32
    :goto_32
    return-void
.end method

.method public static whitelist test-api collectArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 3865
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3866
    .local v0, "newType":Ljava/lang/invoke/MethodType;
    new-instance v1, Ljava/lang/invoke/Transformers$CollectArguments;

    invoke-direct {v1, p0, p2, p1, v0}, Ljava/lang/invoke/Transformers$CollectArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static greylist-max-o collectArgumentsChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 9
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3870
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3871
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3872
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 3873
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 3874
    .local v3, "filterArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ltz p1, :cond_47

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_1c

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v4

    if-gt p1, v4, :cond_47

    :cond_1c
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_26

    .line 3875
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v4

    if-ge p1, v4, :cond_47

    .line 3878
    :cond_26
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_2f

    .line 3879
    invoke-virtual {v0, p1, v3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 3881
    :cond_2f
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_40

    .line 3884
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, p1, v4}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 3882
    :cond_40
    const-string v4, "target and filter types do not match"

    invoke-static {v4, v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3876
    :cond_47
    const-string v4, "position is out of range for target"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, p0, v5}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static whitelist test-api constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3134
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3135
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2f

    .line 3137
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 3138
    .local v0, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual {v0, p1, p0}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3139
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->zero()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3140
    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandles;->zero(Lsun/invoke/util/Wrapper;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 3141
    :cond_21
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 3136
    .end local v0    # "w":Lsun/invoke/util/Wrapper;
    :cond_2f
    const-string v0, "void type"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3143
    :cond_36
    if-nez p1, :cond_3f

    .line 3144
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandles;->zero(Lsun/invoke/util/Wrapper;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 3145
    :cond_3f
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist copyTypes([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 3403
    array-length v0, p0

    const-class v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api countedLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "iterations"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 5201
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->empty(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->countedLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api countedLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 18
    .param p0, "start"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "end"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 5325
    invoke-static/range {p0 .. p3}, Ljava/lang/invoke/MethodHandles;->countedLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 5326
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 5327
    .local v0, "counterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 5328
    .local v1, "limitType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 5332
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/invoke/MethodHandles;->getConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 5333
    .local v3, "incr":Ljava/lang/invoke/MethodHandle;
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/invoke/MethodHandles;->getConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 5334
    .local v4, "pred":Ljava/lang/invoke/MethodHandle;
    const/4 v5, 0x0

    .line 5335
    .local v5, "retv":Ljava/lang/invoke/MethodHandle;
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v6, :cond_48

    .line 5336
    new-array v6, v7, [Ljava/lang/Class;

    aput-object v2, v6, v8

    invoke-static {v3, v7, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 5337
    new-array v6, v7, [Ljava/lang/Class;

    aput-object v2, v6, v8

    invoke-static {v4, v7, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 5338
    invoke-static {v2}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    new-array v9, v7, [Ljava/lang/Class;

    aput-object v0, v9, v8

    invoke-static {v6, v8, v9}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 5340
    :cond_48
    new-array v6, v7, [Ljava/lang/Class;

    aput-object v0, v6, v8

    move-object/from16 v9, p3

    invoke-static {v9, v8, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 5342
    .end local p3    # "body":Ljava/lang/invoke/MethodHandle;
    .local v6, "body":Ljava/lang/invoke/MethodHandle;
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/invoke/MethodHandle;

    aput-object p1, v9, v8

    const/4 v10, 0x0

    aput-object v10, v9, v7

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v11, 0x3

    aput-object v5, v9, v11

    .line 5343
    .local v9, "loopLimit":[Ljava/lang/invoke/MethodHandle;
    new-array v12, v10, [Ljava/lang/invoke/MethodHandle;

    aput-object p2, v12, v8

    aput-object v6, v12, v7

    .line 5344
    .local v12, "bodyClause":[Ljava/lang/invoke/MethodHandle;
    new-array v13, v10, [Ljava/lang/invoke/MethodHandle;

    aput-object p0, v13, v8

    aput-object v3, v13, v7

    .line 5345
    .local v13, "indexVar":[Ljava/lang/invoke/MethodHandle;
    new-array v11, v11, [[Ljava/lang/invoke/MethodHandle;

    aput-object v9, v11, v8

    aput-object v12, v11, v7

    aput-object v13, v11, v10

    invoke-static {v11}, Ljava/lang/invoke/MethodHandles;->loop([[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    return-object v7
.end method

.method private static blacklist countedLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 14
    .param p0, "start"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "end"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 5349
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5351
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5352
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 5353
    .local v0, "counterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f8

    .line 5356
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_e5

    .line 5360
    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 5361
    .local v1, "bodyType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 5362
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 5364
    .local v3, "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_33

    move v4, v6

    goto :goto_34

    :cond_33
    move v4, v5

    .line 5365
    .local v4, "vsize":I
    :goto_34
    const-string v7, "body function"

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_45

    goto :goto_52

    .line 5367
    :cond_45
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v6

    invoke-virtual {v1, v6, v5}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 5368
    .local v5, "expected":Ljava/lang/invoke/MethodType;
    invoke-static {v7, v1, v5}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 5369
    .end local v5    # "expected":Ljava/lang/invoke/MethodType;
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_d8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_d8

    .line 5374
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 5375
    .local v5, "outerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_80

    .line 5377
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v5

    .line 5378
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 5380
    :cond_80
    invoke-static {v0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 5381
    .local v7, "expected":Ljava/lang/invoke/MethodType;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 5384
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    if-eq v8, v9, :cond_ae

    .line 5385
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_a3

    goto :goto_ae

    .line 5386
    :cond_a3
    const-string v6, "end parameter types"

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-static {v6, v8, v7}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 5388
    :cond_ae
    :goto_ae
    if-eqz p2, :cond_cc

    .line 5389
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 5390
    .local v8, "initType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v8}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v9

    if-ne v9, v2, :cond_c1

    .line 5391
    invoke-virtual {v8, v6, v5}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_c1

    goto :goto_cc

    .line 5392
    :cond_c1
    const-string v6, "loop initializer"

    invoke-static {v2, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-static {v6, v8, v9}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 5395
    .end local v8    # "initType":Ljava/lang/invoke/MethodType;
    :cond_cc
    :goto_cc
    return-void

    .line 5382
    :cond_cd
    const-string v6, "start parameter types"

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-static {v6, v8, v7}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 5371
    .end local v5    # "outerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v7    # "expected":Ljava/lang/invoke/MethodType;
    :cond_d8
    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 5372
    .local v5, "expected":Ljava/lang/invoke/MethodType;
    invoke-static {v7, v1, v5}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 5357
    .end local v1    # "bodyType":Ljava/lang/invoke/MethodType;
    .end local v2    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "vsize":I
    .end local v5    # "expected":Ljava/lang/invoke/MethodType;
    :cond_e5
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 5358
    .local v1, "expected":Ljava/lang/invoke/MethodType;
    const-string v2, "end function"

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5354
    .end local v1    # "expected":Ljava/lang/invoke/MethodType;
    :cond_f8
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 5355
    .restart local v1    # "expected":Ljava/lang/invoke/MethodType;
    const-string v2, "start function"

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist countedLoopPredicate(II)Z
    .registers 3
    .param p0, "limit"    # I
    .param p1, "counter"    # I

    .line 5893
    if-ge p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist countedLoopStep(II)I
    .registers 3
    .param p0, "limit"    # I
    .param p1, "counter"    # I

    .line 5907
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public static whitelist test-api doWhileLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p0, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "body"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pred"    # Ljava/lang/invoke/MethodHandle;

    .line 5017
    invoke-static {p0, p2, p1}, Ljava/lang/invoke/MethodHandles;->whileLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 5018
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->identityOrVoid(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 5019
    .local v0, "fini":Ljava/lang/invoke/MethodHandle;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/invoke/MethodHandle;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v4, 0x2

    aput-object p2, v1, v4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    .line 5020
    .local v1, "clause":[Ljava/lang/invoke/MethodHandle;
    new-array v3, v3, [[Ljava/lang/invoke/MethodHandle;

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/lang/invoke/MethodHandles;->loop([[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I
    .registers 10
    .param p0, "oldType"    # Ljava/lang/invoke/MethodType;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)I"
        }
    .end annotation

    .line 3425
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3426
    .local v0, "dropped":I
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 3427
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3428
    .local v1, "outargs":I
    add-int v2, v1, v0

    .line 3429
    .local v2, "inargs":I
    if-ltz p1, :cond_12

    if-gt p1, v1, :cond_12

    .line 3433
    return v0

    .line 3430
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no argument type to remove"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p0, v4, p2, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3430
    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist test-api dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3399
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->copyTypes([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3485
    .local p2, "valueTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->copyTypes([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3408
    .local p2, "valueTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3409
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, p1, p2}, Ljava/lang/invoke/MethodHandles;->dropArgumentChecks(Ljava/lang/invoke/MethodType;ILjava/util/List;)I

    move-result v1

    .line 3410
    .local v1, "dropped":I
    invoke-virtual {v0, p1, p2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 3411
    .local v2, "newType":Ljava/lang/invoke/MethodType;
    if-nez v1, :cond_f

    return-object p0

    .line 3421
    :cond_f
    new-instance v3, Ljava/lang/invoke/Transformers$DropArguments;

    invoke-direct {v3, v2, p0, p1, v1}, Ljava/lang/invoke/Transformers$DropArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;II)V

    return-object v3
.end method

.method public static whitelist test-api dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "skip"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3593
    .local p2, "newTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles;->dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;IZ)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "skip"    # I
    .param p3, "pos"    # I
    .param p4, "nullOnFailure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;IZ)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3491
    .local p2, "newTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->copyTypes([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3492
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    .line 3493
    .local v0, "oldTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3494
    .local v1, "match":I
    if-eqz p1, :cond_2b

    .line 3495
    if-ltz p1, :cond_20

    if-gt p1, v1, :cond_20

    .line 3498
    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 3499
    sub-int/2addr v1, p1

    goto :goto_2b

    .line 3496
    :cond_20
    const-string v2, "illegal skip"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, p0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3501
    :cond_2b
    :goto_2b
    move-object v2, p2

    .line 3502
    .local v2, "addTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3503
    .local v3, "add":I
    if-eqz p3, :cond_47

    .line 3504
    if-ltz p3, :cond_3c

    if-gt p3, v3, :cond_3c

    .line 3507
    invoke-interface {v2, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 3508
    sub-int/2addr v3, p3

    .line 3509
    goto :goto_47

    .line 3505
    :cond_3c
    const-string v4, "illegal pos"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, p2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3512
    :cond_47
    :goto_47
    if-gt v1, v3, :cond_6f

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_6f

    .line 3518
    :cond_55
    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 3519
    sub-int/2addr v3, v1

    .line 3520
    nop

    .line 3523
    move-object v5, p0

    .line 3524
    .local v5, "adapter":Ljava/lang/invoke/MethodHandle;
    if-lez v3, :cond_64

    .line 3525
    add-int v6, p1, v1

    invoke-static {v5, v6, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 3528
    :cond_64
    if-lez p3, :cond_6e

    .line 3529
    invoke-interface {p2, v4, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v5, p1, v4}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 3532
    :cond_6e
    return-object v5

    .line 3513
    .end local v5    # "adapter":Ljava/lang/invoke/MethodHandle;
    :cond_6f
    :goto_6f
    if-eqz p4, :cond_73

    .line 3514
    const/4 v4, 0x0

    return-object v4

    .line 3516
    :cond_73
    const-string v4, "argument lists do not match"

    invoke-static {v4, v0, p2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static whitelist test-api dropReturn(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 3608
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3610
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 3611
    .local v1, "oldReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_10

    .line 3612
    return-object p0

    .line 3614
    :cond_10
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 3620
    .local v2, "newType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p0, v2}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist test-api empty(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 3215
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->zero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 2834
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static whitelist test-api explicitCastArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 2997
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    .line 2999
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3000
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    if-ne v0, p1, :cond_a

    return-object p0

    .line 3001
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3002
    const-class v1, Ljava/lang/invoke/Transformers$Transformer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3007
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1

    .line 3010
    :cond_26
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 3013
    :cond_2f
    new-instance v1, Ljava/lang/invoke/Transformers$ExplicitCastArguments;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    return-object v1
.end method

.method private static greylist-max-o explicitCastArgumentsChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 3017
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 3021
    return-void

    .line 3018
    :cond_f
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot explicitly cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist fillParameterTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation

    .line 4795
    .local p0, "hs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p1, "targetParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda25;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4799
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4795
    return-object v0
.end method

.method static blacklist filterArgument(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 3729
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    .line 3739
    new-instance v0, Ljava/lang/invoke/Transformers$FilterArguments;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/invoke/MethodHandle;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/invoke/Transformers$FilterArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    return-object v0
.end method

.method private static greylist-max-o filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3750
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3751
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3752
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 3753
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 3755
    return-void

    .line 3754
    :cond_1a
    const-string v2, "target and filter types do not match"

    invoke-static {v2, v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static varargs whitelist test-api filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 3702
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    .line 3703
    move-object v0, p0

    .line 3713
    .local v0, "adapter":Ljava/lang/invoke/MethodHandle;
    const/4 v1, 0x0

    .line 3714
    .local v1, "hasNonNullFilter":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, p2

    if-ge v2, v3, :cond_16

    .line 3715
    aget-object v3, p2, v2

    .line 3716
    .local v3, "filter":Ljava/lang/invoke/MethodHandle;
    if-eqz v3, :cond_13

    .line 3717
    const/4 v1, 0x1

    .line 3718
    add-int v4, v2, p1

    invoke-static {p0, v4, v3}, Ljava/lang/invoke/MethodHandles;->filterArgumentChecks(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    .line 3714
    .end local v3    # "filter":Ljava/lang/invoke/MethodHandle;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3721
    .end local v2    # "i":I
    :cond_16
    if-nez v1, :cond_19

    .line 3722
    return-object p0

    .line 3724
    :cond_19
    new-instance v2, Ljava/lang/invoke/Transformers$FilterArguments;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/invoke/Transformers$FilterArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static greylist-max-o filterArgumentsCheckArity(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "filters"    # [Ljava/lang/invoke/MethodHandle;

    .line 3743
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3744
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3745
    .local v1, "maxPos":I
    array-length v2, p2

    add-int/2addr v2, p1

    if-gt v2, v1, :cond_d

    .line 3747
    return-void

    .line 3746
    :cond_d
    const-string v2, "too many filters"

    invoke-static {v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist test-api filterReturnValue(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 3953
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3954
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 3955
    .local v1, "filterType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 3963
    new-instance v2, Ljava/lang/invoke/Transformers$FilterReturnValue;

    invoke-direct {v2, p0, p1}, Ljava/lang/invoke/Transformers$FilterReturnValue;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static greylist-max-o filterReturnValueChecks(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p1, "filterType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3967
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 3968
    .local v0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3969
    .local v1, "filterValues":I
    if-nez v1, :cond_f

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1a

    goto :goto_19

    .line 3971
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 3973
    :goto_19
    return-void

    .line 3972
    :cond_1a
    const-string v2, "target and filter types do not match"

    invoke-static {v2, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist fixArities(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation

    .line 4803
    .local p0, "hs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda18;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static greylist-max-o foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;
    .registers 11
    .param p0, "foldPos"    # I
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "combinerType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4157
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 4158
    .local v0, "foldArgs":I
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 4159
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 4160
    .local v2, "foldVals":I
    :goto_11
    add-int v5, p0, v2

    .line 4161
    .local v5, "afterInsertPos":I
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v6

    add-int v7, v5, v0

    if-lt v6, v7, :cond_1c

    move v3, v4

    .line 4162
    .local v3, "ok":Z
    :cond_1c
    if-eqz v3, :cond_32

    .line 4163
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v0, :cond_32

    .line 4164
    invoke-virtual {p2, v4}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    add-int v7, v4, v5

    invoke-virtual {p1, v7}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_2f

    .line 4165
    const/4 v3, 0x0

    .line 4166
    goto :goto_32

    .line 4163
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 4170
    .end local v4    # "i":I
    :cond_32
    :goto_32
    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, p0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_41

    .line 4171
    const/4 v3, 0x0

    .line 4172
    :cond_41
    if-eqz v3, :cond_44

    .line 4174
    return-object v1

    .line 4173
    :cond_44
    const-string v4, "target and combiner types"

    invoke-static {v4, p1, p2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static whitelist test-api foldArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 4139
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 4140
    .local v0, "targetType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 4141
    .local v1, "combinerType":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodHandles;->foldArgumentChecks(ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/Class;

    move-result-object v2

    .line 4153
    .local v2, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/invoke/Transformers$FoldArguments;

    invoke-direct {v3, p0, p1, p2}, Ljava/lang/invoke/Transformers$FoldArguments;-><init>(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)V

    return-object v3
.end method

.method public static whitelist test-api foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 4064
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getConstantHandle(I)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "idx"    # I

    .line 5964
    sget-object v0, Ljava/lang/invoke/MethodHandles;->HANDLES:[Ljava/lang/invoke/MethodHandle;

    aget-object v0, v0, p0

    .line 5965
    .local v0, "handle":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_7

    .line 5966
    return-object v0

    .line 5968
    :cond_7
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->makeConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/invoke/MethodHandles;->setCachedHandle(ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    .registers 4
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 2286
    instance-of v0, p0, Ljava/lang/invoke/Transformers$Construct;

    if-eqz v0, :cond_b

    .line 2287
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/Transformers$Construct;

    invoke-virtual {v0}, Ljava/lang/invoke/Transformers$Construct;->getConstructorHandle()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 2292
    :cond_b
    instance-of v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;

    if-eqz v0, :cond_13

    .line 2293
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 2296
    :cond_13
    instance-of v0, p0, Ljava/lang/invoke/MethodHandleImpl;

    if-eqz v0, :cond_1b

    .line 2297
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl;

    return-object v0

    .line 2300
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct handle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 11
    .param p0, "test"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "fallback"    # Ljava/lang/invoke/MethodHandle;

    .line 4213
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 4214
    .local v0, "gtype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 4215
    .local v1, "ttype":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 4216
    .local v2, "ftype":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 4218
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_57

    .line 4220
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v3

    .line 4221
    .local v3, "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v4

    .line 4222
    .local v4, "gargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 4223
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "gpc":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 4224
    .local v6, "tpc":I
    if-ge v5, v6, :cond_4a

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 4226
    invoke-interface {v3, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {p0, v5, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 4227
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_51

    .line 4225
    :cond_4a
    const-string v7, "target and test types"

    invoke-static {v7, v1, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 4230
    .end local v5    # "gpc":I
    .end local v6    # "tpc":I
    :cond_51
    :goto_51
    new-instance v5, Ljava/lang/invoke/Transformers$GuardWithTest;

    invoke-direct {v5, p0, p1, p2}, Ljava/lang/invoke/Transformers$GuardWithTest;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v5

    .line 4219
    .end local v3    # "targs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "gargs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "guard type is not a predicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 4217
    :cond_6f
    const-string v3, "target and fallback types"

    invoke-static {v3, v1, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static greylist-max-o identity(B)B
    .registers 1
    .param p0, "val"    # B

    .line 3238
    return p0
.end method

.method public static greylist-max-o identity(C)C
    .registers 1
    .param p0, "val"    # C

    .line 3240
    return p0
.end method

.method public static greylist-max-o identity(D)D
    .registers 2
    .param p0, "val"    # D

    .line 3245
    return-wide p0
.end method

.method public static greylist-max-o identity(F)F
    .registers 1
    .param p0, "val"    # F

    .line 3244
    return p0
.end method

.method public static greylist-max-o identity(I)I
    .registers 1
    .param p0, "val"    # I

    .line 3242
    return p0
.end method

.method public static greylist-max-o identity(J)J
    .registers 2
    .param p0, "val"    # J

    .line 3243
    return-wide p0
.end method

.method public static whitelist test-api identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3159
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    goto :goto_10

    :cond_e
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    .line 3161
    .local v0, "btw":Lsun/invoke/util/Wrapper;
    :goto_10
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->ordinal()I

    move-result v1

    .line 3162
    .local v1, "pos":I
    sget-object v2, Ljava/lang/invoke/MethodHandles;->IDENTITY_MHS:[Ljava/lang/invoke/MethodHandle;

    aget-object v2, v2, v1

    .line 3163
    .local v2, "ident":Ljava/lang/invoke/MethodHandle;
    if-nez v2, :cond_28

    .line 3164
    sget-object v3, Ljava/lang/invoke/MethodHandles;->IDENTITY_MHS:[Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/invoke/MethodHandles;->makeIdentity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/lang/invoke/MethodHandles;->setCachedMethodHandle([Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 3166
    :cond_28
    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_33

    .line 3167
    return-object v2

    .line 3169
    :cond_33
    nop

    .line 3170
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->makeIdentity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    return-object v3
.end method

.method public static greylist-max-o identity(S)S
    .registers 1
    .param p0, "val"    # S

    .line 3241
    return p0
.end method

.method public static greylist-max-o identity(Z)Z
    .registers 1
    .param p0, "val"    # Z

    .line 3239
    return p0
.end method

.method private static blacklist identityOrVoid(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3195
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->zero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static blacklist initIterator(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation

    .line 5919
    .local p0, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "values"    # [Ljava/lang/Object;

    .line 3306
    array-length v0, p2

    .line 3307
    .local v0, "insCount":I
    invoke-static {p0, v0, p1}, Ljava/lang/invoke/MethodHandles;->insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;

    move-result-object v1

    .line 3308
    .local v1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_8

    .line 3309
    return-object p0

    .line 3314
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_2e

    .line 3315
    add-int v3, p1, v2

    aget-object v3, v1, v3

    .line 3316
    .local v3, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3317
    add-int v4, p1, v2

    aget-object v4, v1, v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 3320
    :cond_1f
    invoke-static {v3}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, v5, v3}, Lsun/invoke/util/Wrapper;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v2

    .line 3314
    .end local v3    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3324
    .end local v2    # "i":I
    :cond_2e
    new-instance v2, Ljava/lang/invoke/Transformers$InsertArguments;

    invoke-direct {v2, p0, p1, p2}, Ljava/lang/invoke/Transformers$InsertArguments;-><init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V

    return-object v2
.end method

.method private static greylist-max-o insertArgumentsChecks(Ljava/lang/invoke/MethodHandle;II)[Ljava/lang/Class;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "insCount"    # I
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "II)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 3344
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3345
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 3346
    .local v1, "outargs":I
    sub-int v2, v1, p1

    .line 3347
    .local v2, "inargs":I
    if-ltz v2, :cond_1c

    .line 3349
    if-ltz p2, :cond_15

    if-gt p2, v2, :cond_15

    .line 3351
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 3350
    :cond_15
    const-string v3, "no argument type to append"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 3348
    :cond_1c
    const-string v3, "too many values to insert"

    invoke-static {v3}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist test-api invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 2873
    new-instance v0, Ljava/lang/invoke/Transformers$Invoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/Transformers$Invoker;-><init>(Ljava/lang/invoke/MethodType;Z)V

    return-object v0
.end method

.method public static blacklist iterateNext(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5944
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist iteratePredicate(Ljava/util/Iterator;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 5931
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api iteratedLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 18
    .param p0, "iterator"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 5539
    invoke-static/range {p0 .. p2}, Ljava/lang/invoke/MethodHandles;->iteratedLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/Class;

    move-result-object v1

    .line 5540
    .local v1, "iterableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 5544
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->getConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 5545
    .local v3, "hasNext":Ljava/lang/invoke/MethodHandle;
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->getConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 5550
    .local v4, "nextRaw":Ljava/lang/invoke/MethodHandle;
    const/4 v0, 0x0

    if-nez p0, :cond_2a

    .line 5554
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/invoke/MethodHandles;->getConstantHandle(I)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 5555
    .local v5, "startIter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/invoke/MethodType;->changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .local v6, "iteratorType":Ljava/lang/invoke/MethodType;
    goto :goto_35

    .line 5558
    .end local v5    # "startIter":Ljava/lang/invoke/MethodHandle;
    .end local v6    # "iteratorType":Ljava/lang/invoke/MethodType;
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-class v6, Ljava/util/Iterator;

    invoke-virtual {v5, v6}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 5559
    .restart local v6    # "iteratorType":Ljava/lang/invoke/MethodType;
    move-object v5, p0

    .line 5561
    .restart local v5    # "startIter":Ljava/lang/invoke/MethodHandle;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    if-ne v2, v8, :cond_40

    move v8, v0

    goto :goto_41

    :cond_40
    move v8, v9

    :goto_41
    invoke-virtual {v7, v8}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v7

    .line 5562
    .local v7, "ttype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 5566
    .local v8, "nextValType":Ljava/lang/invoke/MethodType;
    :try_start_4d
    invoke-virtual {v5, v6}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    move-object v5, v10

    .line 5567
    invoke-virtual {v4, v8}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10
    :try_end_56
    .catch Ljava/lang/invoke/WrongMethodTypeException; {:try_start_4d .. :try_end_56} :catch_98

    .line 5570
    .local v10, "nextVal":Ljava/lang/invoke/MethodHandle;
    nop

    .line 5573
    .end local v6    # "iteratorType":Ljava/lang/invoke/MethodType;
    .end local v7    # "ttype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "nextValType":Ljava/lang/invoke/MethodType;
    const/4 v6, 0x0

    .local v6, "retv":Ljava/lang/invoke/MethodHandle;
    move-object/from16 v7, p2

    .line 5574
    .local v7, "step":Ljava/lang/invoke/MethodHandle;
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v8, :cond_73

    .line 5576
    invoke-static {v2}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Ljava/util/Iterator;

    aput-object v12, v11, v0

    invoke-static {v8, v0, v11}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 5578
    move-object/from16 v11, p2

    invoke-static {v11, v0, v9}, Ljava/lang/invoke/MethodHandles;->swapArguments(Ljava/lang/invoke/MethodHandle;II)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    goto :goto_75

    .line 5574
    :cond_73
    move-object/from16 v11, p2

    .line 5582
    :goto_75
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/invoke/MethodHandle;

    aput-object v5, v8, v0

    const/4 v12, 0x0

    aput-object v12, v8, v9

    const/4 v12, 0x2

    aput-object v3, v8, v12

    const/4 v13, 0x3

    aput-object v6, v8, v13

    .line 5583
    .local v8, "iterVar":[Ljava/lang/invoke/MethodHandle;
    new-array v13, v12, [Ljava/lang/invoke/MethodHandle;

    aput-object p1, v13, v0

    invoke-static {v7, v0, v10}, Ljava/lang/invoke/MethodHandles;->filterArgument(Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v14

    aput-object v14, v13, v9

    .line 5584
    .local v13, "bodyClause":[Ljava/lang/invoke/MethodHandle;
    new-array v12, v12, [[Ljava/lang/invoke/MethodHandle;

    aput-object v8, v12, v0

    aput-object v13, v12, v9

    invoke-static {v12}, Ljava/lang/invoke/MethodHandles;->loop([[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 5568
    .end local v10    # "nextVal":Ljava/lang/invoke/MethodHandle;
    .end local v13    # "bodyClause":[Ljava/lang/invoke/MethodHandle;
    .local v6, "iteratorType":Ljava/lang/invoke/MethodType;
    .local v7, "ttype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "nextValType":Ljava/lang/invoke/MethodType;
    :catch_98
    move-exception v0

    move-object/from16 v11, p2

    .line 5569
    .local v0, "ex":Ljava/lang/invoke/WrongMethodTypeException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private static blacklist iteratedLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/Class;
    .registers 13
    .param p0, "iterator"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "body"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 5588
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5589
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 5590
    .local v0, "bodyType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 5591
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    .line 5593
    .local v2, "internalParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    move v3, v4

    .line 5594
    .local v3, "vsize":I
    :goto_18
    const-string v6, "body function"

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_29

    goto :goto_36

    .line 5596
    :cond_29
    new-array v4, v4, [Ljava/lang/Class;

    aput-object v1, v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5597
    .local v4, "expected":Ljava/lang/invoke/MethodType;
    invoke-static {v6, v0, v4}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 5598
    .end local v4    # "expected":Ljava/lang/invoke/MethodType;
    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_dd

    .line 5603
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 5604
    .local v6, "externalParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v7, 0x0

    .line 5605
    .local v7, "iterableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_84

    .line 5608
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 5609
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v6

    .line 5611
    :cond_57
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5612
    .local v4, "itype":Ljava/lang/invoke/MethodType;
    const-class v8, Ljava/util/Iterator;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 5615
    invoke-virtual {v4, v5, v6}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 5619
    .end local v4    # "itype":Ljava/lang/invoke/MethodType;
    goto :goto_a6

    .line 5616
    .restart local v4    # "itype":Ljava/lang/invoke/MethodType;
    :cond_6e
    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 5617
    .local v5, "expected":Ljava/lang/invoke/MethodType;
    const-string v8, "iterator parameters"

    invoke-static {v8, v4, v5}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 5613
    .end local v5    # "expected":Ljava/lang/invoke/MethodType;
    :cond_7d
    const-string v5, "iteratedLoop first argument must have Iterator return type"

    invoke-static {v5}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 5620
    .end local v4    # "itype":Ljava/lang/invoke/MethodType;
    :cond_84
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_97

    .line 5624
    new-array v4, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Iterable;

    aput-object v8, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 5625
    const-class v7, Ljava/lang/Iterable;

    goto :goto_a6

    .line 5630
    :cond_97
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Class;

    .line 5631
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 5637
    :goto_a6
    if-eqz p1, :cond_c4

    .line 5638
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5639
    .local v4, "initType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v1, :cond_b9

    .line 5640
    invoke-virtual {v4, v5, v6}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_b9

    goto :goto_c4

    .line 5641
    :cond_b9
    const-string v5, "loop initializer"

    invoke-static {v1, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-static {v5, v4, v8}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 5644
    .end local v4    # "initType":Ljava/lang/invoke/MethodType;
    :cond_c4
    :goto_c4
    return-object v7

    .line 5632
    :cond_c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inferred first loop argument must inherit from Iterable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 5600
    .end local v6    # "externalParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v7    # "iterableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_dd
    new-array v4, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5601
    .local v4, "expected":Ljava/lang/invoke/MethodType;
    invoke-static {v6, v0, v4}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method static synthetic blacklist lambda$fillParameterTypes$17(Ljava/util/List;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "targetParams"    # Ljava/util/List;
    .param p1, "h"    # Ljava/lang/invoke/MethodHandle;

    .line 4796
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 4797
    .local v0, "pc":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 4798
    .local v1, "tpsize":I
    if-ge v0, v1, :cond_17

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v0, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, p1

    :goto_18
    return-object v2
.end method

.method static synthetic blacklist lambda$longestParameterList$10(ILjava/lang/invoke/MethodType;)Z
    .registers 3
    .param p0, "skipSize"    # I
    .param p1, "t"    # Ljava/lang/invoke/MethodType;

    .line 4745
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-le v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$longestParameterList$11(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p0, "p"    # Ljava/util/List;
    .param p1, "q"    # Ljava/util/List;

    .line 4747
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    move-object v0, p0

    goto :goto_d

    :cond_c
    move-object v0, p1

    :goto_d
    return-object v0
.end method

.method static synthetic blacklist lambda$longestParameterList$12(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p0, "p"    # Ljava/util/List;
    .param p1, "q"    # Ljava/util/List;

    .line 4753
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    move-object v0, p0

    goto :goto_d

    :cond_c
    move-object v0, p1

    :goto_d
    return-object v0
.end method

.method static synthetic blacklist lambda$loop$0([Ljava/lang/invoke/MethodHandle;)Z
    .registers 3
    .param p0, "c"    # [Ljava/lang/invoke/MethodHandle;

    .line 4638
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$loop$1(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;[Ljava/lang/invoke/MethodHandle;)V
    .registers 8
    .param p0, "init"    # Ljava/util/List;
    .param p1, "step"    # Ljava/util/List;
    .param p2, "pred"    # Ljava/util/List;
    .param p3, "fini"    # Ljava/util/List;
    .param p4, "clause"    # [Ljava/lang/invoke/MethodHandle;

    .line 4639
    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4640
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_d

    move-object v0, v1

    goto :goto_f

    :cond_d
    aget-object v0, p4, v2

    :goto_f
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4641
    array-length v0, p4

    const/4 v2, 0x2

    if-gt v0, v2, :cond_18

    move-object v0, v1

    goto :goto_1a

    :cond_18
    aget-object v0, p4, v2

    :goto_1a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4642
    array-length v0, p4

    const/4 v2, 0x3

    if-gt v0, v2, :cond_22

    goto :goto_24

    :cond_22
    aget-object v1, p4, v2

    :goto_24
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4643
    return-void
.end method

.method static synthetic blacklist lambda$loop$2(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "t"    # Ljava/lang/Class;

    .line 4662
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$loop$3(Ljava/util/List;Ljava/util/List;)Z
    .registers 3
    .param p0, "commonSuffix"    # Ljava/util/List;
    .param p1, "pl"    # Ljava/util/List;

    .line 4707
    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$loop$4(Ljava/util/List;Ljava/util/List;)Z
    .registers 3
    .param p0, "commonParameterSequence"    # Ljava/util/List;
    .param p1, "pl"    # Ljava/util/List;

    .line 4709
    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$loop$5(I)[Ljava/lang/invoke/MethodHandle;
    .registers 2
    .param p0, "x$0"    # I

    .line 4715
    new-array v0, p0, [Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method static synthetic blacklist lambda$loop$6(I)[Ljava/lang/invoke/MethodHandle;
    .registers 2
    .param p0, "x$0"    # I

    .line 4716
    new-array v0, p0, [Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method static synthetic blacklist lambda$loop$7(I)[Ljava/lang/invoke/MethodHandle;
    .registers 2
    .param p0, "x$0"    # I

    .line 4717
    new-array v0, p0, [Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method static synthetic blacklist lambda$loop$8(I)[Ljava/lang/invoke/MethodHandle;
    .registers 2
    .param p0, "x$0"    # I

    .line 4718
    new-array v0, p0, [Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method static synthetic blacklist lambda$loopChecks0$9([Ljava/lang/invoke/MethodHandle;)Z
    .registers 3
    .param p0, "c"    # [Ljava/lang/invoke/MethodHandle;

    .line 4728
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$loopChecks1b$13(Ljava/util/List;Ljava/lang/invoke/MethodType;)Z
    .registers 3
    .param p0, "commonSuffix"    # Ljava/util/List;
    .param p1, "t"    # Ljava/lang/invoke/MethodType;

    .line 4764
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$loopChecks1cd$14(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .param p0, "loopReturnType"    # Ljava/lang/Class;
    .param p1, "t"    # Ljava/lang/Class;

    .line 4772
    if-eq p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$loopChecks1cd$15(Ljava/lang/Class;)Z
    .registers 2
    .param p0, "t"    # Ljava/lang/Class;

    .line 4781
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$loopChecks2$16(Ljava/util/List;Ljava/lang/invoke/MethodType;)Z
    .registers 3
    .param p0, "commonParameterSequence"    # Ljava/util/List;
    .param p1, "t"    # Ljava/lang/invoke/MethodType;

    .line 4788
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist longestParameterList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 4752
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    .line 4753
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static blacklist longestParameterList(Ljava/util/stream/Stream;I)Ljava/util/List;
    .registers 5
    .param p1, "skipSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 4741
    .local p0, "mhs":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    .line 4742
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    .line 4744
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda19;-><init>(I)V

    .line 4745
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda7;-><init>()V

    .line 4746
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda20;-><init>()V

    .line 4747
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4748
    .local v1, "longest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3f

    move-object v2, v0

    goto :goto_47

    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    :goto_47
    return-object v2
.end method

.method public static whitelist test-api lookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 2

    .line 99
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs whitelist test-api loop([[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 22
    .param p0, "clauses"    # [[Ljava/lang/invoke/MethodHandle;

    .line 4631
    invoke-static/range {p0 .. p0}, Ljava/lang/invoke/MethodHandles;->loopChecks0([[Ljava/lang/invoke/MethodHandle;)V

    .line 4633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4634
    .local v0, "init":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4635
    .local v1, "step":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4636
    .local v2, "pred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4638
    .local v3, "fini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static/range {p0 .. p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4645
    nop

    .line 4646
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 4649
    .local v4, "nclauses":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4650
    .local v5, "iterationVariableTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    if-ge v6, v4, :cond_77

    .line 4651
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/invoke/MethodHandle;

    .line 4652
    .local v7, "in":Ljava/lang/invoke/MethodHandle;
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/invoke/MethodHandle;

    .line 4653
    .local v8, "st":Ljava/lang/invoke/MethodHandle;
    if-nez v7, :cond_4f

    if-nez v8, :cond_4f

    .line 4654
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 4655
    :cond_4f
    if-eqz v7, :cond_62

    if-eqz v8, :cond_62

    .line 4656
    invoke-static {v6, v7, v8}, Ljava/lang/invoke/MethodHandles;->loopChecks1a(ILjava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 4657
    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 4659
    :cond_62
    if-nez v7, :cond_69

    invoke-virtual {v8}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    goto :goto_6d

    :cond_69
    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    :goto_6d
    invoke-virtual {v9}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4650
    .end local v7    # "in":Ljava/lang/invoke/MethodHandle;
    .end local v8    # "st":Ljava/lang/invoke/MethodHandle;
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 4662
    .end local v6    # "i":I
    :cond_77
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda15;

    invoke-direct {v7}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 4663
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 4666
    .local v6, "commonPrefix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/invoke/MethodHandles;->buildCommonSuffix(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v10

    .line 4667
    .local v10, "commonSuffix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {v0, v10}, Ljava/lang/invoke/MethodHandles;->loopChecks1b(Ljava/util/List;Ljava/util/List;)V

    .line 4672
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;

    invoke-direct {v8}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;-><init>()V

    .line 4673
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 4674
    .local v7, "cstream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/Class<*>;>;"
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    .line 4675
    .local v9, "loopReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v3, v9}, Ljava/lang/invoke/MethodHandles;->loopChecks1cd(Ljava/util/List;Ljava/util/List;Ljava/lang/Class;)V

    .line 4678
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v15, v8

    .line 4679
    .local v15, "commonParameterSequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v15, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4680
    invoke-static {v1, v2, v3, v15}, Ljava/lang/invoke/MethodHandles;->loopChecks2(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 4683
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_d5
    if-ge v8, v4, :cond_12c

    .line 4684
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    .line 4685
    .local v11, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_ee

    .line 4686
    invoke-static {v11, v10}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/invoke/MethodHandles;->empty(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-interface {v0, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4688
    :cond_ee
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    if-nez v12, :cond_100

    .line 4689
    invoke-static {v11}, Ljava/lang/invoke/MethodHandles;->identityOrVoid(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-static {v12, v13, v15, v8}, Ljava/lang/invoke/MethodHandles;->dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-interface {v1, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4691
    :cond_100
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_118

    .line 4692
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v14}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-static {v12, v13, v15}, Ljava/lang/invoke/MethodHandles;->dropArguments0(Ljava/lang/invoke/MethodHandle;ILjava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-interface {v2, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4694
    :cond_118
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_129

    .line 4695
    invoke-static {v11, v15}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/invoke/MethodHandles;->empty(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4683
    .end local v11    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_129
    add-int/lit8 v8, v8, 0x1

    goto :goto_d5

    .line 4701
    .end local v8    # "i":I
    :cond_12c
    invoke-static {v0, v10}, Ljava/lang/invoke/MethodHandles;->fillParameterTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/invoke/MethodHandles;->fixArities(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 4702
    .local v8, "finit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static {v1, v15}, Ljava/lang/invoke/MethodHandles;->fillParameterTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/invoke/MethodHandles;->fixArities(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 4703
    .local v11, "fstep":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static {v2, v15}, Ljava/lang/invoke/MethodHandles;->fillParameterTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/invoke/MethodHandles;->fixArities(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 4704
    .local v12, "fpred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-static {v3, v15}, Ljava/lang/invoke/MethodHandles;->fillParameterTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/invoke/MethodHandles;->fixArities(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 4706
    .local v13, "ffini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    nop

    .line 4708
    nop

    .line 4713
    new-instance v14, Ljava/lang/invoke/Transformers$Loop;

    move-object/from16 v16, v0

    .end local v0    # "init":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local v16, "init":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    new-instance v0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda9;-><init>()V

    .line 4715
    invoke-interface {v8, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/MethodHandle;

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda10;-><init>()V

    .line 4716
    invoke-interface {v11, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/MethodHandle;

    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda11;-><init>()V

    .line 4717
    invoke-interface {v12, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/MethodHandle;

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda12;-><init>()V

    .line 4718
    invoke-interface {v13, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/MethodHandle;

    move-object/from16 v20, v14

    move-object v14, v0

    move-object v0, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    .end local v8    # "finit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .end local v11    # "fstep":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .end local v12    # "fpred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .end local v13    # "ffini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local v0, "finit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local v17, "fstep":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local v18, "fpred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local v19, "ffini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-direct/range {v8 .. v14}, Ljava/lang/invoke/Transformers$Loop;-><init>(Ljava/lang/Class;Ljava/util/List;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)V

    .line 4713
    return-object v8
.end method

.method private static blacklist loopChecks0([[Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p0, "clauses"    # [[Ljava/lang/invoke/MethodHandle;

    .line 4722
    if-eqz p0, :cond_32

    array-length v0, p0

    if-eqz v0, :cond_32

    .line 4725
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 4728
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4731
    return-void

    .line 4729
    :cond_24
    const-string v0, "All loop clauses must be represented as MethodHandle arrays with at most 4 elements."

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4726
    :cond_2b
    const-string v0, "null clauses are not allowed"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4723
    :cond_32
    const-string v0, "null or no clauses passed"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist loopChecks1a(ILjava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p0, "i"    # I
    .param p1, "in"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "st"    # Ljava/lang/invoke/MethodHandle;

    .line 4734
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 4738
    return-void

    .line 4735
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": init and step return types"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 4736
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    .line 4735
    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist loopChecks1b(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 4763
    .local p0, "init":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p1, "commonSuffix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda22;-><init>(Ljava/util/List;)V

    .line 4764
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 4768
    return-void

    .line 4765
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found non-effectively identical init parameter type lists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (common suffix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist loopChecks1cd(Ljava/util/List;Ljava/util/List;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4771
    .local p0, "pred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p1, "fini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p2, "loopReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda23;

    invoke-direct {v1, p2}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda23;-><init>(Ljava/lang/Class;)V

    .line 4772
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 4777
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 4780
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda24;-><init>()V

    .line 4781
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 4784
    return-void

    .line 4782
    :cond_6c
    const-string v0, "predicates must have boolean return type"

    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4778
    :cond_73
    const-string v0, "no predicate found"

    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 4773
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found non-identical finalizer return types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (return type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist loopChecks2(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 4787
    .local p0, "step":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p1, "pred":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p2, "fini":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p3, "commonParameterSequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda21;

    invoke-direct {v1, p3}, Ljava/lang/invoke/MethodHandles$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    .line 4788
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 4792
    return-void

    .line 4789
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found non-effectively identical parameter type lists:\nstep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nfini: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (common parameter sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist makeConstantHandle(I)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "idx"    # I

    .line 5987
    :try_start_0
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2} :catch_79

    .line 5988
    .local v0, "IMPL_LOOKUP":Ljava/lang/invoke/MethodHandles$Lookup;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v3, Ljava/lang/invoke/MethodHandles;

    packed-switch p0, :pswitch_data_80

    .line 6049
    .end local v0    # "IMPL_LOOKUP":Ljava/lang/invoke/MethodHandles$Lookup;
    goto :goto_61

    .line 6038
    .restart local v0    # "IMPL_LOOKUP":Ljava/lang/invoke/MethodHandles$Lookup;
    :pswitch_a
    :try_start_a
    const-string v1, "iterateNext"

    const-class v2, Ljava/lang/Object;

    const-class v4, Ljava/util/Iterator;

    .line 6039
    invoke-static {v2, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 6038
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 6032
    :pswitch_19
    const-string v1, "iteratePredicate"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/Iterator;

    .line 6033
    invoke-static {v2, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 6032
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 6026
    :pswitch_28
    const-string v1, "initIterator"

    const-class v2, Ljava/util/Iterator;

    const-class v4, Ljava/lang/Iterable;

    .line 6027
    invoke-static {v2, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 6026
    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 6020
    :pswitch_37
    const-string v4, "countedLoopStep"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v1

    .line 6021
    invoke-static {v5, v6, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 6020
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 6014
    :pswitch_4c
    const-string v4, "countedLoopPredicate"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v1

    .line 6015
    invoke-static {v5, v6, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 6014
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_60
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_a .. :try_end_60} :catch_79

    return-object v1

    .line 6051
    .end local v0    # "IMPL_LOOKUP":Ljava/lang/invoke/MethodHandles$Lookup;
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown function index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;)Ljava/lang/InternalError;

    move-result-object v0

    throw v0

    .line 6047
    :catch_79
    move-exception v0

    .line 6048
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/Throwable;)Ljava/lang/InternalError;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_80
    .packed-switch 0x6
        :pswitch_4c
        :pswitch_37
        :pswitch_28
        :pswitch_19
        :pswitch_a
    .end packed-switch
.end method

.method private static blacklist makeIdentity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3225
    .local p0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3227
    :try_start_6
    invoke-static {p0, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3228
    .local v0, "mt":Ljava/lang/invoke/MethodType;
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/invoke/MethodHandles;

    const-string v3, "identity"

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    .line 3229
    .end local v0    # "mt":Ljava/lang/invoke/MethodType;
    :catch_15
    move-exception v0

    .line 3230
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3233
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1c
    new-instance v0, Ljava/lang/invoke/Transformers$ReferenceIdentity;

    invoke-direct {v0, p0}, Ljava/lang/invoke/Transformers$ReferenceIdentity;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static blacklist makeZero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3264
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/invoke/Transformers$ZeroValue;

    invoke-direct {v0, p0}, Ljava/lang/invoke/Transformers$ZeroValue;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static greylist-max-o methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;
    .registers 10
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "isExactInvoker"    # Z

    .line 2880
    const-class v0, Ljava/lang/invoke/VarHandle;

    .line 2883
    .local v0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$AccessMode;->methodName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_12} :catch_2d

    .line 2886
    .local v1, "method":Ljava/lang/reflect/Method;
    nop

    .line 2887
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/invoke/VarHandle;

    aput-object v3, v2, v5

    invoke-virtual {p1, v5, v2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 2888
    .local v2, "methodType":Ljava/lang/invoke/MethodType;
    if-eqz p2, :cond_21

    const/4 v3, 0x7

    goto :goto_22

    .line 2889
    :cond_21
    const/4 v3, 0x6

    :goto_22
    nop

    .line 2890
    .local v3, "kind":I
    new-instance v4, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    return-object v4

    .line 2884
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodType":Ljava/lang/invoke/MethodType;
    .end local v3    # "kind":I
    :catch_2d
    move-exception v1

    .line 2885
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No method for AccessMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5
    .param p0, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 4234
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z
    .registers 10
    .param p0, "reorder"    # [I
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "oldType"    # Ljava/lang/invoke/MethodType;

    .line 3095
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_56

    .line 3098
    array-length v0, p0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 3099
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 3100
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 3101
    .local v1, "bad":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_17
    array-length v3, p0

    if-ge v2, v3, :cond_36

    .line 3102
    aget v3, p0, v2

    .line 3103
    .local v3, "i":I
    if-ltz v3, :cond_35

    if-lt v3, v0, :cond_21

    goto :goto_35

    .line 3106
    :cond_21
    invoke-virtual {p1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    .line 3107
    .local v4, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v5

    .line 3108
    .local v5, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v5, :cond_2e

    .line 3101
    .end local v3    # "i":I
    .end local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3109
    .restart local v3    # "i":I
    .restart local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    const-string v6, "parameter types do not match after reorder"

    invoke-static {v6, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 3104
    .end local v4    # "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 3112
    .end local v2    # "j":I
    .end local v3    # "i":I
    :cond_36
    if-nez v1, :cond_3a

    const/4 v2, 0x1

    return v2

    .line 3114
    .end local v0    # "limit":I
    .end local v1    # "bad":Z
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad reorder array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3096
    :cond_56
    const-string v0, "return types do not match"

    invoke-static {v0, p2, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static varargs whitelist test-api permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;
    .param p2, "reorder"    # [I

    .line 3084
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [I

    .line 3085
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 3086
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-static {p2, p1, v0}, Ljava/lang/invoke/MethodHandles;->permuteArgumentChecks([ILjava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z

    .line 3088
    new-instance v1, Ljava/lang/invoke/Transformers$PermuteArguments;

    invoke-direct {v1, p1, p0, p2}, Ljava/lang/invoke/Transformers$PermuteArguments;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V

    return-object v1
.end method

.method public static whitelist test-api privateLookupIn(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 5
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/invoke/MethodHandles$Lookup;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 143
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 145
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_12

    .line 169
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-direct {v0, p0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 146
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is an array class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a primitive class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 1

    .line 123
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    return-object v0
.end method

.method public static whitelist test-api reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/reflect/Member;
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandle;",
            ")TT;"
        }
    .end annotation

    .line 197
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 200
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    return-object v1
.end method

.method private static declared-synchronized blacklist setCachedHandle(ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "idx"    # I
    .param p1, "method"    # Ljava/lang/invoke/MethodHandle;

    const-class v0, Ljava/lang/invoke/MethodHandles;

    monitor-enter v0

    .line 5973
    :try_start_3
    sget-object v1, Ljava/lang/invoke/MethodHandles;->HANDLES:[Ljava/lang/invoke/MethodHandle;

    aget-object v1, v1, p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_11

    .line 5974
    .local v1, "prev":Ljava/lang/invoke/MethodHandle;
    if-eqz v1, :cond_b

    .line 5975
    monitor-exit v0

    return-object v1

    .line 5977
    :cond_b
    :try_start_b
    sget-object v2, Ljava/lang/invoke/MethodHandles;->HANDLES:[Ljava/lang/invoke/MethodHandle;

    aput-object p1, v2, p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    .line 5978
    monitor-exit v0

    return-object p1

    .line 5972
    .end local v1    # "prev":Ljava/lang/invoke/MethodHandle;
    .end local p0    # "idx":I
    .end local p1    # "method":Ljava/lang/invoke/MethodHandle;
    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method private static declared-synchronized blacklist setCachedMethodHandle([Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "cache"    # [Ljava/lang/invoke/MethodHandle;
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/invoke/MethodHandle;

    const-class v0, Ljava/lang/invoke/MethodHandles;

    monitor-enter v0

    .line 3269
    :try_start_3
    aget-object v1, p0, p1
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    .line 3270
    .local v1, "prev":Ljava/lang/invoke/MethodHandle;
    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 3271
    :cond_9
    :try_start_9
    aput-object p2, p0, p1
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p2

    .line 3268
    .end local v1    # "prev":Ljava/lang/invoke/MethodHandle;
    .end local p0    # "cache":[Ljava/lang/invoke/MethodHandle;
    .end local p1    # "pos":I
    .end local p2    # "value":Ljava/lang/invoke/MethodHandle;
    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static whitelist test-api spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p0, "type"    # Ljava/lang/invoke/MethodType;
    .param p1, "leadingArgCount"    # I

    .line 2788
    if-ltz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-gt p1, v0, :cond_18

    .line 2791
    invoke-static {p0}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2792
    .local v0, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    sub-int/2addr v1, p1

    .line 2793
    .local v1, "spreadArgCount":I
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodHandle;->asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 2794
    return-object v0

    .line 2789
    .end local v0    # "invoker":Ljava/lang/invoke/MethodHandle;
    .end local v1    # "spreadArgCount":I
    :cond_18
    const-string v0, "bad argument count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method static blacklist swapArguments(Ljava/lang/invoke/MethodHandle;II)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "mh"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 5649
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 5650
    .local v0, "arity":I
    new-array v1, v0, [I

    .line 5651
    .local v1, "order":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_b
    if-ge v2, v0, :cond_12

    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5652
    .end local v2    # "k":I
    :cond_12
    aput p2, v1, p1

    aput p1, v1, p2

    .line 5653
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v2

    .line 5654
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v3, v2, p1

    .local v3, "ti":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v4, v2, p2

    aput-object v4, v2, p1

    aput-object v3, v2, p2

    .line 5655
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5656
    .local v4, "swapType":Ljava/lang/invoke/MethodType;
    invoke-static {p0, v4, v1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    return-object v5
.end method

.method public static varargs whitelist test-api tableSwitch(Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p0, "fallback"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "targets"    # [Ljava/lang/invoke/MethodHandle;

    .line 5849
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5850
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5851
    invoke-virtual {p1}, [Ljava/lang/invoke/MethodHandle;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, [Ljava/lang/invoke/MethodHandle;

    .line 5852
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->tableSwitchChecks(Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 5855
    .local v0, "type":Ljava/lang/invoke/MethodType;
    new-instance v1, Ljava/lang/invoke/Transformers$TableSwitch;

    invoke-direct {v1, v0, p0, p1}, Ljava/lang/invoke/Transformers$TableSwitch;-><init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method private static blacklist tableSwitchChecks(Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "defaultCase"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "caseActions"    # [Ljava/lang/invoke/MethodHandle;

    .line 5859
    array-length v0, p1

    if-eqz v0, :cond_67

    .line 5862
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 5864
    .local v0, "expectedType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4a

    .line 5868
    array-length v2, p1

    :goto_18
    if-ge v1, v2, :cond_49

    aget-object v3, p1, v1

    .line 5869
    .local v3, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5872
    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5868
    .end local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 5873
    .restart local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case actions must have the same type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5874
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5877
    .end local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_49
    return-object v0

    .line 5865
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Case actions must have int as leading parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5866
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5860
    .end local v0    # "expectedType":Ljava/lang/invoke/MethodType;
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough cases: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 4323
    .local p0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4327
    new-instance v0, Ljava/lang/invoke/Transformers$AlwaysThrow;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$AlwaysThrow;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 4324
    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api tryFinally(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "cleanup"    # Ljava/lang/invoke/MethodHandle;

    .line 5749
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v0

    .line 5750
    .local v0, "targetParamTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 5752
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodHandles;->tryFinallyChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 5757
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x2

    :goto_1a
    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Ljava/lang/invoke/MethodHandles;->dropArgumentsToMatch(Ljava/lang/invoke/MethodHandle;ILjava/util/List;I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 5761
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Ljava/lang/invoke/MethodType;->changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 5766
    new-instance v2, Ljava/lang/invoke/Transformers$TryFinally;

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/invoke/Transformers$TryFinally;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    return-object v2
.end method

.method private static blacklist tryFinallyChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 8
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "cleanup"    # Ljava/lang/invoke/MethodHandle;

    .line 5770
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    .line 5771
    .local v0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_6c

    .line 5774
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 5775
    .local v1, "cleanupType":Ljava/lang/invoke/MethodType;
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 5778
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3a

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_2f

    goto :goto_3a

    .line 5779
    :cond_2f
    const-string v2, "cleanup second argument and target return type"

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5783
    :cond_3a
    :goto_3a
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v3, 0x2

    .line 5784
    .local v3, "cleanupArgIndex":I
    :goto_40
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 5788
    return-void

    .line 5785
    :cond_4f
    nop

    .line 5786
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5785
    const-string v5, "cleanup parameters after (Throwable,result) and target parameter list prefix"

    invoke-static {v5, v2, v4}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5776
    .end local v3    # "cleanupArgIndex":I
    :cond_5f
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    const-string v4, "cleanup first argument and Throwable"

    invoke-static {v4, v2, v3}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 5772
    .end local v1    # "cleanupType":Ljava/lang/invoke/MethodType;
    :cond_6c
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "target and return types"

    invoke-static {v2, v1, v0}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist test-api varHandleExactInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 2910
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api varHandleInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p0, "accessMode"    # Ljava/lang/invoke/VarHandle$AccessMode;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 2939
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodHandles;->methodHandleForVarHandleAccessor(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api whileLoop(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p0, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pred"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 4913
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/MethodHandles;->whileLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 4914
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->identityOrVoid(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 4915
    .local v0, "fini":Ljava/lang/invoke/MethodHandle;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/invoke/MethodHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object p1, v1, v3

    const/4 v5, 0x3

    aput-object v0, v1, v5

    .line 4916
    .local v1, "checkExit":[Ljava/lang/invoke/MethodHandle;
    new-array v5, v3, [Ljava/lang/invoke/MethodHandle;

    aput-object p0, v5, v2

    aput-object p2, v5, v4

    .line 4917
    .local v5, "varBody":[Ljava/lang/invoke/MethodHandle;
    new-array v3, v3, [[Ljava/lang/invoke/MethodHandle;

    aput-object v1, v3, v2

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/lang/invoke/MethodHandles;->loop([[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist whileLoopChecks(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 11
    .param p0, "init"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "pred"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "body"    # Ljava/lang/invoke/MethodHandle;

    .line 5024
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5025
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5026
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 5027
    .local v0, "bodyType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    .line 5028
    .local v1, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v2

    .line 5029
    .local v2, "innerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v3, v2

    .line 5030
    .local v3, "outerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_19

    goto :goto_2e

    .line 5032
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_6c

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6c

    .line 5037
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 5039
    :goto_2e
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5040
    .local v4, "predType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_5f

    .line 5041
    invoke-virtual {v4, v5, v2}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 5044
    if-eqz p0, :cond_5e

    .line 5045
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 5046
    .local v6, "initType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v1, :cond_53

    .line 5047
    invoke-virtual {v6, v5, v3}, Ljava/lang/invoke/MethodType;->effectivelyIdenticalParameters(ILjava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_5e

    .line 5048
    :cond_53
    const-string v5, "loop initializer"

    invoke-static {v1, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 5051
    .end local v6    # "initType":Ljava/lang/invoke/MethodType;
    :cond_5e
    :goto_5e
    return-void

    .line 5042
    :cond_5f
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v6, "loop predicate"

    invoke-static {v6, v4, v5}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 5034
    .end local v4    # "predType":Ljava/lang/invoke/MethodType;
    :cond_6c
    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 5035
    .local v4, "expected":Ljava/lang/invoke/MethodType;
    const-string v5, "body function"

    invoke-static {v5, v0, v4}, Ljava/lang/invoke/MethodHandles;->misMatchedTypes(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static whitelist test-api zero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3190
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    goto :goto_10

    :cond_e
    sget-object v0, Lsun/invoke/util/Wrapper;->OBJECT:Lsun/invoke/util/Wrapper;

    :goto_10
    invoke-static {v0, p0}, Ljava/lang/invoke/MethodHandles;->zero(Lsun/invoke/util/Wrapper;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist zero(Lsun/invoke/util/Wrapper;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "btw"    # Lsun/invoke/util/Wrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/invoke/util/Wrapper;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 3248
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->ordinal()I

    move-result v0

    .line 3249
    .local v0, "pos":I
    sget-object v1, Ljava/lang/invoke/MethodHandles;->ZERO_MHS:[Ljava/lang/invoke/MethodHandle;

    aget-object v1, v1, v0

    .line 3250
    .local v1, "zero":Ljava/lang/invoke/MethodHandle;
    if-nez v1, :cond_18

    .line 3251
    sget-object v2, Ljava/lang/invoke/MethodHandles;->ZERO_MHS:[Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/invoke/MethodHandles;->makeZero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/lang/invoke/MethodHandles;->setCachedMethodHandle([Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 3253
    :cond_18
    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_23

    .line 3254
    return-object v1

    .line 3255
    :cond_23
    nop

    .line 3256
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->makeZero(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method
