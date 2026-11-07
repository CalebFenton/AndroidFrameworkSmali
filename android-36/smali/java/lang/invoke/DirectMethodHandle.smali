.class Ljava/lang/invoke/DirectMethodHandle;
.super Ljava/lang/Object;
.source "DirectMethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/DirectMethodHandle$MethodKey;,
        Ljava/lang/invoke/DirectMethodHandle$Holder;
    }
.end annotation


# static fields
.field private static final blacklist ACCESSOR_IMPLEMENTATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/invoke/DirectMethodHandle$MethodKey;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 97
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/invoke/DirectMethodHandle$Holder;

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 100
    const/16 v0, 0x48

    invoke-static {v0}, Ljava/util/HashMap;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 102
    .local v0, "accessorMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/invoke/DirectMethodHandle$MethodKey;Ljava/lang/reflect/Method;>;"
    const-class v1, Ljava/lang/invoke/DirectMethodHandle$Holder;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 103
    .local v4, "m":Ljava/lang/reflect/Method;
    new-instance v5, Ljava/lang/invoke/DirectMethodHandle$MethodKey;

    .line 104
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/invoke/DirectMethodHandle$MethodKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 103
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v4    # "m":Ljava/lang/reflect/Method;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 107
    :cond_30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/DirectMethodHandle;->ACCESSOR_IMPLEMENTATIONS:Ljava/util/Map;

    .line 108
    .end local v0    # "accessorMethods":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/invoke/DirectMethodHandle$MethodKey;Ljava/lang/reflect/Method;>;"
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkBase(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 69
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static blacklist fieldOffset(Ljava/lang/Object;)J
    .registers 3
    .param p0, "accessorObj"    # Ljava/lang/Object;

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl;

    iget-object v0, v0, Ljava/lang/invoke/MethodHandleImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method static blacklist getImplementation(Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 91
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    sget-object v0, Ljava/lang/invoke/DirectMethodHandle;->ACCESSOR_IMPLEMENTATIONS:Ljava/util/Map;

    new-instance v1, Ljava/lang/invoke/DirectMethodHandle$MethodKey;

    invoke-direct {v1, p0, p1}, Ljava/lang/invoke/DirectMethodHandle$MethodKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static blacklist staticBase(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "accessorObj"    # Ljava/lang/Object;

    .line 78
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl;

    iget-object v0, v0, Ljava/lang/invoke/MethodHandleImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static blacklist staticOffset(Ljava/lang/Object;)J
    .registers 3
    .param p0, "accessorObj"    # Ljava/lang/Object;

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodHandleImpl;

    iget-object v0, v0, Ljava/lang/invoke/MethodHandleImpl;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
