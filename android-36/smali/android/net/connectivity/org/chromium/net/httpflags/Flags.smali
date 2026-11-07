.class public final Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "Flags.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;,
        Landroid/net/connectivity/org/chromium/net/httpflags/Flags$FlagsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/Flags;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagsOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

.field public static final blacklist FLAGS_FIELD_NUMBER:I = 0x1

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/Flags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetMutableFlagsMap(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getMutableFlagsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 416
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;-><init>()V

    .line 419
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 420
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 422
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32
    nop

    .line 34
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->emptyMapField()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 20
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 1

    .line 425
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method private blacklist getMutableFlagsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetMutableFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private blacklist internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private blacklist internalGetMutableFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_10

    .line 42
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 44
    :cond_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->flags_:Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 1

    .line 209
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 212
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 137
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 144
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/Flags;",
            ">;"
        }
    .end annotation

    .line 431
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist containsFlags(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

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

    .line 367
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_56

    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 406
    :pswitch_12
    return-object v1

    .line 403
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 388
    :pswitch_19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 389
    .local v0, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/Flags;>;"
    if-nez v0, :cond_34

    .line 390
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    monitor-enter v1

    .line 391
    :try_start_20
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v0, v2

    .line 392
    if-nez v0, :cond_2f

    .line 393
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 396
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 398
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 400
    :cond_34
    :goto_34
    return-object v0

    .line 385
    .end local v0    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/Flags;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    return-object v0

    .line 375
    :pswitch_38
    const-string v0, "flags_"

    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$FlagsDefaultEntryHolder;->defaultEntry:Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 381
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 372
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_49
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/Flags-IA;)V

    return-object v0

    .line 369
    :pswitch_4f
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;-><init>()V

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

.method public blacklist getFlags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlagsCount()I
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFlagsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 83
    nop

    .line 84
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlagsOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 100
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 101
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    goto :goto_17

    :cond_16
    move-object v2, p2

    :goto_17
    return-object v2
.end method

.method public blacklist getFlagsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 115
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 116
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->internalGetFlags()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 117
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 120
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v2

    .line 118
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
