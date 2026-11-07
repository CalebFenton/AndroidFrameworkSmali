.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite;
.super Lcom/android/framework/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final blacklist MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final blacklist MUTABLE_FLAG_MASK:I = -0x80000000

.field static final blacklist UNINITIALIZED_HASH_CODE:I = 0x0

.field static final blacklist UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static blacklist defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist memoizedSerializedSize:I

.field protected blacklist unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 379
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 84
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 6
    .param p0, "x0"    # Lcom/android/framework/protobuf/GeneratedMessageLite;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1512
    .local p0, "extension":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1516
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1513
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1712
    .local p0, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 1713
    :cond_9
    nop

    .line 1714
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1715
    invoke-virtual {v0}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1716
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1718
    :cond_17
    :goto_17
    return-object p0
.end method

.method private blacklist computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)I"
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "nullableSchema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<*>;"
    if-nez p1, :cond_f

    .line 367
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 369
    :cond_f
    nop

    .line 370
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 369
    return v0
.end method

.method protected static blacklist emptyBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 1

    .line 1585
    invoke-static {}, Lcom/android/framework/protobuf/BooleanArrayList;->emptyList()Lcom/android/framework/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 1

    .line 1575
    invoke-static {}, Lcom/android/framework/protobuf/DoubleArrayList;->emptyList()Lcom/android/framework/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 1

    .line 1565
    invoke-static {}, Lcom/android/framework/protobuf/FloatArrayList;->emptyList()Lcom/android/framework/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .registers 1

    .line 1545
    invoke-static {}, Lcom/android/framework/protobuf/IntArrayList;->emptyList()Lcom/android/framework/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .registers 1

    .line 1555
    invoke-static {}, Lcom/android/framework/protobuf/LongArrayList;->emptyList()Lcom/android/framework/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1595
    invoke-static {}, Lcom/android/framework/protobuf/ProtobufArrayList;->emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final blacklist ensureUnknownFieldsInitialized()V
    .registers 3

    .line 192
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 193
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 195
    :cond_e
    return-void
.end method

