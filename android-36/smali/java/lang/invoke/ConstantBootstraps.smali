.class public final Ljava/lang/invoke/ConstantBootstraps;
.super Ljava/lang/Object;
.source "ConstantBootstraps.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static blacklist arrayVarHandle(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 5
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Ljava/lang/invoke/VarHandle;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .line 357
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/invoke/VarHandle;>;"
    .local p3, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-class v0, Ljava/lang/invoke/VarHandle;

    if-ne p2, v0, :cond_16

    .line 364
    invoke-static {p0, p3}, Ljava/lang/invoke/ConstantBootstraps;->validateClassAccess(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    return-object v0

    .line 361
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist enumConstant(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;
    .registers 4
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 145
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p0, p2}, Ljava/lang/invoke/ConstantBootstraps;->validateClassAccess(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;)Ljava/lang/Class;

    .line 150
    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist explicitCast(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 415
    .local p2, "dstType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_26

    .line 417
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_9

    .line 418
    return-object p3

    .line 420
    :cond_9
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->identity(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 421
    .local v0, "id":Ljava/lang/invoke/MethodHandle;
    const-class v1, Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 422
    .local v1, "mt":Ljava/lang/invoke/MethodType;
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->explicitCastArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 424
    .local v2, "conv":Ljava/lang/invoke/MethodHandle;
    :try_start_17
    invoke-polymorphic {v2, p3}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_1c} :catch_24
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    return-object v3

    .line 427
    :catchall_1d
    move-exception v3

    .line 428
    .local v3, "throwable":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 425
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_24
    move-exception v3

    .line 426
    .local v3, "e":Ljava/lang/Throwable;
    throw v3

    .line 416
    .end local v0    # "id":Ljava/lang/invoke/MethodHandle;
    .end local v1    # "mt":Ljava/lang/invoke/MethodType;
    .end local v2    # "conv":Ljava/lang/invoke/MethodHandle;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_26
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Can not convert to void"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fieldVarHandle(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 7
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Ljava/lang/invoke/VarHandle;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .line 291
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/invoke/VarHandle;>;"
    .local p3, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-class v0, Ljava/lang/invoke/VarHandle;

    if-ne p2, v0, :cond_1e

    .line 301
    :try_start_13
    invoke-virtual {p0, p3, p1, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v0

    .line 303
    :catch_18
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->mapLookupExceptionToError(Ljava/lang/ReflectiveOperationException;)Ljava/lang/LinkageError;

    move-result-object v1

    throw v1

    .line 297
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getStaticFinal(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 225
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 228
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_13

    .line 229
    :cond_12
    move-object v0, p2

    :goto_13
    nop

    .line 230
    .local v0, "declaring":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, v0}, Ljava/lang/invoke/ConstantBootstraps;->getStaticFinal(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getStaticFinal(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 170
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :try_start_c
    invoke-virtual {p0, p3, p1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStaticGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 181
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;

    move-result-object v1

    .line 182
    .local v1, "info":Ljava/lang/invoke/MethodHandleInfo;
    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_c .. :try_end_1c} :catch_49

    if-eqz v2, :cond_30

    .line 188
    .end local v1    # "info":Ljava/lang/invoke/MethodHandleInfo;
    nop

    .line 194
    :try_start_1f
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_2e
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2e
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    return-object v1

    .line 199
    :catchall_25
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/LinkageError;

    const-string v3, "Unexpected throwable"

    invoke-direct {v2, v3, v1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 196
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v1

    .line 197
    .restart local v1    # "e":Ljava/lang/Throwable;
    throw v1

    .line 183
    .local v1, "info":Ljava/lang/invoke/MethodHandleInfo;
    :cond_30
    :try_start_30
    new-instance v2, Ljava/lang/IncompatibleClassChangeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a final field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    .end local p0    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v2
    :try_end_49
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_30 .. :try_end_49} :catch_49

    .line 186
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    .end local v1    # "info":Ljava/lang/invoke/MethodHandleInfo;
    .restart local p0    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_49
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->mapLookupExceptionToError(Ljava/lang/ReflectiveOperationException;)Ljava/lang/LinkageError;

    move-result-object v1

    throw v1
.end method

.method public static varargs blacklist invoke(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "handle"    # Ljava/lang/invoke/MethodHandle;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 260
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    if-eq p2, v0, :cond_27

    .line 267
    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 268
    invoke-virtual {p3}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->withVarargs(Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p3

    .line 271
    :cond_27
    invoke-virtual {p3, p4}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist nullConstant(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not reference: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist primitiveClass(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 112
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-class v0, Ljava/lang/Class;

    if-ne p2, v0, :cond_2f

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(C)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 118
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not primitive: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist staticFieldVarHandle(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 7
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Ljava/lang/invoke/VarHandle;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .line 325
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/invoke/VarHandle;>;"
    .local p3, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-class v0, Ljava/lang/invoke/VarHandle;

    if-ne p2, v0, :cond_1e

    .line 335
    :try_start_13
    invoke-virtual {p0, p3, p1, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStaticVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_17} :catch_18

    return-object v0

    .line 337
    :catch_18
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->mapLookupExceptionToError(Ljava/lang/ReflectiveOperationException;)Ljava/lang/LinkageError;

    move-result-object v1

    throw v1

    .line 331
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static blacklist validateClassAccess(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->accessClass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_3} :catch_4

    .line 435
    return-object p1

    .line 437
    :catch_4
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Ljava/lang/invoke/MethodHandleNatives;->mapLookupExceptionToError(Ljava/lang/ReflectiveOperationException;)Ljava/lang/LinkageError;

    move-result-object v1

    throw v1
.end method
