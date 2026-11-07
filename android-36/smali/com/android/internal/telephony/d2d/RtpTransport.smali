.class public Lcom/android/internal/telephony/d2d/RtpTransport;
.super Ljava/lang/Object;
.source "RtpTransport.java"

# interfaces
.implements Lcom/android/internal/telephony/d2d/TransportProtocol;
.implements Lcom/android/internal/telephony/d2d/RtpAdapter$Callback;


# static fields
.field private static final blacklist BATTERY_STATE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist CALL_STATE_LOCAL_IDENTIFIER:I = 0x0

.field private static final blacklist CALL_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri; = null

.field public static blacklist CALL_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType; = null

.field private static final blacklist CODEC_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist DEVICE_STATE_LOCAL_IDENTIFIER:I = 0x0

.field private static final blacklist DEVICE_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri; = null

.field public static blacklist DEVICE_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType; = null

.field private static final blacklist NETWORK_COVERAGE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROTOCOL_STATUS_NEGOTIATION_COMPLETE:I = 0x3

.field public static final blacklist PROTOCOL_STATUS_NEGOTIATION_FAILED:I = 0x4

.field public static final blacklist PROTOCOL_STATUS_NEGOTIATION_REQUIRED:I = 0x1

.field public static final blacklist PROTOCOL_STATUS_NEGOTIATION_WAITING_ON_PACKET:I = 0x2

.field private static final blacklist RAT_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RTP_BATTERY_STATE_CHARGING_BITS:B = 0x30t

.field public static final blacklist RTP_BATTERY_STATE_GOOD_BITS:B = 0x10t

.field public static final blacklist RTP_BATTERY_STATE_LOW_BITS:B = 0x0t

.field public static final blacklist RTP_CALL_STATE_MSG_CODEC_BITS:B = 0x2t

.field public static final blacklist RTP_CALL_STATE_MSG_RADIO_ACCESS_TYPE_BITS:B = 0x1t

.field public static final blacklist RTP_CODEC_VALUE_AMR_NB_BITS:B = 0x30t

.field public static final blacklist RTP_CODEC_VALUE_AMR_WB_BITS:B = 0x20t

.field public static final blacklist RTP_CODEC_VALUE_EVS_BITS:B = 0x10t

.field public static final blacklist RTP_DEVICE_STATE_MSG_BATTERY_BITS:B = 0x1t

.field public static final blacklist RTP_DEVICE_STATE_MSG_NETWORK_COVERAGE_BITS:B = 0x2t

.field public static final blacklist RTP_NETWORK_COVERAGE_GOOD_BITS:B = 0x10t

.field public static final blacklist RTP_NETWORK_COVERAGE_POOR_BITS:B = 0x0t

.field public static final blacklist RTP_PARAMETER_BIT_OFFSET:I = 0x4

.field public static final blacklist RTP_RAT_VALUE_LTE_BITS:B = 0x10t

.field public static final blacklist RTP_RAT_VALUE_NR_BITS:B = 0x30t

.field public static final blacklist RTP_RAT_VALUE_WLAN_BITS:B = 0x20t


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsSdpNegotiationSupported:Z

.field private blacklist mProtocolStatus:I

.field private final blacklist mRtpAdapter:Lcom/android/internal/telephony/d2d/RtpAdapter;

.field private blacklist mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeoutsAdapter:Lcom/android/internal/telephony/d2d/Timeouts$Adapter;


