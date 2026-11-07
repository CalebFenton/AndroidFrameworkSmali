.class public Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final blacklist EMPTY_REGISTRY:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private blacklist delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

.field private blacklist extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

.field private volatile blacklist memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

.field protected volatile blacklist value:Landroid/net/connectivity/com/google/protobuf/MessageLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->checkArguments(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 120
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 121
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 122
    return-void
.end method

.method private static blacklist checkArguments(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p0, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 434
    if-eqz p0, :cond_d

    .line 437
    if-eqz p1, :cond_5

    .line 440
    return-void

    .line 438
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fromValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;
    .registers 2
    .param p0, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 132
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;-><init>()V

    .line 133
    .local v0, "lf":Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 134
    return-object v0
.end method

.method private static blacklist mergeValueAndBytes(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 4
    .param p0, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p1, "otherBytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 333
    :try_start_0
    invoke-interface {p0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0
    :try_end_c
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 334
    :catch_d
    move-exception v0

    .line 337
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 193
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 194
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 195
    return-void
.end method

.method public blacklist containsDefaultInstance()Z
    .registers 3

    .line 178
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method protected blacklist ensureInitialized(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V
    .registers 5
    .param p1, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 406
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_5

    .line 407
    return-void

    .line 409
    :cond_5
    monitor-enter p0

    .line 410
    :try_start_6
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_c

    .line 411
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_36

    return-void

    .line 414
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_26

    .line 416
    nop

    .line 417
    invoke-interface {p1}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/Parser;->parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 418
    .local v0, "parsedValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 419
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 420
    .end local v0    # "parsedValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    goto :goto_2c

    .line 421
    :cond_26
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 422
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;
    :try_end_2c
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_36

    .line 429
    :goto_2c
    goto :goto_34

    .line 424
    :catch_2d
    move-exception v0

    .line 427
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 428
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 430
    .end local v0    # "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    :goto_34
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    if-ne p0, p1, :cond_4

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_4
    instance-of v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;

    .line 153
    .local v0, "other":Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 154
    .local v1, "value1":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    iget-object v2, v0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 155
    .local v2, "value2":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    if-nez v1, :cond_22

    if-nez v2, :cond_22

    .line 156
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/connectivity/com/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 157
    :cond_22
    if-eqz v1, :cond_2b

    if-eqz v2, :cond_2b

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 159
    :cond_2b
    if-eqz v1, :cond_3a

    .line 160
    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->getValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 162
    :cond_3a
    invoke-interface {v2}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->getValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 358
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 359
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_16

    .line 360
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 361
    :cond_16
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_21

    .line 362
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 364
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 3
    .param p1, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 223
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->ensureInitialized(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V

    .line 224
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist merge(Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;)V
    .registers 5
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;

    .line 250
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    return-void

    .line 254
    :cond_7
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->set(Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;)V

    .line 256
    return-void

    .line 261
    :cond_11
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_19

    .line 262
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 270
    :cond_19
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_2c

    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_2c

    .line 271
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iget-object v1, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->concat(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 272
    return-void

    .line 278
    :cond_2c
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-nez v0, :cond_42

    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_42

    .line 279
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->mergeValueAndBytes(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 280
    return-void

    .line 281
    :cond_42
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_58

    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-nez v0, :cond_58

    .line 282
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    iget-object v1, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iget-object v2, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->mergeValueAndBytes(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 283
    return-void

    .line 287
    :cond_58
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 288
    return-void
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p1, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 299
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setByteString(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 300
    return-void

    .line 305
    :cond_e
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_14

    .line 306
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 314
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_28

    .line 315
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->concat(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setByteString(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V

    .line 316
    return-void

    .line 323
    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    :try_end_39
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 327
    goto :goto_3b

    .line 324
    :catch_3a
    move-exception v0

    .line 328
    :goto_3b
    return-void
.end method

.method public blacklist set(Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;)V
    .registers 3
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;

    .line 204
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 205
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 206
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 211
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_14

    .line 212
    iget-object v0, p1, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 214
    :cond_14
    return-void
.end method

.method public blacklist setByteString(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    .registers 4
    .param p1, "bytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 343
    invoke-static {p2, p1}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->checkArguments(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 344
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 345
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->extensionRegistry:Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 347
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 348
    return-void
.end method

.method public blacklist setValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 4
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 234
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 235
    .local v0, "originalValue":Landroid/net/connectivity/com/google/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 236
    iput-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 237
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 238
    return-object v0
.end method

.method public blacklist toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0

    .line 375
    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_e

    .line 376
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0

    .line 378
    :cond_e
    monitor-enter p0

    .line 379
    :try_start_f
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_17

    .line 380
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 382
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-nez v0, :cond_20

    .line 383
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    goto :goto_28

    .line 385
    :cond_20
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageLite;->toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 387
    :goto_28
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 388
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method blacklist writeTo(Landroid/net/connectivity/com/google/protobuf/Writer;I)V
    .registers 4
    .param p1, "writer"    # Landroid/net/connectivity/com/google/protobuf/Writer;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->memoizedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto :goto_23

    .line 395
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 396
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->delayedBytes:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto :goto_23

    .line 397
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    if-eqz v0, :cond_1e

    .line 398
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_23

    .line 400
    :cond_1e
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroid/net/connectivity/com/google/protobuf/Writer;->writeBytes(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 402
    :goto_23
    return-void
.end method
