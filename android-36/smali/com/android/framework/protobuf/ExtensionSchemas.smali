.class final Lcom/android/framework/protobuf/ExtensionSchemas;
.super Ljava/lang/Object;
.source "ExtensionSchemas.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/framework/protobuf/ExtensionSchemaLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionSchemaLite;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    .line 36
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->loadSchemaForFullRuntime()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist full()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    if-eqz v0, :cond_7

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->FULL_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    return-object v0

    .line 53
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist lite()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/android/framework/protobuf/ExtensionSchemas;->LITE_SCHEMA:Lcom/android/framework/protobuf/ExtensionSchema;

    return-object v0
.end method

.method private static blacklist loadSchemaForFullRuntime()Lcom/android/framework/protobuf/ExtensionSchema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation

    .line 40
    :try_start_0
    const-string v0, "com.android.framework.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/ExtensionSchema;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v1

    .line 42
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_16
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