# direct methods
.method public static synthetic blacklist $r8$lambda$FQ-blotdlx-MWJtoguURNLcOOPw(Landroid/telephony/ims/RtpHeaderExtensionType;)Ljava/lang/String;
    .registers 1

    .line 347
    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtensionType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$I7soozi9RAuPRO5tZxHGSryN84M(Landroid/net/Uri;Landroid/telephony/ims/RtpHeaderExtensionType;)Z
    .registers 2

    .line 623
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtensionType;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Rg9w_xfjiK0CdkR7DwKm-k2zp28(Landroid/telephony/ims/RtpHeaderExtensionType;)Z
    .registers 2

    .line 352
    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtensionType;->getUri()Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$_VU1Ie2JwNtbzmA99Vhl9-nEc6o(Landroid/telephony/ims/RtpHeaderExtension;Landroid/telephony/ims/RtpHeaderExtensionType;)Z
    .registers 2

    .line 440
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtensionType;->getLocalIdentifier()I

    move-result p1

    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$foYykrqswv4TuEvzCWBTFDuzOlI(Lcom/android/internal/telephony/d2d/RtpTransport;Lcom/android/internal/telephony/d2d/Communicator$Message;)Landroid/telephony/ims/RtpHeaderExtension;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->lambda$sendMessages$3(Lcom/android/internal/telephony/d2d/Communicator$Message;)Landroid/telephony/ims/RtpHeaderExtension;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$o4yS466tiEtZ2bNkqrOHdgL5Nr8(Lcom/android/internal/telephony/d2d/RtpTransport;Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->lambda$onRtpHeaderExtensionsReceived$4(Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$v54pdFS5Bk36JUR7jR812CiVOKA(Landroid/telephony/ims/RtpHeaderExtensionType;)Landroid/net/Uri;
    .registers 1

    .line 441
    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtensionType;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$vGbpYGLaMkxzluPzJL9EJzmyfJg(Landroid/telephony/ims/RtpHeaderExtensionType;)Z
    .registers 2

    .line 354
    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtensionType;->getUri()Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 64
    const-string v0, "http://develop.android.com/122020/d2dcomm#device-state"

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    .line 71
    const-string v0, "http://develop.android.com/122020/d2dcomm#call-state"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    const/16 v0, 0xa

    .line 77
    sput v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_LOCAL_IDENTIFIER:I

    const/16 v0, 0xb

    .line 82
    sput v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_LOCAL_IDENTIFIER:I

    .line 87
    new-instance v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    sget v1, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_LOCAL_IDENTIFIER:I

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RtpHeaderExtensionType;-><init>(ILandroid/net/Uri;)V

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    .line 94
    new-instance v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    sget v1, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_LOCAL_IDENTIFIER:I

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RtpHeaderExtensionType;-><init>(ILandroid/net/Uri;)V

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    .line 132
    new-instance v1, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v1}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    const/4 v2, 0x1

    .line 136
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 139
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 137
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v3, 0x4

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 143
    invoke-virtual {v1, v3, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v1}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->RAT_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    const/16 v3, 0x20

    .line 173
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 v5, 0x10

    .line 175
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 174
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/16 v6, 0x30

    .line 177
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 176
    invoke-virtual {v1, v0, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v1}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->CODEC_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    .line 194
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v1, v0, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v1}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->BATTERY_STATE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    const/4 v3, 0x0

    .line 213
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v1, v0, v6}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->NETWORK_COVERAGE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    .line 229
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/d2d/RtpAdapter;Lcom/android/internal/telephony/d2d/Timeouts$Adapter;Landroid/os/Handler;Z)V
    .registers 6

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 298
    iput v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mProtocolStatus:I

    .line 303
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    .line 314
    iput-object p1, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mRtpAdapter:Lcom/android/internal/telephony/d2d/RtpAdapter;

    .line 315
    iput-object p2, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mTimeoutsAdapter:Lcom/android/internal/telephony/d2d/Timeouts$Adapter;

    .line 316
    iput-object p3, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mHandler:Landroid/os/Handler;

    .line 317
    iput-boolean p4, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mIsSdpNegotiationSupported:Z

    return-void
.end method

