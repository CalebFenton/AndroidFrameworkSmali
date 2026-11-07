.class public final Ljava/lang/invoke/MethodType;
.super Ljava/lang/Object;
.source "MethodType.java"

# interfaces
.implements Ljava/lang/invoke/TypeDescriptor$OfMethod;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/invoke/TypeDescriptor$OfMethod<",
        "Ljava/lang/Class<",
        "*>;",
        "Ljava/lang/invoke/MethodType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o MAX_JVM_ARITY:I = 0xff

.field static final greylist-max-o MAX_MH_ARITY:I = 0xfe

.field static final greylist-max-o MAX_MH_INVOKER_ARITY:I = 0xfd

.field static final greylist-max-o NO_PTYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist internTable:Ljdk/internal/util/ReferencedKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/util/ReferencedKeySet<",
            "Ljava/lang/invoke/MethodType;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o objectOnlyTypes:[Ljava/lang/invoke/MethodType;

.field private static final greylist-max-o ptypesOffset:J

.field private static final greylist-max-o rtypeOffset:J

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x124L


# instance fields
.field private greylist-max-o form:Ljava/lang/invoke/MethodTypeForm;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private greylist-max-o methodDescriptor:Ljava/lang/String;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final greylist-max-o ptypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o rtype:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o wrapAlt:Ljava/lang/invoke/MethodType;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    const-class v0, Ljava/lang/invoke/MethodType;

    .line 193
    new-instance v1, Ljava/lang/invoke/MethodType$1;

    invoke-direct {v1}, Ljava/lang/invoke/MethodType$1;-><init>()V

    .line 196
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljdk/internal/util/ReferencedKeySet;->createWithNativeQueue(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeySet;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljdk/internal/util/ReferencedKeySet;

    .line 204
    new-array v1, v2, [Ljava/lang/Class;

    sput-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .line 333
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/invoke/MethodType;

    sput-object v1, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    .line 1218
    new-array v1, v2, [Ljava/io/ObjectStreamField;

    sput-object v1, Ljava/lang/invoke/MethodType;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1296
    :try_start_1c
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v2, "rtype"

    .line 1297
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    .line 1298
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-string v2, "ptypes"

    .line 1299
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/invoke/MethodType;->ptypesOffset:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_3a

    .line 1302
    nop

    .line 1303
    return-void

    .line 1300
    :catch_3a
    move-exception v0

    .line 1301
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 1281
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 1282
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 117
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    .line 119
    iput-object p2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 120
    return-void
.end method

.method private greylist-max-o MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1286
    .local p1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1287
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1288
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/MethodType;->rtypeOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1289
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/MethodType;->ptypesOffset:J

    invoke-virtual {v0, p0, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1290
    return-void
.end method

.method static greylist-max-o canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1002
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-eq p0, p1, :cond_61

    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_61

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_c

    goto :goto_61

    .line 1004
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1007
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_17

    return v0

    .line 1008
    :cond_17
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    .line 1009
    .local v0, "sw":Lsun/invoke/util/Wrapper;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1011
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v1

    return v1

    .line 1014
    :cond_2a
    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 1016
    .end local v0    # "sw":Lsun/invoke/util/Wrapper;
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1018
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3e

    return v0

    .line 1019
    :cond_3e
    invoke-static {p1}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v1

    .line 1026
    .local v1, "dw":Lsun/invoke/util/Wrapper;
    invoke-virtual {v1}, Lsun/invoke/util/Wrapper;->wrapperType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1027
    return v0

    .line 1033
    :cond_4d
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->isWrapperType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1034
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forWrapperType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/invoke/util/Wrapper;->isConvertibleFrom(Lsun/invoke/util/Wrapper;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1036
    return v0

    .line 1045
    :cond_5e
    const/4 v0, 0x0

    return v0

    .line 1048
    .end local v1    # "dw":Lsun/invoke/util/Wrapper;
    :cond_60
    return v0

    .line 1002
    :cond_61
    :goto_61
    return v0
.end method

.method private greylist-max-o canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 991
    .local p1, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 992
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 993
    const/4 v1, 0x0

    return v1

    .line 991
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 996
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o checkPtype(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 166
    .local p0, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_8

    .line 169
    return-void

    .line 168
    :cond_8
    const-string v0, "parameter type cannot be void"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o checkPtypes([Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 172
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 173
    .local v0, "slots":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 174
    .local v3, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 175
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_12

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_14

    .line 176
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 173
    .end local v3    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 179
    :cond_17
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 180
    return v0
.end method

.method private static greylist-max-o checkRtype(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 163
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method static greylist-max-o checkSlotCount(I)V
    .registers 3
    .param p0, "count"    # I

    .line 185
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_5

    .line 187
    return-void

    .line 186
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad parameter count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o equals(Ljava/lang/invoke/MethodType;)Z
    .registers 4
    .param p1, "that"    # Ljava/lang/invoke/MethodType;

    .line 807
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 808
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 807
    :goto_13
    return v0
.end method

.method private static greylist-max-o explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 976
    .local p0, "src":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "dst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-eq p0, p1, :cond_2e

    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_2e

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_c

    goto :goto_2e

    .line 977
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 980
    invoke-static {p0, p1}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 981
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 983
    return v2

    .line 986
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :cond_2d
    :goto_2d
    return v0

    .line 976
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static whitelist test-api fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/TypeNotPresentException;
        }
    .end annotation

    .line 1149
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1150
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_38

    .line 1151
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    .line 1153
    invoke-static {p0, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 1154
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1155
    .local v1, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 1156
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v3

    .line 1157
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1, v3, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 1152
    .end local v0    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v1    # "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not a method descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api genericMethodType(I)Ljava/lang/invoke/MethodType;
    .registers 2
    .param p0, "objectArgCount"    # I

    .line 377
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/invoke/MethodType;->genericMethodType(IZ)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api genericMethodType(IZ)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "objectArgCount"    # I
    .param p1, "finalArray"    # Z

    .line 349
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 350
    move v0, p1

    .line 351
    .local v0, "ivarargs":I
    mul-int/lit8 v1, p0, 0x2

    add-int/2addr v1, v0

    .line 352
    .local v1, "ootIndex":I
    sget-object v2, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 353
    sget-object v2, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aget-object v2, v2, v1

    .line 354
    .local v2, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v2, :cond_13

    return-object v2

    .line 356
    .end local v2    # "mt":Ljava/lang/invoke/MethodType;
    :cond_13
    add-int v2, p0, v0

    new-array v2, v2, [Ljava/lang/Class;

    .line 357
    .local v2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    if-eqz v0, :cond_22

    const-class v3, [Ljava/lang/Object;

    aput-object v3, v2, p0

    .line 359
    :cond_22
    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 360
    .local v3, "mt":Ljava/lang/invoke/MethodType;
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    array-length v4, v4

    if-ge v1, v4, :cond_32

    .line 361
    sget-object v4, Ljava/lang/invoke/MethodType;->objectOnlyTypes:[Ljava/lang/invoke/MethodType;

    aput-object v3, v4, v1

    .line 363
    :cond_32
    return-object v3
.end method

.method private static greylist-max-o listToArray(Ljava/util/List;)[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 236
    .local p0, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 237
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method static greylist-max-o makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p2, "trusted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 311
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    if-nez v0, :cond_6

    .line 312
    sget-object p1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 p2, 0x1

    .line 314
    :cond_6
    new-instance v0, Ljava/lang/invoke/MethodType;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/MethodType;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 315
    .local v0, "primordialMT":Ljava/lang/invoke/MethodType;
    sget-object v1, Ljava/lang/invoke/MethodType;->internTable:Ljdk/internal/util/ReferencedKeySet;

    invoke-virtual {v1, v0}, Ljdk/internal/util/ReferencedKeySet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    .line 316
    .local v1, "mt":Ljava/lang/invoke/MethodType;
    if-eqz v1, :cond_16

    .line 317
    return-object v1

    .line 320
    :cond_16
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    if-eqz p2, :cond_20

    .line 322
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 323
    move-object v1, v0

    goto :goto_31

    .line 326
    :cond_20
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [Ljava/lang/Class;

    .line 327
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 328
    new-instance v2, Ljava/lang/invoke/MethodType;

    invoke-direct {v2, p0, p1}, Ljava/lang/invoke/MethodType;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    move-object v1, v2

    .line 330
    :goto_31
    invoke-static {v1}, Ljava/lang/invoke/MethodTypeForm;->findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;

    move-result-object v2

    iput-object v2, v1, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    .line 331
    sget-object v2, Ljava/lang/invoke/MethodType;->internTable:Ljdk/internal/util/ReferencedKeySet;

    invoke-virtual {v2, v1}, Ljdk/internal/util/ReferencedKeySet;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/invoke/MethodType;

    return-object v2
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 269
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 284
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 253
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptype0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    .line 254
    .local v0, "ptypes1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 255
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "ptypes"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 299
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 230
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "notrust":Z
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 216
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;
    .registers 3
    .param p0, "num"    # Ljava/lang/Object;

    .line 189
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1261
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1263
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1264
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 1268
    .local v1, "parameterArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->checkRtype(Ljava/lang/Class;)V

    .line 1269
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    .line 1271
    invoke-virtual {v1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    .line 1272
    invoke-direct {p0, v0, v1}, Ljava/lang/invoke/MethodType;->MethodType_init(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1273
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3

    .line 1314
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o toFieldDescriptorString(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1210
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 3
    .param p0, "wt"    # Ljava/lang/invoke/MethodType;

    .line 719
    nop

    .line 720
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 721
    .local v0, "uwt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_f

    .line 723
    const/4 v1, 0x3

    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 724
    if-nez v0, :cond_d

    .line 725
    move-object v0, p0

    .line 726
    :cond_d
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 728
    :cond_f
    return-object v0
.end method

.method private static greylist-max-o wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 3
    .param p0, "pt"    # Ljava/lang/invoke/MethodType;

    .line 707
    nop

    .line 708
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 709
    .local v0, "wt":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_d

    .line 711
    const/4 v1, 0x2

    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 712
    nop

    .line 713
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->wrapAlt:Ljava/lang/invoke/MethodType;

    .line 715
    :cond_d
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1242
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1243
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1244
    return-void
.end method


# virtual methods
.method public whitelist test-api appendParameterTypes(Ljava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 461
    .local p1, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api appendParameterTypes([Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 433
    .local p1, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method blacklist asCollectorType(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p2, "pos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 541
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 542
    nop

    .line 543
    nop

    .line 545
    const-class v0, [Ljava/lang/Object;

    if-ne p1, v0, :cond_18

    .line 546
    invoke-static {p3}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 547
    .local v0, "res":Ljava/lang/invoke/MethodType;
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_28

    .line 548
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_28

    .line 551
    .end local v0    # "res":Ljava/lang/invoke/MethodType;
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 552
    .local v0, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 553
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {p3, v0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    move-object v0, v1

    .line 555
    .local v0, "res":Ljava/lang/invoke/MethodType;
    :cond_28
    :goto_28
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 556
    return-object v0

    .line 559
    :cond_2f
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_46

    .line 560
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v3, v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 562
    :cond_46
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method blacklist asSpreaderType(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;
    .registers 9
    .param p2, "pos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 497
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 498
    move v0, p2

    .line 499
    .local v0, "spreadPos":I
    if-nez p3, :cond_5

    return-object p0

    .line 500
    :cond_5
    const-class v1, [Ljava/lang/Object;

    if-ne p1, v1, :cond_23

    .line 501
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_10

    return-object p0

    .line 502
    :cond_10
    if-nez v0, :cond_23

    .line 504
    invoke-static {p3}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 505
    .local v1, "res":Ljava/lang/invoke/MethodType;
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_22

    .line 506
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 508
    :cond_22
    return-object v1

    .line 511
    .end local v1    # "res":Ljava/lang/invoke/MethodType;
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 512
    .local v1, "elemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 513
    move v2, v0

    .local v2, "i":I
    :goto_29
    add-int v3, v0, p3

    if-ge v2, v3, :cond_4a

    .line 514
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-eq v3, v1, :cond_47

    .line 515
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v3}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 516
    .local v3, "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    add-int v4, v0, p3

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 517
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 513
    .end local v3    # "fixedPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 520
    .end local v2    # "i":I
    :cond_4a
    return-object p0
.end method

.method public whitelist test-api changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 391
    .local p2, "nptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_7

    return-object p0

    .line 392
    :cond_7
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtype(Ljava/lang/Class;)V

    .line 393
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 394
    .local v0, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aput-object p2, v0, p1

    .line 395
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist test-api changeParameterType(ILjava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 95
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->changeParameterType(ILjava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 611
    .local p1, "nrtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_7

    return-object p0

    .line 612
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api changeReturnType(Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api descriptorString()Ljava/lang/String;
    .registers 2

    .line 1205
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->toMethodDescriptorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api dropParameterTypes(II)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 577
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 578
    .local v0, "len":I
    if-ltz p1, :cond_41

    if-gt p1, p2, :cond_41

    if-gt p2, v0, :cond_41

    .line 580
    if-ne p1, p2, :cond_c

    return-object p0

    .line 582
    :cond_c
    if-nez p1, :cond_1c

    .line 583
    if-ne p2, v0, :cond_13

    .line 585
    sget-object v1, Ljava/lang/invoke/MethodType;->NO_PTYPES:[Ljava/lang/Class;

    .local v1, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_39

    .line 588
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_13
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_39

    .line 591
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1c
    const/4 v1, 0x0

    if-ne p2, v0, :cond_28

    .line 593
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_39

    .line 595
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_28
    sub-int v2, v0, p2

    .line 596
    .local v2, "tail":I
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v4, p1, v2

    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 597
    .restart local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    .end local v2    # "tail":I
    :goto_39
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 579
    .end local v1    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist test-api dropParameterTypes(II)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object p1

    return-object p1
.end method

.method blacklist effectivelyIdenticalParameters(ILjava/util/List;)Z
    .registers 7
    .param p1, "skipPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    .line 860
    .local p2, "fullList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .local v0, "myLen":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 861
    .local v1, "fullLen":I
    const/4 v2, 0x0

    if-gt p1, v0, :cond_2c

    sub-int v3, v0, p1

    if-le v3, v1, :cond_f

    goto :goto_2c

    .line 863
    :cond_f
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 864
    .local v3, "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_1c

    .line 865
    invoke-interface {v3, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 866
    sub-int/2addr v0, p1

    .line 868
    :cond_1c
    if-ne v1, v0, :cond_23

    .line 869
    invoke-interface {v3, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 871
    :cond_23
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 862
    .end local v3    # "myList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_2c
    :goto_2c
    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .line 803
    if-eq p0, p1, :cond_12

    instance-of v0, p1, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Ljava/lang/invoke/MethodType;

    invoke-direct {p0, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public whitelist test-api erase()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 642
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->erasedType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o explicitCastEquivalentToAsType(Ljava/lang/invoke/MethodType;)Z
    .registers 9
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 942
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 943
    :cond_4
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 944
    return v2

    .line 946
    :cond_10
    iget-object v1, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 947
    .local v1, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 948
    .local v3, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne v3, v1, :cond_17

    .line 949
    return v0

    .line 951
    :cond_17
    nop

    .line 952
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v3

    if-ge v4, v5, :cond_2a

    .line 953
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->explicitCastEquivalentToAsType(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 954
    return v2

    .line 952
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 957
    .end local v4    # "i":I
    :cond_2a
    return v0
.end method

.method greylist-max-o form()Ljava/lang/invoke/MethodTypeForm;
    .registers 2

    .line 122
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    return-object v0
.end method

.method public whitelist test-api generic()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 674
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hasPrimitives()Z
    .registers 2

    .line 621
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->hasPrimitives()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWrappers()Z
    .registers 2

    .line 632
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->unwrap()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-eq v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 823
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 824
    .local v0, "hashCode":I
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 825
    .local v4, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 824
    .end local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 826
    :cond_1b
    return v0
.end method

.method public whitelist test-api insertParameterTypes(ILjava/util/List;)Ljava/lang/invoke/MethodType;
    .registers 4
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 448
    .local p2, "ptypesToInsert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->listToArray(Ljava/util/List;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 10
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 410
    .local p2, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 411
    .local v0, "len":I
    if-ltz p1, :cond_36

    if-gt p1, v0, :cond_36

    .line 413
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->checkPtypes([Ljava/lang/Class;)I

    move-result v1

    .line 414
    .local v1, "ins":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterSlotCount()I

    move-result v2

    array-length v3, p2

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->checkSlotCount(I)V

    .line 415
    array-length v2, p2

    .line 416
    .local v2, "ilen":I
    if-nez v2, :cond_19

    return-object p0

    .line 417
    :cond_19
    iget-object v3, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int v4, v0, v2

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 418
    .local v3, "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    add-int v4, p1, v2

    sub-int v6, v0, p1

    invoke-static {v3, p1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    invoke-static {p2, v5, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget-object v4, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4

    .line 412
    .end local v1    # "ins":I
    .end local v2    # "ilen":I
    .end local v3    # "nptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic whitelist test-api insertParameterTypes(I[Ljava/lang/invoke/TypeDescriptor$OfField;)Ljava/lang/invoke/TypeDescriptor$OfMethod;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 95
    check-cast p2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o isConvertibleTo(Ljava/lang/invoke/MethodType;)Z
    .registers 9
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 912
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 913
    return v1

    .line 914
    :cond_10
    iget-object v0, p1, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 915
    .local v0, "srcTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    .line 916
    .local v2, "dstTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    if-ne v0, v2, :cond_18

    .line 917
    return v3

    .line 919
    :cond_18
    array-length v4, v0

    move v5, v4

    .local v5, "argc":I
    array-length v6, v2

    if-eq v4, v6, :cond_1e

    .line 920
    return v1

    .line 921
    :cond_1e
    if-gt v5, v3, :cond_2e

    .line 922
    if-ne v5, v3, :cond_2d

    aget-object v4, v0, v1

    aget-object v6, v2, v1

    invoke-static {v4, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 923
    return v1

    .line 924
    :cond_2d
    return v3

    .line 934
    :cond_2e
    invoke-direct {p0, v0, v2}, Ljava/lang/invoke/MethodType;->canConvertParameters([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method greylist-max-o isGeneric()Z
    .registers 2

    .line 678
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->erase()Ljava/lang/invoke/MethodType;

    move-result-object v0

    if-ne p0, v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api lastParameterType()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 781
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 782
    .local v0, "len":I
    if-nez v0, :cond_8

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_e

    :cond_8
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    :goto_e
    return-object v1
.end method

.method greylist-max-o leadingReferenceParameter()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, v0

    .line 529
    .local v1, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_12

    .line 531
    return-object v1

    .line 530
    .end local v1    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    const-string v0, "no leading reference parameter"

    invoke-static {v0}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api parameterArray()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parameterArray()[Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 95
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parameterCount()I
    .registers 2

    .line 745
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api parameterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o parameterSlotCount()I
    .registers 2

    .line 1065
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->form:Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodTypeForm;->parameterSlotCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parameterType(I)Ljava/lang/Class;
    .registers 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic whitelist test-api parameterType(I)Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o ptypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    return-object v0
.end method

.method varargs blacklist replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 479
    .local p3, "ptypesToInsert":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_7

    .line 480
    invoke-virtual {p0, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 481
    :cond_7
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v0, v0

    .line 482
    .local v0, "len":I
    if-ltz p1, :cond_21

    if-gt p1, p2, :cond_21

    if-gt p2, v0, :cond_21

    .line 484
    array-length v1, p3

    .line 485
    .local v1, "ilen":I
    if-nez v1, :cond_18

    .line 486
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 487
    :cond_18
    invoke-virtual {p0, p1, p2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2

    .line 483
    .end local v1    # "ilen":I
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodType;->newIndexOutOfBoundsException(Ljava/lang/Object;)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api returnType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api returnType()Ljava/lang/invoke/TypeDescriptor$OfField;
    .registers 2

    .line 95
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o rtype()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api toMethodDescriptorString()Ljava/lang/String;
    .registers 2

    .line 1174
    iget-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1175
    .local v0, "desc":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1176
    invoke-static {p0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    iput-object v0, p0, Ljava/lang/invoke/MethodType;->methodDescriptor:Ljava/lang/String;

    .line 1179
    :cond_a
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 844
    if-lez v1, :cond_17

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_17
    iget-object v2, p0, Ljava/lang/invoke/MethodType;->ptypes:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 847
    .end local v1    # "i":I
    :cond_25
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget-object v1, p0, Ljava/lang/invoke/MethodType;->rtype:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api unwrap()Ljava/lang/invoke/MethodType;
    .registers 3

    .line 702
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_c

    :cond_8
    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 703
    .local v0, "noprims":Ljava/lang/invoke/MethodType;
    :goto_c
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->unwrapWithNoPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api wrap()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 691
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->hasPrimitives()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Ljava/lang/invoke/MethodType;->wrapWithPrims(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method
