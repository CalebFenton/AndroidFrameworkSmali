.class public abstract Ljava/lang/constant/DynamicConstantDesc;
.super Ljava/lang/Object;
.source "DynamicConstantDesc.java"

# interfaces
.implements Ljava/lang/constant/ConstantDesc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc;,
        Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/constant/ConstantDesc;"
    }
.end annotation


# instance fields
.field private final blacklist bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

.field private final blacklist bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

.field private final blacklist constantName:Ljava/lang/String;

.field private final blacklist constantType:Ljava/lang/constant/ClassDesc;


# direct methods
.method public static synthetic blacklist $r8$lambda$vF2VvuFUa-tu3hP19oq2GBK17DA(Ljava/lang/constant/ConstantDesc;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizeArrayVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizeArrayVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizeEnum(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizeEnum(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizeFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizeFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizeNull(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizeNull(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizePrimitiveClass(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizePrimitiveClass(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcanonicalizeStaticFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->canonicalizeStaticFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method protected varargs constructor blacklist <init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V
    .registers 8
    .param p1, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p2, "constantName"    # Ljava/lang/String;
    .param p3, "constantType"    # Ljava/lang/constant/ClassDesc;
    .param p4, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;

    .line 88
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/DirectMethodHandleDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/constant/ConstantUtils;->validateMemberName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    .line 91
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/ClassDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    .line 92
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    invoke-virtual {v0}, [Ljava/lang/constant/ConstantDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    iput-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 96
    return-void

    .line 95
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal invocation name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist canonicalizeArrayVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 329
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 330
    invoke-virtual {p0}, Ljava/lang/constant/DynamicConstantDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    .line 332
    :cond_13
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/constant/ClassDesc;

    invoke-static {v0}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->ofArray(Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;

    move-result-object v0

    return-object v0

    .line 331
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method private static blacklist canonicalizeEnum(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 296
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_13

    .line 299
    :cond_a
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Enum$EnumDesc;->of(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)Ljava/lang/Enum$EnumDesc;

    move-result-object v0

    return-object v0

    .line 298
    :cond_13
    :goto_13
    return-object p0
.end method

.method private static blacklist canonicalizeFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 320
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 321
    invoke-virtual {p0}, Ljava/lang/constant/DynamicConstantDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_28

    .line 323
    :cond_13
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/constant/ClassDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/constant/ClassDesc;

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->ofField(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;

    move-result-object v0

    return-object v0

    .line 322
    :cond_28
    :goto_28
    return-object p0
.end method

.method private static blacklist canonicalizeNull(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 290
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    if-eqz v0, :cond_6

    .line 291
    return-object p0

    .line 292
    :cond_6
    sget-object v0, Ljava/lang/constant/ConstantDescs;->NULL:Ljava/lang/constant/ConstantDesc;

    return-object v0
.end method

.method private static blacklist canonicalizePrimitiveClass(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 303
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    if-nez v0, :cond_1d

    .line 304
    invoke-virtual {p0}, Ljava/lang/constant/DynamicConstantDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_1d

    .line 307
    :cond_16
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    return-object v0

    .line 306
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method private static blacklist canonicalizeStaticFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;)",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 311
    .local p0, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 312
    invoke-virtual {p0}, Ljava/lang/constant/DynamicConstantDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, v1}, Ljava/lang/constant/ClassDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_28

    .line 314
    :cond_13
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/constant/ClassDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/constant/ClassDesc;

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->ofStaticField(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;

    move-result-object v0

    return-object v0

    .line 313
    :cond_28
    :goto_28
    return-object p0
.end method

.method public static blacklist of(Ljava/lang/constant/DirectMethodHandleDesc;)Ljava/lang/constant/DynamicConstantDesc;
    .registers 2
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/constant/DirectMethodHandleDesc;",
            ")",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "TT;>;"
        }
    .end annotation

    .line 201
    sget-object v0, Ljava/lang/constant/ConstantUtils;->EMPTY_CONSTANTDESC:[Ljava/lang/constant/ConstantDesc;

    invoke-static {p0, v0}, Ljava/lang/constant/DynamicConstantDesc;->of(Ljava/lang/constant/DirectMethodHandleDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist of(Ljava/lang/constant/DirectMethodHandleDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;
    .registers 4
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/constant/DirectMethodHandleDesc;",
            "[",
            "Ljava/lang/constant/ConstantDesc;",
            ")",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-interface {p0}, Ljava/lang/constant/DirectMethodHandleDesc;->invocationType()Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/MethodTypeDesc;->returnType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    const-string v1, "_"

    invoke-static {p0, v1, v0, p1}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofCanonical(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 5
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "constantName"    # Ljava/lang/String;
    .param p2, "constantType"    # Ljava/lang/constant/ClassDesc;
    .param p3, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/constant/DirectMethodHandleDesc;",
            "Ljava/lang/String;",
            "Ljava/lang/constant/ClassDesc;",
            "[",
            "Ljava/lang/constant/ConstantDesc;",
            ")",
            "Ljava/lang/constant/ConstantDesc;"
        }
    .end annotation

    .line 137
    invoke-static {p0, p1, p2, p3}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    .line 138
    invoke-direct {v0}, Ljava/lang/constant/DynamicConstantDesc;->tryCanonicalize()Ljava/lang/constant/ConstantDesc;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public static varargs blacklist ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;
    .registers 5
    .param p0, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p1, "constantName"    # Ljava/lang/String;
    .param p2, "constantType"    # Ljava/lang/constant/ClassDesc;
    .param p3, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/constant/DirectMethodHandleDesc;",
            "Ljava/lang/String;",
            "Ljava/lang/constant/ClassDesc;",
            "[",
            "Ljava/lang/constant/ConstantDesc;",
            ")",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "TT;>;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    return-object v0
.end method

.method private blacklist tryCanonicalize()Ljava/lang/constant/ConstantDesc;
    .registers 3

    .line 277
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    sget-object v0, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder;->CANONICAL_MAP:Ljava/util/Map;

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    .line 278
    .local v0, "f":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/constant/DynamicConstantDesc<*>;Ljava/lang/constant/ConstantDesc;>;"
    if-eqz v0, :cond_15

    .line 280
    :try_start_c
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/constant/ConstantDesc;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_13

    return-object v1

    .line 282
    :catchall_13
    move-exception v1

    .line 283
    .local v1, "t":Ljava/lang/Throwable;
    return-object p0

    .line 286
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_15
    return-object p0
.end method


# virtual methods
.method public blacklist bootstrapArgs()[Ljava/lang/constant/ConstantDesc;
    .registers 2

    .line 240
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-virtual {v0}, [Ljava/lang/constant/ConstantDesc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/constant/ConstantDesc;

    return-object v0
.end method

.method public blacklist bootstrapArgsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/constant/ConstantDesc;",
            ">;"
        }
    .end annotation

    .line 249
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist bootstrapMethod()Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 2

    .line 231
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    return-object v0
.end method

.method public blacklist constantName()Ljava/lang/String;
    .registers 2

    .line 211
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist constantType()Ljava/lang/constant/ClassDesc;
    .registers 2

    .line 221
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 352
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 357
    :cond_4
    instance-of v1, p1, Ljava/lang/constant/DynamicConstantDesc;

    if-eqz v1, :cond_34

    .line 353
    move-object v1, p1

    check-cast v1, Ljava/lang/constant/DynamicConstantDesc;

    .local v1, "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v3, v1, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 354
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    iget-object v3, v1, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 355
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    iget-object v3, v1, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    .line 356
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    iget-object v3, v1, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    .line 357
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_35

    .end local v1    # "desc":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<*>;"
    :cond_34
    const/4 v0, 0x0

    .line 353
    :goto_35
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 362
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 363
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 364
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 7
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 255
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/DirectMethodHandleDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 256
    .local v0, "bsm":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_54

    const-class v1, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 257
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 261
    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 262
    .local v1, "bsmArgs":[Ljava/lang/Object;
    aput-object p1, v1, v4

    .line 263
    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 264
    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    invoke-interface {v3, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    array-length v3, v3

    if-ge v2, v3, :cond_4f

    .line 266
    add-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    aget-object v4, v4, v2

    invoke-interface {v4, p1}, Ljava/lang/constant/ConstantDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 268
    .end local v2    # "i":I
    :cond_4f
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "bsmArgs":[Ljava/lang/Object;
    :cond_54
    new-instance v1, Ljava/lang/BootstrapMethodError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bootstrap method declared for resolving a dynamic constant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/BootstrapMethodError;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    .end local p1    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    throw v1
    :try_end_6f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6f} :catch_76
    .catchall {:try_start_0 .. :try_end_6f} :catchall_6f

    .line 271
    .end local v0    # "bsm":Ljava/lang/invoke/MethodHandle;
    .restart local p0    # "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    .restart local p1    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    :catchall_6f
    move-exception v0

    .line 272
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/BootstrapMethodError;

    invoke-direct {v1, v0}, Ljava/lang/BootstrapMethodError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 269
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_76
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Error;
    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 376
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc<TT;>;"
    iget-object v0, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 377
    invoke-interface {v0}, Ljava/lang/constant/DirectMethodHandleDesc;->owner()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 378
    invoke-interface {v1}, Ljava/lang/constant/DirectMethodHandleDesc;->methodName()Ljava/lang/String;

    move-result-object v1

    .line 379
    iget-object v2, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, ""

    goto :goto_32

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->constantName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_32
    iget-object v3, p0, Ljava/lang/constant/DynamicConstantDesc;->bootstrapArgs:[Ljava/lang/constant/ConstantDesc;

    .line 380
    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Ljava/lang/constant/DynamicConstantDesc$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/constant/DynamicConstantDesc$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/constant/DynamicConstantDesc;->constantType:Ljava/lang/constant/ClassDesc;

    .line 381
    invoke-interface {v4}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 376
    const-string v1, "DynamicConstantDesc[%s::%s(%s%s)%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
