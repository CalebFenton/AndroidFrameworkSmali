.class final Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;
.super Ljava/lang/Object;
.source "MapFieldSchemas.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist FULL_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

.field private static final blacklist LITE_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->loadSchemaForFullRuntime()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    .line 36
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemaLite;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemaLite;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist full()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .registers 1

    .line 39
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->FULL_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    return-object v0
.end method

.method static blacklist lite()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .registers 1

    .line 43
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->LITE_SCHEMA:Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    return-object v0
.end method

.method private static blacklist loadSchemaForFullRuntime()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    .registers 3

    .line 48
    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 50
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_16
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
