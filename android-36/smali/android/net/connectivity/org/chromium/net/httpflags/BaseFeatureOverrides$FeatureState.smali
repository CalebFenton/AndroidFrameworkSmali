.class public final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "BaseFeatureOverrides.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;,
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$ParamsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

.field public static final blacklist ENABLED_FIELD_NUMBER:I = 0x1

.field public static final blacklist PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist bitField0_:I

.field private blacklist enabled_:Z

.field private blacklist params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearEnabled(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->clearEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMutableParamsMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getMutableParamsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetEnabled(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->setEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1066
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;-><init>()V

    .line 1069
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 1070
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1072
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 244
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 316
    nop

    .line 318
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->emptyMapField()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 245
    return-void
.end method

.method private blacklist clearEnabled()V
    .registers 2

    .line 301
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->bitField0_:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->enabled_:Z

    .line 303
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 1

    .line 1075
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method private blacklist getMutableParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 540
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetMutableParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private blacklist internalGetMutableParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 326
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 328
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private blacklist internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->params_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 1

    .line 618
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 621
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 559
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 566
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 546
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 553
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 571
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 578
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1081
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setEnabled(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 288
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->bitField0_:I

    .line 289
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->enabled_:Z

    .line 290
    return-void
.end method


# virtual methods
.method public blacklist containsParams(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 372
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final blacklist dynamicMethod(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "method"    # Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1014
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5a

    .line 1059
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1056
    :pswitch_12
    return-object v1

    .line 1053
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1038
    :pswitch_19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1039
    .local v0, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    if-nez v0, :cond_34

    .line 1040
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    monitor-enter v1

    .line 1041
    :try_start_20
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v0, v2

    .line 1042
    if-nez v0, :cond_2f

    .line 1043
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1046
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1048
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 1050
    :cond_34
    :goto_34
    return-object v0

    .line 1035
    .end local v0    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v0

    .line 1022
    :pswitch_38
    const-string v0, "bitField0_"

    const-string v1, "enabled_"

    const-string v2, "params_"

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$ParamsDefaultEntryHolder;->defaultEntry:Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1007\u0000\u00022"

    .line 1031
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1019
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_4d
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides-IA;)V

    return-object v0

    .line 1016
    :pswitch_53
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;-><init>()V

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getEnabled()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->enabled_:Z

    return v0
.end method

.method public blacklist getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParamsCount()I
    .registers 2

    .line 333
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 417
    nop

    .line 418
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 417
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParamsOrDefault(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 458
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 459
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 460
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    goto :goto_17

    :cond_16
    move-object v2, p2

    :goto_17
    return-object v2
.end method

.method public blacklist getParamsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 499
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 500
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->internalGetParams()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 501
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 504
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v2

    .line 502
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public blacklist hasEnabled()Z
    .registers 3

    .line 261
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
