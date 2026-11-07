.class public abstract Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.super Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected blacklist instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 442
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "defaultInstance":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 443
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 444
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_12

    .line 449
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

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
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    return-void
.end method

.method private blacklist newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 453
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blacklist build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 506
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 507
    .local v0, "result":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 510
    return-object v0

    .line 508
    :cond_b
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 496
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 497
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    return-object v0

    .line 500
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 501
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clear()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 480
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 483
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 484
    return-object p0

    .line 481
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist clear()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->clear()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->clone()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 489
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->newBuilderForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 490
    .local v0, "builder":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 491
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->clone()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

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
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->clone()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist copyOnWrite()V
    .registers 2

    .line 461
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 462
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    .line 464
    :cond_b
    return-void
.end method

.method protected blacklist copyOnWriteInternal()V
    .registers 3

    .line 467
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 468
    .local v0, "newInstance":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 470
    return-void
.end method

.method public blacklist getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 534
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
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
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    check-cast p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 515
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist isInitialized()Z
    .registers 3

    .line 474
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->isInitialized(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
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
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
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
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
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
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 6
    .param p1, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 572
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    .line 573
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStreamReader;->forCodedInput(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/CodedInputStreamReader;

    move-result-object v2

    .line 572
    invoke-interface {v0, v1, v2, p2}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
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

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 520
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    .local p1, "message":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 521
    return-object p0

    .line 523
    :cond_b
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 525
    return-object p0
.end method

.method public blacklist mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
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
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 560
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
    .registers 13
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 541
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 543
    :try_start_3
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->getInstance()Landroid/net/connectivity/com/google/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    add-int v6, p2, p3

    new-instance v7, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;

    invoke-direct {v7, p4}, Landroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;-><init>(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)V
    :try_end_16
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_16} :catch_3b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_16} :catch_32
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_26

    move-object v4, p1

    move v5, p2

    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .local v4, "input":[B
    .local v5, "offset":I
    :try_start_18
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/com/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILandroid/net/connectivity/com/google/protobuf/ArrayDecoders$Registers;)V
    :try_end_1b
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_18 .. :try_end_1b} :catch_23
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
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

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
    .local p1, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    :goto_3f
    throw p1
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
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
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
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
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
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
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
