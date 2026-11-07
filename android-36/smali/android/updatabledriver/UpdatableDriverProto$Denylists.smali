.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Denylists"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

.field public static final blacklist DENYLISTS_FIELD_NUMBER:I = 0x1

.field private static volatile blacklist PARSER:Lcom/android/framework/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 870
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;-><init>()V

    .line 873
    .local v0, "defaultInstance":Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 874
    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 876
    .end local v0    # "defaultInstance":Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 517
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    .line 518
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 519
    return-void
.end method

.method static synthetic blacklist access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 512
    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 2
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .param p1, "x1"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 512
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic blacklist access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 512
    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V
    .registers 2
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 512
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->addAllDenylists(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic blacklist access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V
    .registers 1
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 512
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->clearDenylists()V

    return-void
.end method

.method static synthetic blacklist access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V
    .registers 2
    .param p0, "x0"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .param p1, "x1"    # I

    .line 512
    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->removeDenylists(I)V

    return-void
.end method

.method static synthetic blacklist access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 1

    .line 512
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method private blacklist addAllDenylists(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)V"
        }
    .end annotation

    .line 599
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroid/updatabledriver/UpdatableDriverProto$Denylist;>;"
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    .line 600
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 602
    return-void
.end method

.method private blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 590
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    .line 592
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 593
    return-void
.end method

.method private blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 3
    .param p1, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    .line 582
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method

.method private blacklist clearDenylists()V
    .registers 2

    .line 607
    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 608
    return-void
.end method

.method private blacklist ensureDenylistsIsMutable()V
    .registers 3

    .line 558
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 559
    .local v0, "tmp":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<Landroid/updatabledriver/UpdatableDriverProto$Denylist;>;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_f

    .line 560
    nop

    .line 561
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 563
    :cond_f
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 1

    .line 879
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 1

    .line 692
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 695
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 633
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 640
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 620
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 627
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 645
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 652
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0
.end method

.method public static blacklist parser()Lcom/android/framework/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
            ">;"
        }
    .end annotation

    .line 885
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist removeDenylists(I)V
    .registers 3
    .param p1, "index"    # I

    .line 613
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    .line 614
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method private blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 571
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->ensureDenylistsIsMutable()V

    .line 573
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 574
    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 821
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_56

    .line 863
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 860
    :pswitch_12
    return-object v1

    .line 857
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 842
    :pswitch_19
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    .line 843
    .local v0, "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<Landroid/updatabledriver/UpdatableDriverProto$Denylists;>;"
    if-nez v0, :cond_34

    .line 844
    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    monitor-enter v1

    .line 845
    :try_start_20
    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    move-object v0, v2

    .line 846
    if-nez v0, :cond_2f

    .line 847
    new-instance v2, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 850
    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->PARSER:Lcom/android/framework/protobuf/Parser;

    .line 852
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 854
    :cond_34
    :goto_34
    return-object v0

    .line 839
    .end local v0    # "parser":Lcom/android/framework/protobuf/Parser;, "Lcom/android/framework/protobuf/Parser<Landroid/updatabledriver/UpdatableDriverProto$Denylists;>;"
    :pswitch_35
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    return-object v0

    .line 829
    :pswitch_38
    const-string v0, "denylists_"

    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 833
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 835
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v2, v1, v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 826
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_49
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;

    invoke-direct {v0, v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V

    return-object v0

    .line 823
    :pswitch_4f
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;-><init>()V

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

.method public blacklist getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3
    .param p1, "index"    # I

    .line 548
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public blacklist getDenylistsCount()I
    .registers 2

    .line 541
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getDenylistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public blacklist getDenylistsOrBuilder(I)Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;
    .registers 3
    .param p1, "index"    # I

    .line 555
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;

    return-object v0
.end method

.method public blacklist getDenylistsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;",
            ">;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->denylists_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method