.method private blacklist extractMessage(Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;
    .registers 9

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/RtpHeaderExtension;)V

    .line 440
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda8;-><init>()V

    .line 441
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    .line 445
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 444
    const-string v0, "extractMessage: localIdentifier=%d not supported."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 449
    :cond_35
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getExtensionData()[B

    move-result-object v1

    if-eqz v1, :cond_1b9

    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getExtensionData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_45

    goto/16 :goto_1b9

    .line 455
    :cond_45
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 458
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getExtensionData()[B

    move-result-object v1

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 459
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getExtensionData()[B

    move-result-object v5

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 464
    sget-object v5, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "messageType=%s, value=%s; invalid value"

    if-eqz v5, :cond_fa

    .line 465
    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8c

    .line 468
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 467
    const-string v0, "extractMessage: localIdentifier=%d message with invalid type %s."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 471
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_a6

    .line 497
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 496
    invoke-static {p0, v6, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 485
    :cond_a6
    sget-object v3, Lcom/android/internal/telephony/d2d/RtpTransport;->NETWORK_COVERAGE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_ca

    .line 489
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 490
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 487
    const-string v0, "extractMessage: localIdentifier=%d, network coverage msg with invalid value=%s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 493
    :cond_ca
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto/16 :goto_190

    .line 474
    :cond_d0
    sget-object v3, Lcom/android/internal/telephony/d2d/RtpTransport;->BATTERY_STATE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_f4

    .line 478
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 479
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 476
    const-string v0, "extractMessage: localIdentifier=%d, battery state msg with invalid value=%s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 482
    :cond_f4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto/16 :goto_190

    .line 501
    :cond_fa
    sget-object v5, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1af

    .line 502
    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_126

    .line 506
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 504
    const-string v0, "extractMessage: localIdentifier=%d, network coverage msg with invalid type=%s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 510
    :cond_126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_168

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13f

    .line 536
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 535
    invoke-static {p0, v6, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 513
    :cond_13f
    sget-object v3, Lcom/android/internal/telephony/d2d/RtpTransport;->CODEC_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_163

    .line 517
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 518
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 515
    const-string v0, "extractMessage: localIdentifier=%d, audio codec msg with invalid value=%s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 521
    :cond_163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_190

    .line 524
    :cond_168
    sget-object v3, Lcom/android/internal/telephony/d2d/RtpTransport;->RAT_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_18c

    .line 528
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 529
    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 526
    const-string v0, "extractMessage: localIdentifier=%d, rat type msg with invalid value=%s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 532
    :cond_18c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 545
    :goto_190
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 544
    const-string v2, "extractMessage: messageType=%s, value=%s --> message=%d, value=%d"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    new-instance p0, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    return-object p0

    .line 541
    :cond_1af
    const-string p1, "invalid uri=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 451
    :cond_1b9
    :goto_1b9
    invoke-virtual {p1}, Landroid/telephony/ims/RtpHeaderExtension;->getLocalIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 450
    const-string v0, "extractMessage: localIdentifier=%d message with invalid data length."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private blacklist getRtpHeaderExtensionIdentifier(Landroid/net/Uri;)I
    .registers 3

    .line 622
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;)V

    .line 623
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 624
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {p0}, Landroid/telephony/ims/RtpHeaderExtensionType;->getLocalIdentifier()I

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$onRtpHeaderExtensionsReceived$4(Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;
    .registers 2

    .line 423
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->extractMessage(Landroid/telephony/ims/RtpHeaderExtension;)Lcom/android/internal/telephony/d2d/Communicator$Message;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$sendMessages$3(Lcom/android/internal/telephony/d2d/Communicator$Message;)Landroid/telephony/ims/RtpHeaderExtension;
    .registers 2

    .line 385
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/d2d/RtpTransport;->generateRtpHeaderExtension(Lcom/android/internal/telephony/d2d/Communicator$Message;)Landroid/telephony/ims/RtpHeaderExtension;

    move-result-object p0

    return-object p0
.end method

.method private blacklist notifyProtocolReady()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    if-eqz v0, :cond_7

    .line 632
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onNegotiationSuccess(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    :cond_7
    return-void
.end method

.method private blacklist notifyProtocolUnavailable()V
    .registers 2

    .line 640
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    if-eqz v0, :cond_7

    .line 641
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onNegotiationFailed(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public blacklist forceNegotiated()V
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    if-eqz v0, :cond_a

    .line 398
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 399
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    sget-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    sget-object v1, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION_TYPE:Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_18
    const/4 v0, 0x3

    .line 402
    iput v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mProtocolStatus:I

    return-void
.end method

.method public blacklist forceNotNegotiated()V
    .registers 2

    const/4 v0, 0x1

    .line 410
    iput v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mProtocolStatus:I

    return-void
.end method

.method public blacklist generateRtpHeaderExtension(Lcom/android/internal/telephony/d2d/Communicator$Message;)Landroid/telephony/ims/RtpHeaderExtension;
    .registers 7

    const/4 v0, 0x1

    .line 585
    new-array v1, v0, [B

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_cf

    const/4 v0, 0x2

    if-eq v2, v0, :cond_91

    const/4 v0, 0x3

    if-eq v2, v0, :cond_53

    const/4 v0, 0x4

    if-eq v2, v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 606
    :cond_15
    aget-byte v0, v1, v3

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 607
    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->NETWORK_COVERAGE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 608
    new-instance p1, Landroid/telephony/ims/RtpHeaderExtension;

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    .line 609
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/d2d/RtpTransport;->getRtpHeaderExtensionIdentifier(Landroid/net/Uri;)I

    move-result p0

    invoke-direct {p1, p0, v1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(I[B)V

    return-object p1

    .line 600
    :cond_53
    aget-byte v0, v1, v3

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 601
    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->BATTERY_STATE_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 602
    new-instance p1, Landroid/telephony/ims/RtpHeaderExtension;

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->DEVICE_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    .line 603
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/d2d/RtpTransport;->getRtpHeaderExtensionIdentifier(Landroid/net/Uri;)I

    move-result p0

    invoke-direct {p1, p0, v1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(I[B)V

    return-object p1

    .line 588
    :cond_91
    aget-byte v0, v1, v3

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 589
    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->CODEC_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 590
    new-instance p1, Landroid/telephony/ims/RtpHeaderExtension;

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    .line 591
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/d2d/RtpTransport;->getRtpHeaderExtensionIdentifier(Landroid/net/Uri;)I

    move-result p0

    invoke-direct {p1, p0, v1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(I[B)V

    return-object p1

    .line 594
    :cond_cf
    aget-byte v0, v1, v3

    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_MSG_TYPE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 595
    sget-object v2, Lcom/android/internal/telephony/d2d/RtpTransport;->RAT_VALUE_TO_RTP_BITS:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/d2d/Communicator$Message;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    .line 596
    new-instance p1, Landroid/telephony/ims/RtpHeaderExtension;

    sget-object v0, Lcom/android/internal/telephony/d2d/RtpTransport;->CALL_STATE_RTP_HEADER_EXTENSION:Landroid/net/Uri;

    .line 597
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/d2d/RtpTransport;->getRtpHeaderExtensionIdentifier(Landroid/net/Uri;)I

    move-result p0

    invoke-direct {p1, p0, v1}, Landroid/telephony/ims/RtpHeaderExtension;-><init>(I[B)V

    return-object p1
.end method

.method public blacklist onRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 423
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/d2d/RtpTransport;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda2;-><init>()V

    .line 424
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 425
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 426
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_27

    return-void

    .line 429
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onMessagesReceived(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist sendMessages(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;)V"
        }
    .end annotation

    .line 385
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/d2d/RtpTransport;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 386
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 387
    const-string v1, "sendMessages: sending=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mRtpAdapter:Lcom/android/internal/telephony/d2d/RtpAdapter;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/d2d/RtpAdapter;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    return-void
.end method

.method public blacklist startNegotiation()V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mRtpAdapter:Lcom/android/internal/telephony/d2d/RtpAdapter;

    .line 342
    invoke-interface {v0}, Lcom/android/internal/telephony/d2d/RtpAdapter;->getAcceptedRtpHeaderExtensions()Ljava/util/Set;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mSupportedRtpHeaderExtensionTypes:Landroid/util/ArraySet;

    .line 346
    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda4;-><init>()V

    .line 347
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 348
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 345
    const-string v2, "startNegotiation: supportedExtensions=%s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-boolean v1, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mIsSdpNegotiationSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    .line 351
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/telephony/d2d/RtpTransport$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x3

    .line 359
    iput v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mProtocolStatus:I

    .line 360
    const-string v0, "startNegotiation: header extensions available, negotiation success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/RtpTransport;->notifyProtocolReady()V

    return-void

    :cond_5e
    const/4 v0, 0x4

    .line 365
    iput v0, p0, Lcom/android/internal/telephony/d2d/RtpTransport;->mProtocolStatus:I

    .line 366
    const-string v0, "startNegotiation: header extensions not available; negotiation failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/RtpTransport;->notifyProtocolUnavailable()V

    return-void

    .line 371
    :cond_6c
    const-string v0, "startNegotiation: SDP negotiation not supported; negotiation complete"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/RtpTransport;->notifyProtocolReady()V

    return-void
.end method
