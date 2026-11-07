.class public final Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "FlagValue.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstrainedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;,
        Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final blacklist APP_ID_FIELD_NUMBER:I = 0x1

.field public static final blacklist BOOL_VALUE_FIELD_NUMBER:I = 0x3

.field public static final blacklist BYTES_VALUE_FIELD_NUMBER:I = 0x7

.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

.field public static final blacklist FLOAT_VALUE_FIELD_NUMBER:I = 0x5

.field public static final blacklist INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final blacklist MIN_VERSION_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STRING_VALUE_FIELD_NUMBER:I = 0x6


# instance fields
.field private blacklist appId_:Ljava/lang/String;

.field private blacklist bitField0_:I

.field private blacklist minVersion_:Ljava/lang/String;

.field private blacklist valueCase_:I

.field private blacklist value_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearAppId(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearAppId()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBoolValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearBoolValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBytesValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearBytesValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearFloatValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearFloatValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearIntValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearIntValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearMinVersion(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearMinVersion()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearStringValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearStringValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearValue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAppId(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetAppIdBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setAppIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBoolValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setBoolValue(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBytesValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setBytesValue(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFloatValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setFloatValue(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetIntValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setIntValue(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMinVersion(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setMinVersion(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMinVersionBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setMinVersionBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStringValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStringValueBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->setStringValueBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1287
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

    .line 1290
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1291
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1293
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 193
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 194
    const-string v0, ""

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private blacklist clearAppId()V
    .registers 2

    .line 318
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 319
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 320
    return-void
.end method

.method private blacklist clearBoolValue()V
    .registers 3

    .line 501
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 505
    :cond_b
    return-void
.end method

.method private blacklist clearBytesValue()V
    .registers 3

    .line 679
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 683
    :cond_b
    return-void
.end method

.method private blacklist clearFloatValue()V
    .registers 3

    .line 577
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 581
    :cond_b
    return-void
.end method

.method private blacklist clearIntValue()V
    .registers 3

    .line 539
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 543
    :cond_b
    return-void
.end method

.method private blacklist clearMinVersion()V
    .registers 2

    .line 443
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 444
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    .line 445
    return-void
.end method

.method private blacklist clearStringValue()V
    .registers 3

    .line 631
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 635
    :cond_b
    return-void
.end method

.method private blacklist clearValue()V
    .registers 2

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 1

    .line 1296
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 1

    .line 760
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 763
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 701
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 708
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 688
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 695
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 713
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 720
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation

    .line 1302
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setAppId(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 305
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 306
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 307
    return-void
.end method

.method private blacklist setAppIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 333
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 334
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 335
    return-void
.end method

.method private blacklist setBoolValue(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 494
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 495
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 496
    return-void
.end method

.method private blacklist setBytesValue(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 672
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x7

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 673
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 674
    return-void
.end method

.method private blacklist setFloatValue(F)V
    .registers 3
    .param p1, "value"    # F

    .line 570
    const/4 v0, 0x5

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 571
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 572
    return-void
.end method

.method private blacklist setIntValue(J)V
    .registers 4
    .param p1, "value"    # J

    .line 532
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 533
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 534
    return-void
.end method

.method private blacklist setMinVersion(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 423
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 424
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    .line 425
    return-void
.end method

.method private blacklist setMinVersionBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 465
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    .line 466
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 467
    return-void
.end method

.method private blacklist setStringValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 624
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x6

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 625
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 626
    return-void
.end method

.method private blacklist setStringValueBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 642
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    .line 643
    const/4 v0, 0x6

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 644
    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1, "method"    # Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1233
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5c

    .line 1280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1277
    :pswitch_12
    return-object v1

    .line 1274
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1259
    :pswitch_19
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1260
    .local v0, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;>;"
    if-nez v0, :cond_34

    .line 1261
    const-class v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    monitor-enter v1

    .line 1262
    :try_start_20
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v0, v2

    .line 1263
    if-nez v0, :cond_2f

    .line 1264
    new-instance v2, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {v2, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1267
    sput-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1269
    :cond_2f
    monitor-exit v1

    goto :goto_34

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v2

    .line 1271
    :cond_34
    :goto_34
    return-object v0

    .line 1256
    .end local v0    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0

    .line 1241
    :pswitch_38
    const-string v0, "value_"

    const-string v1, "valueCase_"

    const-string v2, "bitField0_"

    const-string v3, "appId_"

    const-string v4, "minVersion_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1248
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u103a\u0000\u0004\u1035\u0000\u0005\u1034\u0000\u0006\u103b\u0000\u0007\u103d\u0000"

    .line 1252
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1238
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_4f
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue-IA;)V

    return-object v0

    .line 1235
    :pswitch_55
    new-instance v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoolValue()Z
    .registers 3

    .line 484
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 485
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 487
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3

    .line 661
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 662
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0

    .line 664
    :cond_a
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ByteString;->EMPTY:Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0
.end method

.method public blacklist getFloatValue()F
    .registers 3

    .line 560
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 561
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 563
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIntValue()J
    .registers 3

    .line 522
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 523
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMinVersion()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinVersionBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStringValue()Ljava/lang/String;
    .registers 4

    .line 598
    const-string v0, ""

    .line 599
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 600
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 602
    :cond_c
    return-object v0
.end method

.method public blacklist getStringValueBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4

    .line 611
    const-string v0, ""

    .line 612
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 613
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 615
    :cond_c
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getValueCase()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2

    .line 238
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->forNumber(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAppId()Z
    .registers 3

    .line 261
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist hasBoolValue()Z
    .registers 3

    .line 476
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasBytesValue()Z
    .registers 3

    .line 653
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasFloatValue()Z
    .registers 3

    .line 552
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasIntValue()Z
    .registers 3

    .line 514
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist hasMinVersion()Z
    .registers 2

    .line 358
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasStringValue()Z
    .registers 3

    .line 590
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
