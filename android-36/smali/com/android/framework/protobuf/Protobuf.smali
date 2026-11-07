.class final Lcom/android/framework/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/framework/protobuf/Protobuf;


# instance fields
.field private final blacklist schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/framework/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 139
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    .line 140
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/framework/protobuf/Protobuf;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method blacklist getTotalSchemaSize()I
    .registers 5

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/Schema;

    .line 145
    .local v2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    instance-of v3, v2, Lcom/android/framework/protobuf/MessageSchema;

    if-eqz v3, :cond_23

    .line 146
    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/MessageSchema;->getSchemaSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 148
    .end local v2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    :cond_23
    goto :goto_b

    .line 149
    :cond_24
    return v0
.end method

.method blacklist isInitialized(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 82
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 77
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V
    .registers 4
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 67
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p2, "reader"    # Lcom/android/framework/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 73
    return-void
.end method

.method public blacklist registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 117
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    return-object v0
.end method

.method public blacklist registerSchemaOverride(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 133
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    return-object v0
.end method

.method public blacklist schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    .line 90
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    if-nez v0, :cond_1c

    .line 91
    iget-object v1, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    invoke-interface {v1, p1}, Lcom/android/framework/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 94
    .local v1, "previous":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    if-eqz v1, :cond_1c

    .line 96
    move-object v0, v1

    .line 99
    .end local v1    # "previous":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    :cond_1c
    return-object v0
.end method

.method public blacklist schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .param p2, "writer"    # Lcom/android/framework/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 62
    return-void
.end method
