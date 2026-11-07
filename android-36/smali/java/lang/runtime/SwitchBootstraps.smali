.class public Ljava/lang/runtime/SwitchBootstraps;
.super Ljava/lang/Object;
.source "SwitchBootstraps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;,
        Ljava/lang/runtime/SwitchBootstraps$EnumMap;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_INDEX:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist ENUM_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist INSTANCEOF_CHECK:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist INTEGER_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist IS_ZERO:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field private static final blacklist MAPPED_ENUM_LOOKUP:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist NULL_CHECK:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECT_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist SENTINEL:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$0wJNfmDrnPvEyOB_ACh30XSgIpk(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Ljava/lang/runtime/SwitchBootstraps;->verifyLabel(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 54
    const-class v0, Ljava/lang/runtime/SwitchBootstraps;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->SENTINEL:Ljava/lang/Object;

    .line 55
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 68
    :try_start_f
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/lang/Class;

    const-string v3, "isInstance"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    .line 69
    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 70
    invoke-static {v2, v3, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    filled-new-array {v4, v7}, [I

    move-result-object v3

    .line 68
    invoke-static {v1, v2, v3}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->INSTANCEOF_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 71
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v2, "integerEqCheck"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v6, v7

    .line 72
    invoke-static {v3, v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->INTEGER_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 73
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/util/Objects;

    const-string v3, "equals"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v7

    .line 74
    invoke-static {v5, v6, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 73
    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->OBJECT_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 75
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v2, "enumEqCheck"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Enum$EnumDesc;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/invoke/MethodHandles$Lookup;

    aput-object v9, v8, v4

    const-class v9, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 76
    invoke-static {v3, v5, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 75
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->ENUM_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 77
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/util/Objects;

    const-string v3, "isNull"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    .line 78
    invoke-static {v5, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 77
    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->NULL_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 79
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v2, "isZero"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 80
    invoke-static {v3, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->IS_ZERO:Ljava/lang/invoke/MethodHandle;

    .line 81
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v2, Ljava/util/Objects;

    const-string v3, "checkIndex"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v7

    .line 82
    invoke-static {v5, v8, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 81
    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/runtime/SwitchBootstraps;->CHECK_INDEX:Ljava/lang/invoke/MethodHandle;

    .line 83
    sget-object v1, Ljava/lang/runtime/SwitchBootstraps;->LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v2, "mappedEnumLookup"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Enum;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/invoke/MethodHandles$Lookup;

    aput-object v9, v8, v7

    const-class v7, Ljava/lang/Class;

    aput-object v7, v8, v4

    const-class v4, [Ljava/lang/Enum$EnumDesc;

    aput-object v4, v8, v10

    const-class v4, Ljava/lang/runtime/SwitchBootstraps$EnumMap;

    aput-object v4, v8, v6

    .line 84
    invoke-static {v3, v5, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 83
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/SwitchBootstraps;->MAPPED_ENUM_LOOKUP:Ljava/lang/invoke/MethodHandle;
    :try_end_f4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_f .. :try_end_f4} :catch_f6

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :catch_f6
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertEnumConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p2, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 352
    .local p1, "enumClassTemplate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_65

    .line 355
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 356
    .local v0, "labelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_30

    .line 357
    if-ne p2, p1, :cond_d

    .line 361
    return-object p2

    .line 358
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the Class label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected the provided enum class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_30
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_46

    .line 363
    invoke-virtual {p1}, Ljava/lang/Class;->describeConstable()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/constant/ClassDesc;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Enum$EnumDesc;->of(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)Ljava/lang/Enum$EnumDesc;

    move-result-object v1

    return-object v1

    .line 365
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label with illegal type found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected label of type either String or Class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    .end local v0    # "labelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null label found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createMethodHandleSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 11
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "labels"    # [Ljava/lang/Object;

    .line 224
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v4, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 225
    .local v0, "def":Ljava/lang/invoke/MethodHandle;
    array-length v2, p1

    if-lez v2, :cond_1f

    .line 226
    invoke-static {p0, p1}, Ljava/lang/runtime/SwitchBootstraps;->createRepeatIndexSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .local v2, "mainTest":Ljava/lang/invoke/MethodHandle;
    goto :goto_29

    .line 228
    .end local v2    # "mainTest":Ljava/lang/invoke/MethodHandle;
    :cond_1f
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v4, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 230
    .restart local v2    # "mainTest":Ljava/lang/invoke/MethodHandle;
    :goto_29
    sget-object v3, Ljava/lang/runtime/SwitchBootstraps;->NULL_CHECK:Ljava/lang/invoke/MethodHandle;

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 231
    invoke-static {v3, v4, v5}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 232
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    invoke-static {v5, v4, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 231
    invoke-static {v3, v5, v2}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 234
    .local v3, "body":Ljava/lang/invoke/MethodHandle;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    .line 235
    invoke-static {v5, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-static {v3, v5, v1}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 236
    .local v1, "switchImpl":Ljava/lang/invoke/MethodHandle;
    array-length v4, p1

    invoke-static {v1, v4}, Ljava/lang/runtime/SwitchBootstraps;->withIndexCheck(Ljava/lang/invoke/MethodHandle;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist createRepeatIndexSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 20
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "labels"    # [Ljava/lang/Object;

    .line 185
    move-object/from16 v0, p1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v5, v3}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 186
    .local v1, "def":Ljava/lang/invoke/MethodHandle;
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/invoke/MethodHandle;

    .line 187
    .local v3, "testChains":[Ljava/lang/invoke/MethodHandle;
    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->reversed()Ljava/util/List;

    move-result-object v4

    .line 189
    .local v4, "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_25
    array-length v7, v0

    if-ge v6, v7, :cond_bf

    .line 190
    move-object v7, v1

    .line 191
    .local v7, "test":Ljava/lang/invoke/MethodHandle;
    array-length v8, v0

    sub-int/2addr v8, v2

    .line 192
    .local v8, "idx":I
    array-length v9, v0

    sub-int/2addr v9, v6

    invoke-interface {v4, v5, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 194
    .local v9, "currentLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_32
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a9

    .line 195
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 196
    .local v11, "currentLabel":Ljava/lang/Object;
    add-int/lit8 v12, v10, 0x1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_4f

    add-int/lit8 v12, v10, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_4f

    move-object/from16 v14, p0

    goto :goto_a2

    .line 198
    :cond_4f
    instance-of v12, v11, Ljava/lang/Class;

    if-eqz v12, :cond_58

    .line 199
    sget-object v12, Ljava/lang/runtime/SwitchBootstraps;->INSTANCEOF_CHECK:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v14, p0

    .local v12, "currentTest":Ljava/lang/invoke/MethodHandle;
    goto :goto_7d

    .line 200
    .end local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    :cond_58
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_61

    .line 201
    sget-object v12, Ljava/lang/runtime/SwitchBootstraps;->INTEGER_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    move-object/from16 v14, p0

    .restart local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    goto :goto_7d

    .line 202
    .end local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    :cond_61
    instance-of v12, v11, Ljava/lang/Enum$EnumDesc;

    if-eqz v12, :cond_79

    .line 203
    sget-object v12, Ljava/lang/runtime/SwitchBootstraps;->ENUM_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    new-instance v13, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;-><init>(Ljava/lang/runtime/SwitchBootstraps-IA;)V

    move-object/from16 v14, p0

    filled-new-array {v14, v13}, [Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x2

    invoke-static {v12, v15, v13}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v12

    .restart local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    goto :goto_7d

    .line 205
    .end local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    :cond_79
    move-object/from16 v14, p0

    sget-object v12, Ljava/lang/runtime/SwitchBootstraps;->OBJECT_EQ_CHECK:Ljava/lang/invoke/MethodHandle;

    .line 207
    .restart local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    :goto_7d
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v2, v13}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v13

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 208
    move/from16 v16, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v5}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    new-array v15, v2, [Ljava/lang/Class;

    const-class v17, Ljava/lang/Object;

    aput-object v17, v15, v16

    move/from16 v2, v16

    invoke-static {v5, v2, v15}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 207
    invoke-static {v13, v5, v7}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    move-object v7, v2

    .line 194
    .end local v11    # "currentLabel":Ljava/lang/Object;
    .end local v12    # "currentTest":Ljava/lang/invoke/MethodHandle;
    :goto_a2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    goto :goto_32

    :cond_a9
    move-object/from16 v14, p0

    .line 211
    .end local v10    # "j":I
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v2, v5, v10

    invoke-static {v7, v10, v5}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    aput-object v2, v3, v6

    .line 189
    .end local v7    # "test":Ljava/lang/invoke/MethodHandle;
    .end local v8    # "idx":I
    .end local v9    # "currentLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    const/4 v2, 0x1

    goto/16 :goto_25

    :cond_bf
    move-object/from16 v14, p0

    move v10, v5

    .line 214
    .end local v6    # "i":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v10

    invoke-static {v1, v10, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodHandles;->tableSwitch(Ljava/lang/invoke/MethodHandle;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist enumEqCheck(Ljava/lang/Object;Ljava/lang/Enum$EnumDesc;Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p3, "resolvedEnum"    # Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Enum$EnumDesc<",
            "*>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;",
            ")Z"
        }
    .end annotation

    .line 393
    .local p1, "label":Ljava/lang/Enum$EnumDesc;, "Ljava/lang/Enum$EnumDesc<*>;"
    iget-object v0, p3, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;->resolvedEnum:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 397
    :try_start_5
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    .line 401
    .local v0, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum$EnumDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v2

    .line 403
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v2, :cond_1b

    .line 404
    return v1

    .line 407
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/lang/Enum$EnumDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Enum;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1f} :catch_21
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_1f} :catch_21

    .line 410
    .end local v0    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "resolved":Ljava/lang/Object;
    goto :goto_24

    .line 398
    .end local v3    # "resolved":Ljava/lang/Object;
    :cond_20
    return v1

    .line 408
    :catch_21
    move-exception v0

    .line 409
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/runtime/SwitchBootstraps;->SENTINEL:Ljava/lang/Object;

    .line 412
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "resolved":Ljava/lang/Object;
    :goto_24
    iput-object v3, p3, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;->resolvedEnum:Ljava/lang/Object;

    .line 415
    .end local v3    # "resolved":Ljava/lang/Object;
    :cond_26
    iget-object v0, p3, Ljava/lang/runtime/SwitchBootstraps$ResolvedEnumLabel;->resolvedEnum:Ljava/lang/Object;

    if-ne p0, v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public static varargs whitelist test-api enumSwitch(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;
    .registers 15
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "invocationName"    # Ljava/lang/String;
    .param p2, "invocationType"    # Ljava/lang/invoke/MethodType;
    .param p3, "labels"    # [Ljava/lang/Object;

    .line 313
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_dd

    .line 314
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_dd

    .line 316
    invoke-virtual {p2, v0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 317
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 319
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object p3, v3

    check-cast p3, [Ljava/lang/Object;

    .line 323
    invoke-virtual {p2, v0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 324
    .local v3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p3

    .line 327
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    .line 329
    .local v4, "constantsOnly":Z
    array-length v5, p3

    if-lez v5, :cond_ca

    if-eqz v4, :cond_ca

    .line 334
    sget-object v5, Ljava/lang/runtime/SwitchBootstraps;->NULL_CHECK:Ljava/lang/invoke/MethodHandle;

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    .line 335
    invoke-static {v5, v0, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 336
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v1, v2

    invoke-static {v6, v0, v1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sget-object v6, Ljava/lang/runtime/SwitchBootstraps;->IS_ZERO:Ljava/lang/invoke/MethodHandle;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v0

    .line 337
    invoke-static {v6, v2, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 338
    invoke-static {p0, p3}, Ljava/lang/runtime/SwitchBootstraps;->createRepeatIndexSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    sget-object v8, Ljava/lang/runtime/SwitchBootstraps;->MAPPED_ENUM_LOOKUP:Ljava/lang/invoke/MethodHandle;

    new-instance v9, Ljava/lang/runtime/SwitchBootstraps$EnumMap;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/runtime/SwitchBootstraps$EnumMap;-><init>(Ljava/lang/runtime/SwitchBootstraps-IA;)V

    filled-new-array {p0, v3, p3, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 339
    invoke-static {v8, v2, v9}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    .line 337
    invoke-static {v6, v7, v8}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 335
    invoke-static {v5, v1, v6}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 340
    .local v1, "body":Ljava/lang/invoke/MethodHandle;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v1, v5, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 341
    .end local v1    # "body":Ljava/lang/invoke/MethodHandle;
    .local v0, "target":Ljava/lang/invoke/MethodHandle;
    goto :goto_ce

    .line 342
    .end local v0    # "target":Ljava/lang/invoke/MethodHandle;
    :cond_ca
    invoke-static {p0, p3}, Ljava/lang/runtime/SwitchBootstraps;->createMethodHandleSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 345
    .restart local v0    # "target":Ljava/lang/invoke/MethodHandle;
    :goto_ce
    invoke-virtual {v0, p2}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 346
    array-length v1, p3

    invoke-static {v0, v1}, Ljava/lang/runtime/SwitchBootstraps;->withIndexCheck(Ljava/lang/invoke/MethodHandle;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/invoke/ConstantCallSite;

    invoke-direct {v1, v0}, Ljava/lang/invoke/ConstantCallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1

    .line 318
    .end local v0    # "target":Ljava/lang/invoke/MethodHandle;
    .end local v3    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constantsOnly":Z
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal invocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist integerEqCheck(Ljava/lang/Object;Ljava/lang/Integer;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "constant"    # Ljava/lang/Integer;

    .line 240
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    .local v0, "input":Ljava/lang/Number;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_13

    .line 241
    return v1

    .line 242
    .end local v0    # "input":Ljava/lang/Number;
    :cond_13
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_25

    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    .local v0, "input":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-ne v2, v3, :cond_25

    .line 243
    return v1

    .line 246
    .end local v0    # "input":Ljava/lang/Character;
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isZero(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 250
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic blacklist lambda$enumSwitch$0(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "enumClass"    # Ljava/lang/Class;
    .param p2, "l"    # Ljava/lang/Object;

    .line 324
    invoke-static {p0, p1, p2}, Ljava/lang/runtime/SwitchBootstraps;->convertEnumConstants(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$enumSwitch$1(Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "l"    # Ljava/lang/Object;

    .line 327
    const-class v0, Ljava/lang/Enum$EnumDesc;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static blacklist mappedEnumLookup(Ljava/lang/Enum;Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/Class;[Ljava/lang/Enum$EnumDesc;Ljava/lang/runtime/SwitchBootstraps$EnumMap;)I
    .registers 14
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p4, "enumMap"    # Ljava/lang/runtime/SwitchBootstraps$EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(TT;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Enum$EnumDesc<",
            "*>;",
            "Ljava/lang/runtime/SwitchBootstraps$EnumMap;",
            ")I"
        }
    .end annotation

    .line 371
    .local p0, "value":Ljava/lang/Enum;, "TT;"
    .local p2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "labels":[Ljava/lang/Enum$EnumDesc;, "[Ljava/lang/Enum$EnumDesc<*>;"
    iget-object v0, p4, Ljava/lang/runtime/SwitchBootstraps$EnumMap;->map:[I

    if-nez v0, :cond_39

    .line 372
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaLangAccess()Ljava/lang/JavaLangAccess;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/JavaLangAccess;->getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    .line 373
    .local v0, "constants":[Ljava/lang/Enum;, "[TT;"
    array-length v1, v0

    new-array v1, v1, [I

    .line 374
    .local v1, "map":[I
    const/4 v2, 0x0

    .line 376
    .local v2, "ordinal":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_39

    aget-object v5, v0, v4

    .line 377
    .local v5, "constant":Ljava/lang/Enum;, "TT;"
    array-length v6, p3

    aput v6, v1, v2

    .line 379
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, p3

    if-ge v6, v7, :cond_33

    .line 380
    aget-object v7, p3, v6

    invoke-virtual {v7}, Ljava/lang/Enum$EnumDesc;->constantName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 381
    aput v6, v1, v2

    .line 382
    goto :goto_33

    .line 379
    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 386
    .end local v6    # "i":I
    :cond_33
    :goto_33
    nop

    .end local v5    # "constant":Ljava/lang/Enum;, "TT;"
    add-int/lit8 v2, v2, 0x1

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 389
    .end local v0    # "constants":[Ljava/lang/Enum;, "[TT;"
    .end local v1    # "map":[I
    .end local v2    # "ordinal":I
    :cond_39
    iget-object v0, p4, Ljava/lang/runtime/SwitchBootstraps$EnumMap;->map:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static varargs whitelist test-api typeSwitch(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;
    .registers 7
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "invocationName"    # Ljava/lang/String;
    .param p2, "invocationType"    # Ljava/lang/invoke/MethodType;
    .param p3, "labels"    # [Ljava/lang/Object;

    .line 148
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 149
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 153
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, [Ljava/lang/Object;

    .line 156
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/runtime/SwitchBootstraps$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    invoke-static {p0, p3}, Ljava/lang/runtime/SwitchBootstraps;->createMethodHandleSwitch(Ljava/lang/invoke/MethodHandles$Lookup;[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 160
    .local v0, "target":Ljava/lang/invoke/MethodHandle;
    new-instance v1, Ljava/lang/invoke/ConstantCallSite;

    invoke-direct {v1, v0}, Ljava/lang/invoke/ConstantCallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1

    .line 152
    .end local v0    # "target":Ljava/lang/invoke/MethodHandle;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal invocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist verifyLabel(Ljava/lang/Object;)V
    .registers 5
    .param p0, "label"    # Ljava/lang/Object;

    .line 164
    if-eqz p0, :cond_35

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "labelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    if-eq v0, v1, :cond_34

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_34

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_34

    const-class v1, Ljava/lang/Enum$EnumDesc;

    if-ne v0, v1, :cond_17

    goto :goto_34

    .line 172
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label with illegal type found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_34
    :goto_34
    return-void

    .line 165
    .end local v0    # "labelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null label found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist withIndexCheck(Ljava/lang/invoke/MethodHandle;I)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "labelsCount"    # I

    .line 419
    sget-object v0, Ljava/lang/runtime/SwitchBootstraps;->CHECK_INDEX:Ljava/lang/invoke/MethodHandle;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 421
    .local v0, "checkIndex":Ljava/lang/invoke/MethodHandle;
    new-array v1, v2, [Ljava/lang/invoke/MethodHandle;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {p0, v2, v1}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method
