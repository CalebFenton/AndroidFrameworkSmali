.class Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeMessageInfoFactory"
.end annotation


# instance fields
.field private blacklist factories:[Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;


# direct methods
.method varargs constructor blacklist <init>([Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;)V
    .registers 2
    .param p1, "factories"    # [Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist isSupported(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 132
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 133
    .local v4, "factory":Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    invoke-interface {v4, p1}, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 134
    const/4 v0, 0x1

    return v0

    .line 132
    .end local v4    # "factory":Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 137
    :cond_14
    return v2
.end method

.method public blacklist messageInfoFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/net/connectivity/com/google/protobuf/MessageInfo;"
        }
    .end annotation

    .line 142
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 143
    .local v3, "factory":Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    invoke-interface {v3, p1}, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 144
    invoke-interface {v3, p1}, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/MessageInfo;

    move-result-object v0

    return-object v0

    .line 142
    .end local v3    # "factory":Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 147
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No factory is available for message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
