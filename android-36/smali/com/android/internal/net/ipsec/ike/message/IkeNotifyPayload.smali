.class public final Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;
.source "IkeNotifyPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload$NotifyType;
    }
.end annotation


# static fields
.field private static final blacklist COOKIE2_DATA_LEN_MAX:I = 0x40

.field private static final blacklist COOKIE2_DATA_LEN_MIN:I = 0x8

.field private static final blacklist COOKIE_DATA_LEN_MAX:I = 0x40

.field private static final blacklist COOKIE_DATA_LEN_MIN:I = 0x1

.field public static final blacklist ERROR_NOTIFY_TYPE_MAX:I = 0x3fff

.field private static final blacklist NAT_DETECTION_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final blacklist NOTIFY_HEADER_LEN:I = 0x4

.field public static final blacklist NOTIFY_TYPE_ADDITIONAL_TS_POSSIBLE:I = 0x4002

.field public static final blacklist NOTIFY_TYPE_COOKIE:I = 0x4006

.field public static final blacklist NOTIFY_TYPE_COOKIE2:I = 0x4011

.field public static final blacklist NOTIFY_TYPE_EAP_ONLY_AUTHENTICATION:I = 0x4021

.field public static final blacklist NOTIFY_TYPE_ESP_TFC_PADDING_NOT_SUPPORTED:I = 0x400a

.field public static final blacklist NOTIFY_TYPE_IKEV2_FRAGMENTATION_SUPPORTED:I = 0x402e

.field public static final blacklist NOTIFY_TYPE_INITIAL_CONTACT:I = 0x4000

.field public static final blacklist NOTIFY_TYPE_IPCOMP_SUPPORTED:I = 0x4003

.field public static final blacklist NOTIFY_TYPE_MOBIKE_SUPPORTED:I = 0x400c

.field public static final blacklist NOTIFY_TYPE_NAT_DETECTION_DESTINATION_IP:I = 0x4005

.field public static final blacklist NOTIFY_TYPE_NAT_DETECTION_SOURCE_IP:I = 0x4004

.field public static final blacklist NOTIFY_TYPE_REKEY_SA:I = 0x4009

.field public static final blacklist NOTIFY_TYPE_SIGNATURE_HASH_ALGORITHMS:I = 0x402f

.field private static final blacklist NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NOTIFY_TYPE_UPDATE_SA_ADDRESSES:I = 0x4010

