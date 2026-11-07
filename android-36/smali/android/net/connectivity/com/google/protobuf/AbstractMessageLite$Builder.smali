.class public abstract Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 163
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 398
    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 408
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    instance-of v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    if-eqz v0, :cond_6a

    .line 415
    move-object v0, p0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, "lazyValues":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    .line 417
    .local v1, "lazyList":Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 418
    .local v2, "begin":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 419
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_57

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element at index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is null."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "message":Ljava/lang/String;
    invoke-interface {v1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_49
    if-lt v5, v2, :cond_51

    .line 423
    invoke-interface {v1, v5}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->remove(I)Ljava/lang/Object;

    .line 422
    add-int/lit8 v5, v5, -0x1

    goto :goto_49

    .line 425
    .end local v5    # "i":I
    :cond_51
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    .end local v3    # "message":Ljava/lang/String;
    :cond_57
    instance-of v5, v4, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v5, :cond_62

    .line 428
    move-object v5, v4

    check-cast v5, Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-interface {v1, v5}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->add(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    goto :goto_68

    .line 430
    :cond_62
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v4    # "value":Ljava/lang/Object;
    :goto_68
    goto :goto_19

    .line 433
    .end local v0    # "lazyValues":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "lazyList":Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    .end local v2    # "begin":I
    :cond_69
    goto :goto_78

    .line 434
    :cond_6a
    instance-of v0, p0, Landroid/net/connectivity/com/google/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v0, :cond_75

    .line 435
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_78

    .line 437
    :cond_75
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 440
    :goto_78
    return-void
.end method

.method private static blacklist addAllCheckingNulls(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 371
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1a

    .line 372
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 374
    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 375
    .local v0, "begin":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, "value":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_60

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "message":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_52
    if-lt v3, v0, :cond_5a

    .line 380
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 379
    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 382
    .end local v3    # "i":I
    :cond_5a
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    .end local v1    # "message":Ljava/lang/String;
    :cond_60
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_22

    .line 386
    :cond_64
    return-void
.end method

.method private blacklist getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 362
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    return-object v0
.end method

.method protected static blacklist newUninitializedMessageException(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;
    .registers 2
    .param p0, "message"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 391
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;-><init>(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist clone()Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist clone()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->clone()Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

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

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->clone()Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public blacklist mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Z
    .registers 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 334
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 335
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_9
    invoke-static {v0, p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    .line 338
    .local v1, "size":I
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v2, p1, v1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 339
    .local v2, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v2, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 340
    const/4 v3, 0x1

    return v3
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 186
    .local v0, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 188
    return-object p0

    .line 191
    .end local v0    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 190
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 6
    .param p1, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->newCodedInput()Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 202
    .local v0, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 204
    return-object p0

    .line 207
    .end local v0    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 206
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 3
    .param p1, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
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
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 351
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->getDefaultInstanceForType()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 356
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0

    .line 352
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist mergeFrom(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 260
    .local v0, "codedInput":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 262
    return-object p0
.end method

.method public blacklist mergeFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 269
    .local v0, "codedInput":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 271
    return-object p0
.end method

.method public blacklist mergeFrom([B)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
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

    .line 221
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance([BII)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 222
    .local v0, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 224
    return-object p0

    .line 227
    .end local v0    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 226
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
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

    .line 246
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->newInstance([BII)Landroid/net/connectivity/com/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 247
    .local v0, "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_b
    .catch Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_b} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 249
    return-object p0

    .line 252
    .end local v0    # "input":Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    :catch_c
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 251
    .local v0, "e":Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist mergeFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
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

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
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

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([B)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
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

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
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

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
