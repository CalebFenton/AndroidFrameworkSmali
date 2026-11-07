.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.super Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected blacklist instance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 442
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 444
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 449
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 450
    return-void

    .line 445
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 529
    .local p0, "dest":Ljava/lang/Object;, "TMessageType;"
    .local p1, "src":Ljava/lang/Object;, "TMessageType;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method private blacklist newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blacklist build()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 507
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 510
    return-object v0

    .line 508
    :cond_b
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist build()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 497
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0

    .line 500
    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 501
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 480
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 483
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 484
    return-object p0

    .line 481
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist clear()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 490
    .local v0, "builder":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 491
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist copyOnWrite()V
    .registers 2

    .line 461
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 462
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    .line 464
    :cond_b
    return-void
.end method

.method protected blacklist copyOnWriteInternal()V
    .registers 3

    .line 467
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 468
    .local v0, "newInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 470
    return-void
.end method

.method public blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist internalMergeFrom(Lcom/android/framework/protobuf/AbstractMessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist isInitialized()Z
    .registers 3

    .line 474
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 6
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 572
    :try_start_3
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 573
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object v2

    .line 572
    invoke-interface {v0, v1, v2, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_16} :catch_18

    .line 579
    nop

    .line 580
    return-object p0

    .line 574
    :catch_18
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_28

    .line 576
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 578
    :cond_28
    throw v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 521
    return-object p0

    .line 523
    :cond_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    return-object p0
.end method

.method public blacklist mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 13
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 543
    :try_start_3
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    add-int v6, p2, p3

    new-instance v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v7, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_16
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_16} :catch_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_16} :catch_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_26

    move-object v4, p1

    move v5, p2

    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .local v4, "input":[B
    .local v5, "offset":I
    :try_start_18
    invoke-interface/range {v2 .. v7}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    :try_end_1b
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_18 .. :try_end_1b} :catch_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_1b} :catch_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 552
    nop

    .line 553
    return-object p0

    .line 550
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_2a

    .line 548
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_36

    .line 546
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_3f

    .line 550
    .end local v4    # "input":[B
    .end local v5    # "offset":I
    .restart local p1    # "input":[B
    .restart local p2    # "offset":I
    :catch_26
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object p1, v0

    .line 551
    .end local p2    # "offset":I
    .restart local v4    # "input":[B
    .restart local v5    # "offset":I
    .local p1, "e":Ljava/io/IOException;
    :goto_2a
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Reading from byte array should not throw IOException."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 548
    .end local v4    # "input":[B
    .end local v5    # "offset":I
    .local p1, "input":[B
    .restart local p2    # "offset":I
    :catch_32
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object p1, v0

    .line 549
    .end local p2    # "offset":I
    .restart local v4    # "input":[B
    .restart local v5    # "offset":I
    .local p1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_36
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2

    .line 546
    .end local v4    # "input":[B
    .end local v5    # "offset":I
    .local p1, "input":[B
    .restart local p2    # "offset":I
    :catch_3b
    move-exception v0

    move-object v4, p1

    move v5, p2

    move-object p1, v0

    .line 547
    .end local p2    # "offset":I
    .restart local v4    # "input":[B
    .restart local v5    # "offset":I
    .local p1, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :goto_3f
    throw p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
