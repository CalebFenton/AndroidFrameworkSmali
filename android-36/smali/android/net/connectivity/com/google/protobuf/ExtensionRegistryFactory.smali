.class final Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final blacklist EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist FULL_REGISTRY_CLASS_NAME:Ljava/lang/String; = "com.google.protobuf.ExtensionRegistry"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 61
    const-string v0, "newInstance"

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 63
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    invoke-direct {v1}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static blacklist createEmpty()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 68
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 70
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    :goto_c
    return-object v1
.end method

.method private static final blacklist invokeSubclassFactory(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 80
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 81
    return-object v1

    .line 85
    :cond_6
    :try_start_6
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 86
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    .line 85
    return-object v0

    .line 87
    :catch_18
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method static blacklist isFullRegistry(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Z
    .registers 3
    .param p0, "registry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 75
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 75
    :goto_13
    return v0
.end method

.method static blacklist reflectExtensionRegistry()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 51
    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 52
    :catch_7
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method