.field public static final blacklist NOTIFY_TYPE_USE_TRANSPORT_MODE:I = 0x4007

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist notifyData:[B

.field public final blacklist notifyType:I

.field public final blacklist protocolId:I

.field public final blacklist spi:I

.field public final blacklist spiSize:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 84
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->TAG:Ljava/lang/String;

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;

    .line 200
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;

    const/16 v3, 0x4009

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    .line 207
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    .line 210
    const/16 v6, 0x22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 209
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v7, 0x23

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    .line 213
    const/16 v8, 0x24

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 212
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v9, 0x25

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v10, 0x26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v11, 0x4002

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v12, 0x4003

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v13, 0x4007

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    const/16 v14, 0x400a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    .line 225
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v15, 0x1

    const-string v14, "Unsupported critical payload"

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v14, 0x4

    const-string v15, "Invalid IKE SPI"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v14, 0x5

    const-string v15, "Invalid major version"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v14, 0x7

    const-string v15, "Invalid syntax"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v14, 0x9

    const-string v15, "Invalid message ID"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v14, "No proposal chosen"

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "Invalid KE payload"

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v4, 0x18

    const-string v5, "Authentication failed"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "Single pair required"

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "No additional SAs"

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "Internal address failure"

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "Failed CP required"

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "TS unacceptable"

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v4, "Invalid selectors"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v4, "Temporary failure"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "Child SA not found"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "Additional TS possible"

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "IPCOMP supported"

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4004

    const-string v2, "NAT detection source IP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4005

    const-string v2, "NAT detection destination IP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4006

    const-string v2, "COOKIE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "Use transport mode"

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "Rekey SA"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const-string v1, "ESP TFC Padding not supported"

    const/16 v2, 0x400a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x400c

    const-string v2, "MOBIKE supported"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4010

    const-string v2, "UPDATE_SA_ADDRESSES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4011

    const-string v2, "COOKIE2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x4021

    const-string v2, "EAP-only Authentication"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x402e

    const-string v2, "Fragmentation supported"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x402f

    const-string v2, "Generic Digital Signatures supported"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "notifyType"    # I

    .line 459
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    .line 460
    return-void
.end method

.method protected constructor blacklist <init>(IBII[B)V
    .registers 8
    .param p1, "protocolId"    # I
    .param p2, "spiSize"    # B
    .param p3, "spi"    # I
    .param p4, "notifyType"    # I
    .param p5, "notifyData"    # [B

    .line 427
    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;-><init>(IZ)V

    .line 428
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    .line 429
    iput-byte p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    .line 430
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    .line 431
    iput p4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    .line 432
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    .line 433
    return-void
.end method

.method public constructor blacklist <init>(III[B)V
    .registers 12
    .param p1, "protocolId"    # I
    .param p2, "spi"    # I
    .param p3, "notifyType"    # I
    .param p4, "notifyData"    # [B

    .line 471
    const/4 v3, 0x4

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "protocolId":I
    .end local p2    # "spi":I
    .end local p3    # "notifyType":I
    .end local p4    # "notifyData":[B
    .local v2, "protocolId":I
    .local v4, "spi":I
    .local v5, "notifyType":I
    .local v6, "notifyData":[B
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(IBII[B)V

    .line 473
    :try_start_9
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateNotifyPayloadForExistingChildSa()V
    :try_end_c
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_9 .. :try_end_c} :catch_e

    .line 476
    nop

    .line 477
    return-void

    .line 474
    :catch_e
    move-exception v0

    move-object p1, v0

    .line 475
    .local p1, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 10
    .param p1, "notifyType"    # I
    .param p2, "notifyData"    # [B

    .line 444
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    .end local p1    # "notifyType":I
    .end local p2    # "notifyData":[B
    .local v5, "notifyType":I
    .local v6, "notifyData":[B
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(IBII[B)V

    .line 446
    :try_start_9
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateNotifyPayloadForIkeAndNewChild()V
    :try_end_c
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_9 .. :try_end_c} :catch_e

    .line 449
    nop

    .line 450
    return-void

    .line 447
    :catch_e
    move-exception v0

    move-object p1, v0

    .line 448
    .local p1, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor blacklist <init>(Z[B)V
    .registers 7
    .param p1, "isCritical"    # Z
    .param p2, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 279
    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeInformationalPayload;-><init>(IZ)V

    .line 281
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 283
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    .line 285
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    .line 289
    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_32

    .line 291
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateNotifyPayloadForExistingChildSa()V

    .line 292
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    goto :goto_3c

    .line 294
    :cond_32
    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    if-nez v1, :cond_4b

    .line 296
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->validateNotifyPayloadForIkeAndNewChild()V

    .line 297
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    .line 303
    :goto_3c
    array-length v1, p2

    sub-int/2addr v1, v2

    iget-byte v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    .line 304
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    return-void

    .line 300
    :cond_4b
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SPI Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist generateNatDetectionData(JJLjava/net/InetAddress;I)[B
    .registers 11
    .param p0, "initiatorIkeSpi"    # J
    .param p2, "responderIkeSpi"    # J
    .param p4, "ipAddress"    # Ljava/net/InetAddress;
    .param p5, "port"    # I

    .line 350
    invoke-virtual {p4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 352
    .local v0, "rawIpAddr":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    .line 353
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 354
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    nop

    .line 355
    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 356
    invoke-virtual {v2, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-short v3, p5

    .line 358
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 361
    :try_start_1e
    const-string v2, "SHA-1"

    .line 362
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 363
    .local v2, "natDetectionDataDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_2c} :catch_2d

    return-object v3

    .line 364
    .end local v2    # "natDetectionDataDigest":Ljava/security/MessageDigest;
    :catch_2d
    move-exception v2

    .line 365
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Failed to obtain algorithm :SHA-1"

    invoke-direct {v3, v4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist handleCookie2AndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 3
    .param p0, "cookie2Notify"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 395
    const/16 v0, 0x8

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;II)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 3
    .param p0, "cookieNotify"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 389
    const/4 v0, 0x1

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;II)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist handleCookieAndGenerateCopy(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;II)Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .registers 8
    .param p0, "cookie2Notify"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .param p1, "minLen"    # I
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    .line 373
    .local v0, "notifyData":[B
    array-length v1, v0

    if-lt v1, p1, :cond_11

    array-length v1, v0

    if-le v1, p2, :cond_9

    goto :goto_11

    .line 383
    :cond_9
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-direct {v1, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(I[B)V

    return-object v1

    .line 375
    :cond_11
    :goto_11
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v2, 0x4011

    if-ne v1, v2, :cond_1a

    const-string v1, "COOKIE2"

    goto :goto_1c

    :cond_1a
    const-string v1, "COOKIE"

    .line 376
    .local v1, "cookieType":Ljava/lang/String;
    :goto_1c
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification data with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist validateNotifyPayloadForExistingChildSa()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 308
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_26

    .line 309
    :cond_b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Procotol ID AH(2) or ESP(3): Protocol ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_26
    :goto_26
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_EXISTING_CHILD_SA:Ljava/util/Set;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 317
    return-void

    .line 314
    :cond_35
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Notify Type for existing Child SA: Notify Type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateNotifyPayloadForIkeAndNewChild()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 320
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    if-eqz v0, :cond_22

    .line 321
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected Procotol ID unset: Protocol ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_22
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2f

    .line 331
    return-void

    .line 326
    :cond_2f
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Notify Type concerning IKE SA or new Child SA under negotiation: Notify Type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 408
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->protocolId:I

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 409
    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    .line 410
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    :cond_24
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 3

    .line 422
    iget-byte v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spiSize:B

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 5

    .line 564
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->NOTIFY_TYPE_TO_STRING:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    .local v0, "notifyTypeString":Ljava/lang/String;
    const-string v1, ")"

    const-string v2, "Notify("

    if-nez v0, :cond_28

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 569
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isErrorNotify()Z
    .registers 3

    .line 485
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v1, 0x3fff

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isNewChildSaNotify()Z
    .registers 3

    .line 497
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->VALID_NOTIFY_TYPES_FOR_NEW_CHILD_SA:Ljava/util/Set;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist validateAndBuildIkeException()Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 515
    :try_start_6
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    sparse-switch v0, :sswitch_data_be

    .line 549
    new-instance v0, Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;

    goto/16 :goto_93

    .line 547
    :sswitch_f
    new-instance v0, Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1, v2}, Landroid/net/ipsec/ike/exceptions/ChildSaNotFoundException;-><init>(I[B)V

    return-object v0

    .line 545
    :sswitch_19
    new-instance v0, Landroid/net/ipsec/ike/exceptions/TemporaryFailureException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/TemporaryFailureException;-><init>([B)V

    return-object v0

    .line 543
    :sswitch_21
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->spi:I

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSelectorsException;-><init>(I[B)V

    return-object v0

    .line 541
    :sswitch_2b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/TsUnacceptableException;-><init>([B)V

    return-object v0

    .line 539
    :sswitch_33
    new-instance v0, Landroid/net/ipsec/ike/exceptions/FailedCpRequiredException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/FailedCpRequiredException;-><init>([B)V

    return-object v0

    .line 537
    :sswitch_3b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InternalAddressFailureException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InternalAddressFailureException;-><init>([B)V

    return-object v0

    .line 535
    :sswitch_43
    new-instance v0, Landroid/net/ipsec/ike/exceptions/NoAdditionalSasException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/NoAdditionalSasException;-><init>([B)V

    return-object v0

    .line 533
    :sswitch_4b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/SinglePairRequiredException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/SinglePairRequiredException;-><init>([B)V

    return-object v0

    .line 531
    :sswitch_53
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>([B)V

    return-object v0

    .line 529
    :sswitch_5b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidKeException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidKeException;-><init>([B)V

    return-object v0

    .line 527
    :sswitch_63
    new-instance v0, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/NoValidProposalChosenException;-><init>([B)V

    return-object v0

    .line 525
    :sswitch_6b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidMessageIdException;-><init>([B)V

    return-object v0

    .line 523
    :sswitch_73
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>([B)V

    return-object v0

    .line 521
    :sswitch_7b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidMajorVersionException;-><init>([B)V

    return-object v0

    .line 519
    :sswitch_83
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidIkeSpiException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidIkeSpiException;-><init>([B)V

    return-object v0

    .line 517
    :sswitch_8b
    new-instance v0, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;-><init>([B)V

    return-object v0

    .line 549
    :goto_93
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-direct {v0, v1, v2}, Landroid/net/ipsec/ike/exceptions/UnrecognizedIkeProtocolException;-><init>(I[B)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9a} :catch_9b

    return-object v0

    .line 551
    :catch_9b
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 508
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support building IkeException for a non-error notificaton. Notify type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_8b
        0x4 -> :sswitch_83
        0x5 -> :sswitch_7b
        0x7 -> :sswitch_73
        0x9 -> :sswitch_6b
        0xe -> :sswitch_63
        0x11 -> :sswitch_5b
        0x18 -> :sswitch_53
        0x22 -> :sswitch_4b
        0x23 -> :sswitch_43
        0x24 -> :sswitch_3b
        0x25 -> :sswitch_33
        0x26 -> :sswitch_2b
        0x27 -> :sswitch_21
        0x2b -> :sswitch_19
        0x2c -> :sswitch_f
    .end sparse-switch
.end method
