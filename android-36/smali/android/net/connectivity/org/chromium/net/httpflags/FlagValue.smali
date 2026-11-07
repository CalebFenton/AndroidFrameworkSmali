.class public final Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "FlagValue.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;,
        Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;,
        Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final blacklist CONSTRAINED_VALUES_FIELD_NUMBER:I = 0x8

.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddAllConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/Iterable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->addAllConstrainedValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->addConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->addConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->clearConstrainedValues()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->removeConstrainedValues(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->setConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1796
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;-><init>()V

    .line 1799
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 1800
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1802
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->emptyProtobufList()Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method private blacklist addAllConstrainedValues(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;)V"
        }
    .end annotation

    .line 1436
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->ensureConstrainedValuesIsMutable()V

    .line 1437
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1439
    return-void
.end method

.method private blacklist addConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1421
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1422
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->ensureConstrainedValuesIsMutable()V

    .line 1423
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1424
    return-void
.end method

.method private blacklist addConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1407
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->ensureConstrainedValuesIsMutable()V

    .line 1408
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1409
    return-void
.end method

.method private blacklist clearConstrainedValues()V
    .registers 2

    .line 1450
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->emptyProtobufList()Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 1451
    return-void
.end method

.method private blacklist ensureConstrainedValuesIsMutable()V
    .registers 3

    .line 1374
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 1375
    .local v0, "tmp":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;>;"
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1376
    nop

    .line 1377
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->mutableCopy(Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    .line 1379
    :cond_f
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 1

    .line 1805
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 1

    .line 1541
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 1544
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1518
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1524
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1482
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1489
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1529
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1536
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1506
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1469
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1476
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1494
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1501
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 1811
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist removeConstrainedValues(I)V
    .registers 3
    .param p1, "index"    # I

    .line 1462
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->ensureConstrainedValuesIsMutable()V

    .line 1463
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1464
    return-void
.end method

.method private blacklist setConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1392
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->ensureConstrainedValuesIsMutable()V

    .line 1394
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1395
    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1747
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_56

    .line 1789
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1786
    :pswitch_12
    return-object v1

    .line 1783
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1768
    :pswitch_19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1769
    .local v0, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    if-nez v0, :cond_34

    .line 1770
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    monitor-enter v1

    .line 1771
    :try_start_20
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v0, v2

    .line 1772
    if-nez v0, :cond_2f

    .line 1773
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1776
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1778
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 1780
    :cond_34
    :goto_34
    return-object v0

    .line 1765
    .end local v0    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v0

    .line 1755
    :pswitch_38
    const-string v0, "constrainedValues_"

    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1759
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0000\u0008\u0008\u0001\u0000\u0001\u0000\u0008\u001b"

    .line 1761
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1752
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_49
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue-IA;)V

    return-object v0

    .line 1749
    :pswitch_4f
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;-><init>()V

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getConstrainedValues(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p1, "index"    # I

    .line 1358
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public blacklist getConstrainedValuesCount()I
    .registers 2

    .line 1345
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getConstrainedValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public blacklist getConstrainedValuesOrBuilder(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 1371
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;

    return-object v0
.end method

.method public blacklist getConstrainedValuesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1332
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->constrainedValues_:Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
