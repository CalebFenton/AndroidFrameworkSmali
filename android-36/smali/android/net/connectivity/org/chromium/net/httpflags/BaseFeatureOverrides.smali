.class public final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "BaseFeatureOverrides.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverridesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;,
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;,
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStatesDefaultEntryHolder;,
        Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverridesOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

.field public static final blacklist FEATURE_STATES_FIELD_NUMBER:I = 0x1

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetMutableFeatureStatesMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getMutableFeatureStatesMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1479
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;-><init>()V

    .line 1482
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    .line 1483
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1485
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1096
    nop

    .line 1098
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->emptyMapField()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 19
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 1

    .line 1488
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method private blacklist getMutableFeatureStatesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1195
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetMutableFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private blacklist internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1101
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private blacklist internalGetMutableFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1106
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 1108
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->featureStates_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 1

    .line 1273
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    .line 1276
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1256
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1214
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1221
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1238
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1245
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1201
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1208
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1226
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1233
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;",
            ">;"
        }
    .end annotation

    .line 1494
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist containsFeatureStates(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1127
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

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

    .line 1430
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_56

    .line 1472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1469
    :pswitch_12
    return-object v1

    .line 1466
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1451
    :pswitch_19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1452
    .local v0, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;>;"
    if-nez v0, :cond_34

    .line 1453
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    monitor-enter v1

    .line 1454
    :try_start_20
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v0, v2

    .line 1455
    if-nez v0, :cond_2f

    .line 1456
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1459
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1461
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 1463
    :cond_34
    :goto_34
    return-object v0

    .line 1448
    .end local v0    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    return-object v0

    .line 1438
    :pswitch_38
    const-string v0, "featureStates_"

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStatesDefaultEntryHolder;->defaultEntry:Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1442
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 1444
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1435
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_49
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides-IA;)V

    return-object v0

    .line 1432
    :pswitch_4f
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;-><init>()V

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

.method public blacklist getFeatureStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1135
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeatureStatesCount()I
    .registers 2

    .line 1113
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFeatureStatesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1147
    nop

    .line 1148
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 1147
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeatureStatesOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 1162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1163
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1164
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 1165
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    goto :goto_17

    :cond_16
    move-object v2, p2

    :goto_17
    return-object v2
.end method

.method public blacklist getFeatureStatesOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1179
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1180
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->internalGetFeatureStates()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 1181
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1184
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v2

    .line 1182
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