.method static blacklist getDefaultInstance(Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 384
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 385
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    if-nez v0, :cond_2a

    .line 389
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_21

    .line 392
    nop

    .line 393
    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    goto :goto_2a

    .line 390
    :catch_21
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Class initialization cannot fail."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 395
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2a
    :goto_2a
    if-nez v0, :cond_44

    .line 398
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_3e

    .line 403
    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 401
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 405
    :cond_44
    :goto_44
    return-object v0
.end method

.method static varargs blacklist getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 1261
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1262
    :catch_5
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1264
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs blacklist invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 1272
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1276
    :catch_5
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1278
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1e

    .line 1280
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_16

    .line 1281
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1283
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1279
    :cond_1e
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1273
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_22
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final blacklist isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z
    .registers 6
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1526
    .local p0, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1527
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1528
    .local v0, "memoizedIsInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1529
    return v1

    .line 1531
    :cond_10
    if-nez v0, :cond_14

    .line 1532
    const/4 v1, 0x0

    return v1

    .line 1534
    :cond_14
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    .line 1535
    .local v1, "isInitialized":Z
    if-eqz p1, :cond_2c

    .line 1537
    sget-object v2, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1539
    if-eqz v1, :cond_28

    move-object v3, p0

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    .line 1538
    :goto_29
    invoke-virtual {p0, v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    :cond_2c
    return v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 3
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$BooleanList;

    .line 1589
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1590
    .local v0, "size":I
    nop

    .line 1591
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1590
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 3
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$DoubleList;

    .line 1579
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1580
    .local v0, "size":I
    nop

    .line 1581
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1580
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 3
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$FloatList;

    .line 1569
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1570
    .local v0, "size":I
    nop

    .line 1571
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1570
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
    .registers 3
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$IntList;

    .line 1549
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1550
    .local v0, "size":I
    nop

    .line 1551
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1550
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
    .registers 3
    .param p0, "list"    # Lcom/android/framework/protobuf/Internal$LongList;

    .line 1559
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1560
    .local v0, "size":I
    nop

    .line 1561
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1560
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1599
    .local p0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1600
    .local v0, "size":I
    nop

    .line 1601
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 1600
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method protected static blacklist newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 421
    new-instance v0, Lcom/android/framework/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/RawMessageInfo;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist newRepeatedGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 13
    .param p1, "messageDefaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1182
    .local p0, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    move-object v1, p2

    .end local p2    # "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    .local v1, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 1183
    .local p2, "emptyList":Ljava/lang/Object;, "TType;"
    move v2, p3

    move-object p3, p1

    move-object p1, p0

    .end local p0    # "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local v2, "number":I
    .local p1, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p3, "messageDefaultInstance":Lcom/android/framework/protobuf/MessageLite;
    new-instance p0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v3, p4

    move v5, p5

    .end local p4    # "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    .end local p5    # "isPacked":Z
    .local v3, "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    .local v5, "isPacked":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object p5, p6

    move-object p4, v0

    .end local p6    # "singularType":Ljava/lang/Class;
    .local p5, "singularType":Ljava/lang/Class;
    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object p0
.end method

.method public static blacklist newSingularGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 13
    .param p2, "messageDefaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1162
    .local p0, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p0    # "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local v1, "enumTypeMap":Lcom/android/framework/protobuf/Internal$EnumLiteMap;, "Lcom/android/framework/protobuf/Internal$EnumLiteMap<*>;"
    .local p1, "containingTypeDefaultInstance":Lcom/android/framework/protobuf/MessageLite;, "TContainingType;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "messageDefaultInstance":Lcom/android/framework/protobuf/MessageLite;
    new-instance p0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p4

    move-object v3, p5

    .end local p4    # "number":I
    .end local p5    # "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    .local v2, "number":I
    .local v3, "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object p5, p6

    move-object p4, v0

    .end local p6    # "singularType":Ljava/lang/Class;
    .local p5, "singularType":Ljava/lang/Class;
    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object p0
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1813
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1815
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1814
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1813
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1822
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1823
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1738
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1739
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1738
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1746
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1800
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1807
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1782
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1785
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 1786
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1783
    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1782
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1793
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1794
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1793
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1732
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1725
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1726
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1725
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1767
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1768
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1767
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1775
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1776
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1832
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1833
    const/4 v1, 0x0

    return-object v1

    .line 1835
    :cond_9
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_d
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_27

    .line 1843
    .end local v0    # "firstByte":I
    .local v1, "size":I
    nop

    .line 1844
    new-instance v0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v0, p1, v1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1845
    .local v0, "limitedInput":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v2

    .line 1846
    .local v2, "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1848
    .local v3, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1c
    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1f
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 1851
    nop

    .line 1852
    return-object v3

    .line 1849
    :catch_21
    move-exception v4

    .line 1850
    .local v4, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1841
    .end local v0    # "limitedInput":Ljava/io/InputStream;
    .end local v1    # "size":I
    .end local v2    # "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :catch_27
    move-exception v0

    .line 1842
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1836
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 1837
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1838
    new-instance v1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    .line 1840
    :cond_3b
    throw v0
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 7
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1754
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 1755
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 1757
    .local v1, "message":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_c} :catch_e

    .line 1760
    nop

    .line 1761
    return-object v1

    .line 1758
    :catch_e
    move-exception v2

    .line 1759
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method protected static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1701
    .local p0, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 6
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1642
    .local p0, "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1646
    .local v0, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_4
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 1647
    .local v1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 1648
    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_16} :catch_4d
    .catch Lcom/android/framework/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_16} :catch_43
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_16} :catch_18

    .line 1666
    .end local v1    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    nop

    .line 1667
    return-object v0

    .line 1661
    :catch_18
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_28

    .line 1663
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1665
    :cond_28
    throw v1

    .line 1656
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_29
    move-exception v1

    .line 1657
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_39

    .line 1658
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1660
    :cond_39
    new-instance v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1654
    .end local v1    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v1

    .line 1655
    .local v1, "e":Lcom/android/framework/protobuf/UninitializedMessageException;
    invoke-virtual {v1}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1649
    .end local v1    # "e":Lcom/android/framework/protobuf/UninitializedMessageException;
    :catch_4d
    move-exception v1

    .line 1650
    .local v1, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1651
    new-instance v2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v1, v2

    .line 1653
    :cond_5a
    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 11
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1675
    .local p0, "instance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 1677
    .local v1, "result":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_4
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 1678
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    add-int v4, p2, p3

    new-instance v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v5, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_13
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_13} :catch_60
    .catch Lcom/android/framework/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_13} :catch_53
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_13} :catch_29

    move-object v2, p1

    move v3, p2

    .end local p1    # "input":[B
    .end local p2    # "offset":I
    .local v2, "input":[B
    .local v3, "offset":I
    :try_start_15
    invoke-interface/range {v0 .. v5}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    .line 1680
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_1b
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_15 .. :try_end_1b} :catch_26
    .catch Lcom/android/framework/protobuf/UninitializedMessageException; {:try_start_15 .. :try_end_1b} :catch_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 1695
    .end local v0    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    nop

    .line 1696
    return-object v1

    .line 1693
    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_2d

    .line 1688
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .line 1686
    :catch_23
    move-exception v0

    move-object p1, v0

    goto :goto_57

    .line 1681
    :catch_26
    move-exception v0

    move-object p1, v0

    goto :goto_64

    .line 1693
    .end local v2    # "input":[B
    .end local v3    # "offset":I
    .restart local p1    # "input":[B
    .restart local p2    # "offset":I
    :catch_29
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object p1, v0

    .line 1694
    .end local p2    # "offset":I
    .restart local v2    # "input":[B
    .restart local v3    # "offset":I
    .local p1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2

    .line 1688
    .end local v2    # "input":[B
    .end local v3    # "offset":I
    .local p1, "input":[B
    .restart local p2    # "offset":I
    :catch_36
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object p1, v0

    .line 1689
    .end local p2    # "offset":I
    .restart local v2    # "input":[B
    .restart local v3    # "offset":I
    .local p1, "e":Ljava/io/IOException;
    :goto_3a
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_49

    .line 1690
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw p2

    .line 1692
    :cond_49
    new-instance p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2

    .line 1686
    .end local v2    # "input":[B
    .end local v3    # "offset":I
    .local p1, "input":[B
    .restart local p2    # "offset":I
    :catch_53
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object p1, v0

    .line 1687
    .end local p2    # "offset":I
    .restart local v2    # "input":[B
    .restart local v3    # "offset":I
    .local p1, "e":Lcom/android/framework/protobuf/UninitializedMessageException;
    :goto_57
    invoke-virtual {p1}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2

    .line 1681
    .end local v2    # "input":[B
    .end local v3    # "offset":I
    .local p1, "input":[B
    .restart local p2    # "offset":I
    :catch_60
    move-exception v0

    move-object v2, p1

    move v3, p2

    move-object p1, v0

    .line 1682
    .end local p2    # "offset":I
    .restart local v2    # "input":[B
    .restart local v3    # "offset":I
    .local p1, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :goto_64
    invoke-virtual {p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 1683
    new-instance p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 1685
    :cond_70
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    throw p2
.end method

.method protected static blacklist registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 415
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "defaultInstance":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 416
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method


# virtual methods
.method blacklist buildMessageInfo()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist clearMemoizedHashCode()V
    .registers 2

    .line 103
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 104
    return-void
.end method

.method blacklist clearMemoizedSerializedSize()V
    .registers 2

    .line 312
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 313
    return-void
.end method

.method blacklist computeHashCode()I
    .registers 2

    .line 164
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final blacklist createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final blacklist createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "prototype":Lcom/android/framework/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .registers 3
    .param p1, "method"    # Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 308
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "method"    # Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;

    .line 303
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 171
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ne p0, p1, :cond_4

    .line 172
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 176
    return v0

    .line 179
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 180
    return v0

    .line 183
    :cond_13
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, v1}, Lcom/android/framework/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMemoizedHashCode()I
    .registers 2

    .line 95
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method blacklist getMemoizedSerializedSize()I
    .registers 3

    .line 317
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final blacklist getParserForType()Lcom/android/framework/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Parser;

    return-object v0
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 362
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method blacklist getSerializedSize(Lcom/android/framework/protobuf/Schema;)I
    .registers 6
    .param p1, "schema"    # Lcom/android/framework/protobuf/Schema;

    .line 338
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 340
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    .line 341
    .local v0, "size":I
    if-ltz v0, :cond_d

    .line 344
    return v0

    .line 342
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serialized size must be non-negative, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v0    # "size":I
    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_35

    .line 349
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    return v0

    .line 353
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    .line 354
    .restart local v0    # "size":I
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 355
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 152
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 153
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    return v0

    .line 156
    :cond_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->hashCodeIsNotMemoized()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 157
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedHashCode(I)V

    .line 160
    :cond_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    return v0
.end method

.method blacklist hashCodeIsNotMemoized()Z
    .registers 2

    .line 107
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist isInitialized()Z
    .registers 2

    .line 246
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method blacklist isMutable()Z
    .registers 3

    .line 87
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected blacklist makeImmutable()V
    .registers 2

    .line 226
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 228
    return-void
.end method

.method blacklist markImmutable()V
    .registers 3

    .line 91
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 92
    return-void
.end method

.method protected blacklist mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/android/framework/protobuf/ByteString;

    .line 220
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 221
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 222
    return-void
.end method

.method protected final blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .registers 3
    .param p1, "unknownFields"    # Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 430
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 431
    return-void
.end method

.method protected blacklist mergeVarintField(II)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 214
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 215
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 216
    return-void
.end method

.method public final blacklist newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic blacklist newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method protected blacklist parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .registers 5
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 205
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_9
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 209
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method blacklist setMemoizedHashCode(I)V
    .registers 2
    .param p1, "value"    # I

    .line 99
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iput p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 100
    return-void
.end method

.method blacklist setMemoizedSerializedSize(I)V
    .registers 5
    .param p1, "size"    # I

    .line 322
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ltz p1, :cond_f

    .line 325
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 327
    return-void

    .line 323
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    .line 253
    .local v0, "builder":Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 60
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 146
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/MessageLiteToString;->toString(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/android/framework/protobuf/GeneratedMessageLite;, "Lcom/android/framework/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 333
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/android/framework/protobuf/CodedOutputStream;)Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 334
    return-void
.end method
