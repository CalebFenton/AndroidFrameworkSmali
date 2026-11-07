.class public Ljava/lang/runtime/ObjectMethods;
.super Ljava/lang/Object;
.source "ObjectMethods.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist CLASS_IS_INSTANCE:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist DESCRIPTOR_MT:Ljava/lang/invoke/MethodType;

.field private static final blacklist FALSE:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist HASH_COMBINER:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist NAMES_MT:Ljava/lang/invoke/MethodType;

.field private static final blacklist OBJECTS_EQUALS:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECTS_HASHCODE:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECTS_TOSTRING:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECT_EQ:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECT_EQUALS:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECT_HASHCODE:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist OBJECT_TO_STRING:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist STRING_FORMAT:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist TRUE:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist ZERO:Ljava/lang/invoke/MethodHandle;

.field private static final blacklist primitiveEquals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist primitiveHashers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist primitiveToString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 51
    const-string v0, "equals"

    const-class v1, Ljava/lang/runtime/ObjectMethods;

    const-string v2, "eq"

    const-string v3, "toString"

    const-string v4, "hashCode"

    .line 55
    const-class v5, Ljava/lang/invoke/MethodType;

    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->DESCRIPTOR_MT:Ljava/lang/invoke/MethodType;

    .line 56
    const-class v5, Ljava/util/List;

    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->NAMES_MT:Ljava/lang/invoke/MethodType;

    .line 57
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->FALSE:Ljava/lang/invoke/MethodHandle;

    .line 58
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->TRUE:Ljava/lang/invoke/MethodHandle;

    .line 59
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->ZERO:Ljava/lang/invoke/MethodHandle;

    .line 71
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    .line 72
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    .line 77
    move-object v5, v1

    .line 78
    .local v5, "OBJECT_METHODS_CLASS":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/runtime/ObjectMethods;>;"
    :try_start_56
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v8

    .line 79
    .local v8, "publicLookup":Ljava/lang/invoke/MethodHandles$Lookup;
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v9

    .line 88
    .local v9, "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 90
    .local v1, "loader":Ljava/lang/ClassLoader;
    const-class v10, Ljava/lang/Class;

    const-string v11, "isInstance"

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Object;

    .line 91
    invoke-static {v12, v13}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v12

    .line 90
    invoke-virtual {v8, v10, v11, v12}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    sput-object v10, Ljava/lang/runtime/ObjectMethods;->CLASS_IS_INSTANCE:Ljava/lang/invoke/MethodHandle;

    .line 92
    const-class v10, Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    .line 93
    invoke-static {v11, v12}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    .line 92
    invoke-virtual {v8, v10, v0, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    sput-object v10, Ljava/lang/runtime/ObjectMethods;->OBJECT_EQUALS:Ljava/lang/invoke/MethodHandle;

    .line 94
    const-class v10, Ljava/lang/Object;

    const-string v11, "()I"

    .line 95
    invoke-static {v11, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    .line 94
    invoke-virtual {v8, v10, v4, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    sput-object v10, Ljava/lang/runtime/ObjectMethods;->OBJECT_HASHCODE:Ljava/lang/invoke/MethodHandle;

    .line 96
    const-class v10, Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    .line 97
    invoke-static {v11}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    .line 96
    invoke-virtual {v8, v10, v3, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    sput-object v10, Ljava/lang/runtime/ObjectMethods;->OBJECT_TO_STRING:Ljava/lang/invoke/MethodHandle;

    .line 98
    const-class v10, Ljava/lang/String;

    const-string v11, "format"

    const-class v12, Ljava/lang/String;

    const-class v13, Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/Class;

    const-class v15, [Ljava/lang/Object;

    aput-object v15, v14, v6

    .line 99
    invoke-static {v12, v13, v14}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v12

    .line 98
    invoke-virtual {v8, v10, v11, v12}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    sput-object v10, Ljava/lang/runtime/ObjectMethods;->STRING_FORMAT:Ljava/lang/invoke/MethodHandle;

    .line 100
    const-class v10, Ljava/util/Objects;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Object;

    new-array v13, v7, [Ljava/lang/Class;

    const-class v14, Ljava/lang/Object;

    aput-object v14, v13, v6

    .line 101
    invoke-static {v11, v12, v13}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v11

    .line 100
    invoke-virtual {v8, v10, v0, v11}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_EQUALS:Ljava/lang/invoke/MethodHandle;

    .line 102
    const-class v0, Ljava/util/Objects;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    .line 103
    invoke-static {v10, v11}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    .line 102
    invoke-virtual {v8, v0, v4, v10}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_HASHCODE:Ljava/lang/invoke/MethodHandle;

    .line 104
    const-class v0, Ljava/util/Objects;

    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/Object;

    .line 105
    invoke-static {v10, v11}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    .line 104
    invoke-virtual {v8, v0, v3, v10}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_TOSTRING:Ljava/lang/invoke/MethodHandle;

    .line 107
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    new-array v7, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    aput-object v11, v7, v6

    .line 108
    invoke-static {v0, v10, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 107
    invoke-virtual {v9, v5, v2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECT_EQ:Ljava/lang/invoke/MethodHandle;

    .line 109
    const-string v0, "hashCombiner"

    const-string v6, "(II)I"

    .line 110
    invoke-static {v6, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 109
    invoke-virtual {v9, v5, v0, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    sput-object v0, Ljava/lang/runtime/ObjectMethods;->HASH_COMBINER:Ljava/lang/invoke/MethodHandle;

    .line 112
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v7, "(BB)Z"

    .line 113
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 112
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v7, "(SS)Z"

    .line 115
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 114
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v7, "(CC)Z"

    .line 117
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 116
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v7, "(II)Z"

    .line 119
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 118
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v7, "(JJ)Z"

    .line 121
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 120
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v7, "(FF)Z"

    .line 123
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 122
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v7, "(DD)Z"

    .line 125
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 124
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v7, "(ZZ)Z"

    .line 127
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 126
    invoke-virtual {v9, v5, v2, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Byte;

    const-string v7, "(B)I"

    .line 130
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 129
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Short;

    const-string v7, "(S)I"

    .line 132
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 131
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Character;

    const-string v7, "(C)I"

    .line 134
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 133
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const-string v7, "(I)I"

    .line 136
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 135
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-string v7, "(J)I"

    .line 138
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 137
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    const-string v7, "(F)I"

    .line 140
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 139
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    const-string v7, "(D)I"

    .line 142
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 141
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    const-string v7, "(Z)I"

    .line 144
    invoke-static {v7, v1}, Ljava/lang/invoke/MethodType;->fromMethodDescriptorString(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 143
    invoke-virtual {v9, v6, v4, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 147
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 146
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 149
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 148
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Character;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 151
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 150
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 153
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 152
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 155
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 154
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 157
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 156
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 159
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 158
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 161
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 160
    invoke-virtual {v9, v4, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d8
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_56 .. :try_end_2d8} :catch_2da

    .line 165
    nop

    .line 166
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "OBJECT_METHODS_CLASS":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/runtime/ObjectMethods;>;"
    .end local v8    # "publicLookup":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local v9    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    return-void

    .line 163
    :catch_2da
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist test-api bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;
    .registers 13
    .param p0, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/TypeDescriptor;
    .param p4, "names"    # Ljava/lang/String;
    .param p5, "getters"    # [Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/TypeDescriptor;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 340
    .local p3, "recordClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    instance-of v0, p2, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_1a

    .line 348
    move-object v0, p2

    check-cast v0, Ljava/lang/invoke/MethodType;

    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_23

    .line 350
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :cond_1a
    const/4 v0, 0x0

    .line 351
    .restart local v0    # "methodType":Ljava/lang/invoke/MethodType;
    const-class v1, Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 354
    :goto_23
    invoke-static {p5}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 355
    .local v1, "getterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_120

    :cond_30
    goto :goto_4f

    :sswitch_31
    const-string v2, "hashCode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_50

    :sswitch_3b
    const-string v2, "equals"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v4

    goto :goto_50

    :sswitch_45
    const-string v2, "toString"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x2

    goto :goto_50

    :goto_4f
    const/4 v2, -0x1

    :goto_50
    const-string v5, "Bad method type: "

    packed-switch v2, :pswitch_data_12e

    .line 374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :pswitch_5b
    if-eqz v0, :cond_81

    const-class v2, Ljava/lang/String;

    invoke-static {v2, p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_81

    .line 368
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_81
    :goto_81
    const-string v2, ""

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v2

    goto :goto_98

    :cond_8e
    const-string v2, ";"

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_98
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_a7

    .line 372
    invoke-static {p3, v1, v2}, Ljava/lang/runtime/ObjectMethods;->makeToString(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    goto :goto_10a

    .line 371
    :cond_a7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Name list and accessor list do not match"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_af
    if-eqz v0, :cond_d5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    goto :goto_d5

    .line 363
    :cond_be
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_d5
    :goto_d5
    invoke-static {p3, v1}, Ljava/lang/runtime/ObjectMethods;->makeHashCode(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    goto :goto_10a

    .line 357
    :pswitch_da
    if-eqz v0, :cond_106

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v4

    invoke-static {v2, p3, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    goto :goto_106

    .line 358
    :cond_ef
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_106
    :goto_106
    invoke-static {p3, v1}, Ljava/lang/runtime/ObjectMethods;->makeEquals(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 374
    :goto_10a
    nop

    .line 376
    .local v3, "handle":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_113

    new-instance v2, Ljava/lang/invoke/ConstantCallSite;

    invoke-direct {v2, v3}, Ljava/lang/invoke/ConstantCallSite;-><init>(Ljava/lang/invoke/MethodHandle;)V

    goto :goto_114

    :cond_113
    move-object v2, v3

    :goto_114
    return-object v2

    .line 352
    .end local v1    # "getterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .end local v3    # "handle":Ljava/lang/invoke/MethodHandle;
    :cond_115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_120
    .sparse-switch
        -0x69e9ad94 -> :sswitch_45
        -0x4d378041 -> :sswitch_3b
        0x8cdac1b -> :sswitch_31
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_da
        :pswitch_af
        :pswitch_5b
    .end packed-switch
.end method

.method private static blacklist eq(BB)Z
    .registers 3
    .param p0, "a"    # B
    .param p1, "b"    # B

    .line 173
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist eq(CC)Z
    .registers 3
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 175
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist eq(DD)Z
    .registers 5
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 179
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist eq(FF)Z
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 178
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist eq(II)Z
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 176
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist eq(JJ)Z
    .registers 5
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 177
    cmp-long v0, p0, p2

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 172
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist eq(SS)Z
    .registers 3
    .param p0, "a"    # S
    .param p1, "b"    # S

    .line 174
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist eq(ZZ)Z
    .registers 3
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .line 180
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist equalator(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 184
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 185
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveEquals:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    goto :goto_21

    .line 186
    :cond_f
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_EQUALS:Ljava/lang/invoke/MethodHandle;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, p0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 184
    :goto_21
    return-object v0
.end method

.method private static blacklist hashCombiner(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 169
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    return v0
.end method

.method private static blacklist hasher(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 191
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 192
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveHashers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    goto :goto_1b

    .line 193
    :cond_f
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_HASHCODE:Ljava/lang/invoke/MethodHandle;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 191
    :goto_1b
    return-object v0
.end method

.method private static blacklist makeEquals(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 211
    .local p0, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "getters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    move-object/from16 v0, p0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v0, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 212
    .local v1, "rr":Ljava/lang/invoke/MethodType;
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-static {v3, v0, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 213
    .local v3, "ro":Ljava/lang/invoke/MethodType;
    sget-object v5, Ljava/lang/runtime/ObjectMethods;->FALSE:Ljava/lang/invoke/MethodHandle;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v4

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v2

    invoke-static {v5, v4, v7}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 214
    .local v5, "instanceFalse":Ljava/lang/invoke/MethodHandle;
    sget-object v7, Ljava/lang/runtime/ObjectMethods;->TRUE:Ljava/lang/invoke/MethodHandle;

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v0, v8, v4

    const-class v9, Ljava/lang/Object;

    aput-object v9, v8, v2

    invoke-static {v7, v4, v8}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    .line 215
    .local v7, "instanceTrue":Ljava/lang/invoke/MethodHandle;
    sget-object v8, Ljava/lang/runtime/ObjectMethods;->OBJECT_EQ:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v8, v3}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    .line 216
    .local v8, "isSameObject":Ljava/lang/invoke/MethodHandle;
    sget-object v9, Ljava/lang/runtime/ObjectMethods;->CLASS_IS_INSTANCE:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v9, v0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v0, v10, v4

    invoke-static {v9, v4, v10}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v9

    .line 217
    .local v9, "isInstance":Ljava/lang/invoke/MethodHandle;
    sget-object v10, Ljava/lang/runtime/ObjectMethods;->TRUE:Ljava/lang/invoke/MethodHandle;

    new-array v11, v6, [Ljava/lang/Class;

    aput-object v0, v11, v4

    aput-object v0, v11, v2

    invoke-static {v10, v4, v11}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    .line 219
    .local v10, "accumulator":Ljava/lang/invoke/MethodHandle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_86

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/invoke/MethodHandle;

    .line 220
    .local v12, "getter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v12}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/runtime/ObjectMethods;->equalator(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v13

    .line 221
    .local v13, "equalator":Ljava/lang/invoke/MethodHandle;
    new-array v14, v6, [Ljava/lang/invoke/MethodHandle;

    aput-object v12, v14, v4

    aput-object v12, v14, v2

    invoke-static {v13, v4, v14}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v14

    .line 222
    .local v14, "thisFieldEqual":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v5, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v15

    invoke-static {v14, v10, v15}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v10

    .line 223
    .end local v12    # "getter":Ljava/lang/invoke/MethodHandle;
    .end local v13    # "equalator":Ljava/lang/invoke/MethodHandle;
    .end local v14    # "thisFieldEqual":Ljava/lang/invoke/MethodHandle;
    goto :goto_5b

    .line 225
    :cond_86
    nop

    .line 227
    invoke-virtual {v10, v3}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {v9, v2, v5}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 225
    invoke-static {v8, v7, v2}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist makeHashCode(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 238
    .local p0, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "getters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->ZERO:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v3, v2}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 241
    .local v0, "accumulator":Ljava/lang/invoke/MethodHandle;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/invoke/MethodHandle;

    .line 242
    .local v4, "getter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/runtime/ObjectMethods;->hasher(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 243
    .local v5, "hasher":Ljava/lang/invoke/MethodHandle;
    new-array v6, v1, [Ljava/lang/invoke/MethodHandle;

    aput-object v4, v6, v3

    invoke-static {v5, v3, v6}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    .line 244
    .local v6, "hashThisField":Ljava/lang/invoke/MethodHandle;
    sget-object v7, Ljava/lang/runtime/ObjectMethods;->HASH_COMBINER:Ljava/lang/invoke/MethodHandle;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/invoke/MethodHandle;

    aput-object v0, v8, v3

    aput-object v6, v8, v1

    invoke-static {v7, v3, v8}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    .line 245
    .local v7, "combineHashes":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v8

    filled-new-array {v3, v3}, [I

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 246
    .end local v4    # "getter":Ljava/lang/invoke/MethodHandle;
    .end local v5    # "hasher":Ljava/lang/invoke/MethodHandle;
    .end local v6    # "hashThisField":Ljava/lang/invoke/MethodHandle;
    .end local v7    # "combineHashes":Ljava/lang/invoke/MethodHandle;
    goto :goto_10

    .line 248
    :cond_4a
    return-object v0
.end method

.method private static blacklist makeToString(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Ljava/lang/invoke/MethodHandle;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/invoke/MethodHandle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 266
    .local p0, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "getters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/invoke/MethodHandle;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 269
    .local v0, "invArgs":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/invoke/MethodHandle;

    .line 271
    .local v2, "filters":[Ljava/lang/invoke/MethodHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_65

    .line 274
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/invoke/MethodHandle;

    .line 275
    .local v5, "getter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/runtime/ObjectMethods;->stringifier(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    .line 276
    .local v7, "stringify":Ljava/lang/invoke/MethodHandle;
    new-array v8, v6, [Ljava/lang/invoke/MethodHandle;

    aput-object v5, v8, v1

    invoke-static {v7, v1, v8}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    .line 277
    .local v8, "stringifyThisField":Ljava/lang/invoke/MethodHandle;
    aput-object v8, v2, v4

    .line 278
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=%s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-eq v4, v9, :cond_62

    .line 280
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v5    # "getter":Ljava/lang/invoke/MethodHandle;
    .end local v7    # "stringify":Ljava/lang/invoke/MethodHandle;
    .end local v8    # "stringifyThisField":Ljava/lang/invoke/MethodHandle;
    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 282
    .end local v4    # "i":I
    :cond_65
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "formatString":Ljava/lang/String;
    sget-object v5, Ljava/lang/runtime/ObjectMethods;->STRING_FORMAT:Ljava/lang/invoke/MethodHandle;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v1, v7}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-class v7, [Ljava/lang/String;

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/invoke/MethodHandle;->asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 286
    .local v5, "formatter":Ljava/lang/invoke/MethodHandle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_91

    .line 288
    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v1

    invoke-static {v5, v1, v6}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .end local v5    # "formatter":Ljava/lang/invoke/MethodHandle;
    .local v1, "formatter":Ljava/lang/invoke/MethodHandle;
    goto :goto_a0

    .line 291
    .end local v1    # "formatter":Ljava/lang/invoke/MethodHandle;
    .restart local v5    # "formatter":Ljava/lang/invoke/MethodHandle;
    :cond_91
    invoke-static {v5, v1, v2}, Ljava/lang/invoke/MethodHandles;->filterArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 292
    .local v1, "filtered":Ljava/lang/invoke/MethodHandle;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-static {v1, v6, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    move-object v1, v5

    .line 295
    .end local v5    # "formatter":Ljava/lang/invoke/MethodHandle;
    .local v1, "formatter":Ljava/lang/invoke/MethodHandle;
    :goto_a0
    return-object v1
.end method

.method private static blacklist stringifier(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 198
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->primitiveToString:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    goto :goto_1b

    .line 200
    :cond_f
    sget-object v0, Ljava/lang/runtime/ObjectMethods;->OBJECTS_TOSTRING:Ljava/lang/invoke/MethodHandle;

    const-class v1, Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 198
    :goto_1b
    return-object v0
.end method
