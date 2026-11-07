.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist ADDRESS_FIELDS:[I

.field private static final blacklist CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PART_COLUMN_CHARSET:I = 0x1

.field private static final blacklist PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final blacklist PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final blacklist PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final blacklist PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final blacklist PART_COLUMN_FILENAME:I = 0x6

.field private static final blacklist PART_COLUMN_ID:I = 0x0

.field private static final blacklist PART_COLUMN_NAME:I = 0x7

.field private static final blacklist PART_COLUMN_TEXT:I = 0x8

.field private static final greylist PART_PROJECTION:[Ljava/lang/String;

.field private static final greylist PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final blacklist PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final blacklist PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final blacklist PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final blacklist PDU_COLUMN_DATE:I = 0x15

.field private static final blacklist PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final blacklist PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final blacklist PDU_COLUMN_EXPIRY:I = 0x17

.field private static final blacklist PDU_COLUMN_ID:I = 0x0

.field private static final blacklist PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final blacklist PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final blacklist PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final blacklist PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final blacklist PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final blacklist PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final blacklist PDU_COLUMN_PRIORITY:I = 0xf

.field private static final blacklist PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final blacklist PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final blacklist PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final blacklist PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final blacklist PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final blacklist PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final blacklist PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final blacklist PDU_COLUMN_STATUS:I = 0x14

.field private static final blacklist PDU_COLUMN_SUBJECT:I = 0x4

.field private static final blacklist PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final blacklist PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final blacklist PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final blacklist PDU_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PLACEHOLDER_THREAD_ID:J = 0x7fffffffffffffffL

.field public static final blacklist PROC_STATUS_COMPLETED:I = 0x3

.field public static final blacklist PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final blacklist PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PduPersister"

.field public static final blacklist TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final blacklist TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final greylist mContentResolver:Landroid/content/ContentResolver;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mDrmManagerClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 70
    nop

    .line 100
    const/16 v0, 0x89

    const/16 v1, 0x97

    const/16 v2, 0x81

    const/16 v3, 0x82

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 107
    const-string/jumbo v26, "sub_cs"

    const-string/jumbo v27, "retr_txt_cs"

    const-string v1, "_id"

    const-string v2, "msg_box"

    const-string/jumbo v3, "thread_id"

    const-string/jumbo v4, "retr_txt"

    const-string/jumbo v5, "sub"

    const-string v6, "ct_l"

    const-string v7, "ct_t"

    const-string v8, "m_cls"

    const-string v9, "m_id"

    const-string/jumbo v10, "resp_txt"

    const-string/jumbo v11, "tr_id"

    const-string v12, "ct_cls"

    const-string v13, "d_rpt"

    const-string v14, "m_type"

    const-string/jumbo v15, "v"

    const-string/jumbo v16, "pri"

    const-string/jumbo v17, "rr"

    const-string/jumbo v18, "read_status"

    const-string/jumbo v19, "rpt_a"

    const-string/jumbo v20, "retr_st"

    const-string/jumbo v21, "st"

    const-string v22, "date"

    const-string v23, "d_tm"

    const-string v24, "exp"

    const-string v25, "m_size"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 166
    const-string v8, "name"

    const-string/jumbo v9, "text"

    const-string v1, "_id"

    const-string v2, "chset"

    const-string v3, "cd"

    const-string v4, "cid"

    const-string v5, "cl"

    const-string v6, "ct"

    const-string v7, "fn"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 209
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 215
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 219
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 275
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 281
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 287
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 298
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 299
    return-void
.end method

.method private greylist getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 364
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 365
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 367
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 1534
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1535
    :catch_7
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method private greylist getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 357
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 359
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .registers 2
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 714
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public static greylist getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_c

    .line 305
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_22

    .line 306
    :cond_c
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 307
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 308
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 311
    :cond_22
    :goto_22
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private blacklist loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .registers 11
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 496
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "charset"

    const-string/jumbo v4, "type"

    const-string v5, "address"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 496
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 501
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_94

    .line 503
    :goto_35
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 504
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 506
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 507
    .local v2, "addrType":I
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_96

    .line 521
    const-string v3, "PduPersister"

    goto :goto_74

    .line 509
    :sswitch_52
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 510
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 509
    invoke-virtual {p3, v4, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 512
    goto :goto_8a

    .line 516
    :sswitch_63
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 517
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 516
    invoke-virtual {p3, v4, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 519
    goto :goto_8a

    .line 521
    :goto_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown address type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_35 .. :try_end_8a} :catchall_8f

    .line 525
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "addrType":I
    :cond_8a
    :goto_8a
    goto :goto_35

    .line 527
    :cond_8b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 528
    goto :goto_94

    .line 527
    :catchall_8f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 528
    throw v0

    .line 530
    :cond_94
    :goto_94
    return-void

    nop

    :sswitch_data_96
    .sparse-switch
        0x81 -> :sswitch_63
        0x82 -> :sswitch_63
        0x89 -> :sswitch_52
        0x97 -> :sswitch_63
    .end sparse-switch
.end method

.method private blacklist loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .registers 30
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 371
    move-object/from16 v1, p0

    const-string v2, "Failed to close stream"

    const-string v3, "PduPersister"

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/part"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 371
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 375
    .local v4, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 378
    .local v5, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_24e

    :try_start_35
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_24e

    .line 385
    :cond_3d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v6, v0

    .line 386
    .local v6, "partCount":I
    const/4 v0, 0x0

    .line 387
    .local v0, "partIdx":I
    new-array v7, v6, [Lcom/google/android/mms/pdu/PduPart;
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_247

    move-object v5, v7

    move v7, v0

    .line 388
    .end local v0    # "partIdx":I
    .local v7, "partIdx":I
    :goto_47
    :try_start_47
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_237

    .line 389
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    move-object v8, v0

    .line 390
    .local v8, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_243

    move-object v9, v0

    .line 392
    .local v9, "charset":Ljava/lang/Integer;
    if-eqz v9, :cond_62

    .line 393
    :try_start_5b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_247

    .line 396
    :cond_62
    const/4 v0, 0x2

    :try_start_63
    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_243

    move-object v10, v0

    .line 398
    .local v10, "contentDisposition":[B
    if-eqz v10, :cond_6d

    .line 399
    :try_start_6a
    invoke-virtual {v8, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_247

    .line 402
    :cond_6d
    const/4 v0, 0x3

    :try_start_6e
    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_243

    move-object v13, v0

    .line 404
    .local v13, "contentId":[B
    if-eqz v13, :cond_78

    .line 405
    :try_start_75
    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_247

    .line 408
    :cond_78
    const/4 v0, 0x4

    :try_start_79
    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_243

    move-object v14, v0

    .line 410
    .local v14, "contentLocation":[B
    if-eqz v14, :cond_83

    .line 411
    :try_start_80
    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_247

    .line 414
    :cond_83
    const/4 v0, 0x5

    :try_start_84
    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v15, v0

    .line 416
    .local v15, "contentType":[B
    if-eqz v15, :cond_225

    .line 417
    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 422
    const/4 v0, 0x6

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0
    :try_end_93
    .catchall {:try_start_84 .. :try_end_93} :catchall_243

    move-object/from16 v16, v0

    .line 424
    .local v16, "fileName":[B
    if-eqz v16, :cond_9f

    .line 425
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .end local v16    # "fileName":[B
    .local v5, "fileName":[B
    .local v17, "parts":[Lcom/google/android/mms/pdu/PduPart;
    :try_start_9b
    invoke-virtual {v8, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    goto :goto_a3

    .line 424
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .local v5, "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v16    # "fileName":[B
    :cond_9f
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 428
    .end local v16    # "fileName":[B
    .local v5, "fileName":[B
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :goto_a3
    const/4 v0, 0x7

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 430
    .local v16, "name":[B
    if-eqz v16, :cond_b4

    .line 431
    move-object/from16 v18, v5

    move-object/from16 v5, v16

    .end local v16    # "name":[B
    .local v5, "name":[B
    .local v18, "fileName":[B
    invoke-virtual {v8, v5}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    goto :goto_b8

    .line 430
    .end local v18    # "fileName":[B
    .local v5, "fileName":[B
    .restart local v16    # "name":[B
    :cond_b4
    move-object/from16 v18, v5

    move-object/from16 v5, v16

    .line 435
    .end local v16    # "name":[B
    .local v5, "name":[B
    .restart local v18    # "fileName":[B
    :goto_b8
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 436
    .local v21, "partId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    .end local v5    # "name":[B
    .local v19, "name":[B
    const-string v5, "content://mms/part/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v20, v6

    move-wide/from16 v5, v21

    .end local v6    # "partCount":I
    .end local v21    # "partId":J
    .local v5, "partId":J
    .local v20, "partCount":I
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v21, v0

    .line 437
    .local v21, "partURI":Landroid/net/Uri;
    move-wide/from16 v22, v5

    move-object/from16 v5, v21

    .end local v21    # "partURI":Landroid/net/Uri;
    .local v5, "partURI":Landroid/net/Uri;
    .local v22, "partId":J
    invoke-virtual {v8, v5}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 441
    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 442
    .local v6, "type":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_212

    .line 443
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20b

    .line 444
    invoke-static {v6}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_204

    .line 445
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v21, v0

    .line 446
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x0

    .line 451
    .local v24, "is":Ljava/io/InputStream;
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d9

    const-string v0, "application/smil"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d9

    const-string/jumbo v0, "text/html"

    .line 452
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11d
    .catchall {:try_start_9b .. :try_end_11d} :catchall_233

    if-eqz v0, :cond_129

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    goto/16 :goto_1e1

    .line 460
    :cond_129
    :try_start_129
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12f} :catch_1b4
    .catchall {:try_start_129 .. :try_end_12f} :catchall_1a9

    move-object/from16 v24, v0

    .line 462
    const/16 v0, 0x100

    :try_start_133
    new-array v0, v0, [B
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_135} :catch_19d
    .catchall {:try_start_133 .. :try_end_135} :catchall_190

    .line 463
    .local v0, "buffer":[B
    move-object/from16 v1, v24

    .end local v24    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    :try_start_137
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v24
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13b} :catch_184
    .catchall {:try_start_137 .. :try_end_13b} :catchall_177

    move-object/from16 v25, v5

    move/from16 v5, v24

    .line 464
    .local v5, "len":I
    .local v25, "partURI":Landroid/net/Uri;
    :goto_13f
    if-ltz v5, :cond_162

    .line 465
    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .local v26, "type":Ljava/lang/String;
    :try_start_148
    invoke-virtual {v6, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 466
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14f} :catch_15d
    .catchall {:try_start_148 .. :try_end_14f} :catchall_157

    move v5, v7

    move/from16 v7, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v26

    goto :goto_13f

    .line 473
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catchall_157
    move-exception v0

    move-object/from16 v24, v1

    move-object v1, v0

    goto/16 :goto_1cd

    .line 468
    :catch_15d
    move-exception v0

    move-object/from16 v24, v1

    goto/16 :goto_1bd

    .line 464
    .end local v26    # "type":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v5    # "len":I
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    :cond_162
    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    .line 473
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v26    # "type":Ljava/lang/String;
    if-eqz v1, :cond_173

    .line 475
    :try_start_16a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_16e
    .catchall {:try_start_16a .. :try_end_16d} :catchall_233

    .line 478
    goto :goto_173

    .line 476
    :catch_16e
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    :try_start_16f
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_233

    .line 478
    nop

    .line 482
    .end local v0    # "e":Ljava/io/IOException;
    :cond_173
    :goto_173
    move-object/from16 v24, v1

    goto/16 :goto_1fc

    .line 473
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .local v5, "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_177
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    move-object/from16 v24, v1

    move-object v1, v0

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_1cd

    .line 468
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_184
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    move-object/from16 v24, v1

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_1bd

    .line 473
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catchall_190
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    move/from16 v21, v7

    move-object v1, v0

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .end local v24    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_1cd

    .line 468
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catch_19d
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move-object/from16 v1, v24

    move/from16 v21, v7

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .end local v24    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_1bd

    .line 473
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catchall_1a9
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    move-object v1, v0

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_1cd

    .line 468
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1b4
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    .line 469
    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .restart local v0    # "e":Ljava/io/IOException;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    :goto_1bd
    :try_start_1bd
    const-string v1, "Failed to load part data"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 471
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v9    # "charset":Ljava/lang/Integer;
    .end local v10    # "contentDisposition":[B
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v18    # "fileName":[B
    .end local v19    # "name":[B
    .end local v20    # "partCount":I
    .end local v21    # "partIdx":I
    .end local v22    # "partId":J
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v1
    :try_end_1cb
    .catchall {:try_start_1bd .. :try_end_1cb} :catchall_1cb

    .line 473
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v9    # "charset":Ljava/lang/Integer;
    .restart local v10    # "contentDisposition":[B
    .restart local v13    # "contentId":[B
    .restart local v14    # "contentLocation":[B
    .restart local v15    # "contentType":[B
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v18    # "fileName":[B
    .restart local v19    # "name":[B
    .restart local v20    # "partCount":I
    .restart local v21    # "partIdx":I
    .restart local v22    # "partId":J
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :catchall_1cb
    move-exception v0

    move-object v1, v0

    :goto_1cd
    if-eqz v24, :cond_1d7

    .line 475
    :try_start_1cf
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1d3
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_233

    .line 478
    goto :goto_1d7

    .line 476
    :catch_1d3
    move-exception v0

    .line 477
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_1d4
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1d7
    :goto_1d7
    nop

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v1

    .line 451
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .local v21, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :cond_1d9
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    .line 453
    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v7    # "partIdx":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    :goto_1e1
    const/16 v0, 0x8

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v0, :cond_1ed

    move-object v5, v0

    goto :goto_1ef

    :cond_1ed
    const-string v5, ""

    :goto_1ef
    invoke-direct {v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    .line 456
    .local v1, "blob":[B
    array-length v5, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 457
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "blob":[B
    nop

    .line 482
    :goto_1fc
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_218

    .line 444
    .end local v21    # "partIdx":I
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    :cond_204
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v21, v7

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "partIdx":I
    .restart local v21    # "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_218

    .line 443
    .end local v21    # "partIdx":I
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    :cond_20b
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v21, v7

    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "partIdx":I
    .restart local v21    # "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    goto :goto_218

    .line 442
    .end local v21    # "partIdx":I
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    .restart local v5    # "partURI":Landroid/net/Uri;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "partIdx":I
    :cond_212
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v21, v7

    .line 484
    .end local v5    # "partURI":Landroid/net/Uri;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "partIdx":I
    .restart local v21    # "partIdx":I
    .restart local v25    # "partURI":Landroid/net/Uri;
    .restart local v26    # "type":Ljava/lang/String;
    :goto_218
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "partIdx":I
    .local v0, "partIdx":I
    aput-object v8, v17, v21

    .line 485
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v9    # "charset":Ljava/lang/Integer;
    .end local v10    # "contentDisposition":[B
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v18    # "fileName":[B
    .end local v19    # "name":[B
    .end local v22    # "partId":J
    .end local v25    # "partURI":Landroid/net/Uri;
    .end local v26    # "type":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v5, v17

    move/from16 v6, v20

    move v7, v0

    goto/16 :goto_47

    .line 419
    .end local v0    # "partIdx":I
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v20    # "partCount":I
    .local v5, "parts":[Lcom/google/android/mms/pdu/PduPart;
    .local v6, "partCount":I
    .restart local v7    # "partIdx":I
    .restart local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v9    # "charset":Ljava/lang/Integer;
    .restart local v10    # "contentDisposition":[B
    .restart local v13    # "contentId":[B
    .restart local v14    # "contentLocation":[B
    .restart local v15    # "contentType":[B
    :cond_225
    move-object/from16 v17, v5

    move/from16 v20, v6

    move/from16 v21, v7

    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v6    # "partCount":I
    .end local v7    # "partIdx":I
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v20    # "partCount":I
    .restart local v21    # "partIdx":I
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Content-Type must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v0
    :try_end_233
    .catchall {:try_start_1d4 .. :try_end_233} :catchall_233

    .line 487
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v9    # "charset":Ljava/lang/Integer;
    .end local v10    # "contentDisposition":[B
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v20    # "partCount":I
    .end local v21    # "partIdx":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :catchall_233
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_248

    .line 388
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v6    # "partCount":I
    .restart local v7    # "partIdx":I
    :cond_237
    move-object/from16 v17, v5

    move/from16 v20, v6

    move/from16 v21, v7

    .line 487
    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v6    # "partCount":I
    .end local v7    # "partIdx":I
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_242

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_242
    return-object v17

    .line 487
    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_243
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    goto :goto_248

    .end local v17    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    :catchall_247
    move-exception v0

    :goto_248
    if-eqz v4, :cond_24d

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_24d
    throw v0

    .line 382
    :cond_24e
    :goto_24e
    nop

    .line 487
    if-eqz v4, :cond_254

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_254
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .registers 15
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .line 1438
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1439
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_d

    .line 1440
    return-void

    .line 1444
    :cond_d
    if-eqz p4, :cond_14

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1445
    return-void

    .line 1447
    :cond_14
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 1448
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1449
    .local v2, "myPhoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p4, :cond_51

    .line 1451
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1452
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1453
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "myNumber":Ljava/lang/String;
    if-eqz v5, :cond_50

    .line 1455
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1457
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "myNumber":Ljava/lang/String;
    :cond_50
    goto :goto_29

    .line 1460
    :cond_51
    array-length v3, v0

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_8d

    aget-object v5, v0, v4

    .line 1461
    .local v5, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_8a

    .line 1462
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1463
    .local v6, "number":Ljava/lang/String;
    if-eqz p4, :cond_81

    .line 1464
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1465
    .local v8, "myNumber":Ljava/lang/String;
    invoke-static {v6, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1466
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1468
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1469
    goto :goto_80

    .line 1471
    .end local v8    # "myNumber":Ljava/lang/String;
    :cond_7f
    goto :goto_63

    :cond_80
    :goto_80
    goto :goto_8a

    .line 1472
    :cond_81
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 1473
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6    # "number":Ljava/lang/String;
    :cond_8a
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 1477
    :cond_8d
    return-void
.end method

.method private greylist persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 12
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 699
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 701
    .local v0, "values":Landroid/content/ContentValues;
    array-length v1, p4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_5a

    aget-object v3, p4, v2

    .line 702
    .local v3, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 703
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string/jumbo v4, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 708
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 701
    .end local v3    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 710
    :cond_5a
    return-void
.end method

.method private blacklist persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 29
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 801
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "content://mms/resetFilePerm/"

    const-string v6, "IOException while closing: "

    const-string v7, "PduPersister"

    const/4 v8, 0x0

    .line 802
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 803
    .local v9, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 804
    .local v10, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v11, 0x0

    .line 805
    .local v11, "dataUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 808
    .local v12, "path":Ljava/lang/String;
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    move-object v14, v0

    .line 809
    .local v14, "data":[B
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26c

    const-string v0, "application/smil"

    .line 810
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_269

    const-string/jumbo v0, "text/html"

    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object/from16 v17, v11

    goto/16 :goto_26e

    .line 821
    :cond_36
    invoke-static {v3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_3a} :catch_34b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3a} :catch_33d
    .catchall {:try_start_13 .. :try_end_3a} :catchall_338

    move v15, v0

    .line 822
    .local v15, "isDrm":Z
    if-eqz v15, :cond_138

    .line 823
    if-eqz v2, :cond_10d

    .line 824
    :try_start_3f
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v13, "r"

    .line 825
    invoke-virtual {v0, v2, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_ef
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_48} :catch_34b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_33d
    .catchall {:try_start_3f .. :try_end_48} :catchall_338

    move-object v13, v0

    .line 826
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_49
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v17
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_de

    const-wide/16 v19, 0x0

    cmp-long v0, v17, v19

    if-lez v0, :cond_d6

    .line 831
    if-eqz v13, :cond_5e

    :try_start_55
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_266
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_263
    .catchall {:try_start_55 .. :try_end_58} :catchall_359

    goto :goto_5e

    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_59
    move-exception v0

    move-object/from16 v17, v11

    goto/16 :goto_f2

    .line 901
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5e
    :goto_5e
    if-eqz v8, :cond_7e

    .line 903
    :try_start_60
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_66

    .line 906
    move-object/from16 v17, v11

    goto :goto_80

    .line 904
    :catch_66
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    move-object/from16 v17, v11

    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v17, "dataUri":Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 901
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_7e
    move-object/from16 v17, v11

    .line 908
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :goto_80
    if-eqz v9, :cond_9b

    .line 910
    :try_start_82
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 913
    goto :goto_9b

    .line 911
    :catch_86
    move-exception v0

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9b
    :goto_9b
    if-eqz v10, :cond_d5

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v21, v6

    .line 922
    .local v21, "values":Landroid/content/ContentValues;
    iget-object v6, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 922
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-static/range {v18 .. v23}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 829
    .end local v0    # "f":Ljava/io/File;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_d5
    return-void

    .line 831
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_d6
    move-object/from16 v17, v11

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    if-eqz v13, :cond_dd

    :try_start_da
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_da .. :try_end_dd} :catch_334
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_330
    .catchall {:try_start_da .. :try_end_dd} :catchall_32b

    .line 833
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_dd
    goto :goto_10f

    .line 824
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_de
    move-exception v0

    move-object/from16 v17, v11

    move-object v11, v0

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    if-eqz v13, :cond_ec

    :try_start_e4
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v0

    :try_start_e9
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v17    # "dataUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_ec
    :goto_ec
    throw v11
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ed} :catch_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_e9 .. :try_end_ed} :catch_334
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ed} :catch_330
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_32b

    .line 831
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    .restart local v17    # "dataUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_ed
    move-exception v0

    goto :goto_f2

    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catch_ef
    move-exception v0

    move-object/from16 v17, v11

    .line 832
    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :goto_f2
    :try_start_f2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t get file info for: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10f

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_10d
    move-object/from16 v17, v11

    .line 836
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :goto_10f
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v0

    move-object v10, v0

    .line 837
    if-eqz v10, :cond_119

    goto :goto_13a

    .line 838
    :cond_119
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Mimetype "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " can not be converted."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v17    # "dataUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v0

    .line 822
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_138
    move-object/from16 v17, v11

    .line 844
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :goto_13a
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_140
    .catch Ljava/io/FileNotFoundException; {:try_start_f2 .. :try_end_140} :catch_334
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_140} :catch_330
    .catchall {:try_start_f2 .. :try_end_140} :catchall_32b

    move-object v8, v0

    .line 845
    const-string v0, "Error converting drm data."

    if-nez v14, :cond_246

    .line 846
    :try_start_145
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11
    :try_end_149
    .catch Ljava/io/FileNotFoundException; {:try_start_145 .. :try_end_149} :catch_334
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_149} :catch_330
    .catchall {:try_start_145 .. :try_end_149} :catchall_32b

    .line 847
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    if-eqz v11, :cond_1d0

    :try_start_14b
    invoke-virtual {v11, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_153

    goto/16 :goto_1d0

    .line 853
    :cond_153
    if-eqz v4, :cond_162

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_162

    .line 854
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/InputStream;

    move-object v9, v13

    .line 856
    :cond_162
    if-nez v9, :cond_16b

    .line 857
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v13, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13
    :try_end_16a
    .catch Ljava/io/FileNotFoundException; {:try_start_14b .. :try_end_16a} :catch_266
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_16a} :catch_263
    .catchall {:try_start_14b .. :try_end_16a} :catchall_359

    move-object v9, v13

    .line 864
    :cond_16b
    const/16 v13, 0x2000

    :try_start_16d
    new-array v13, v13, [B

    .line 865
    .local v13, "buffer":[B
    const/16 v17, 0x0

    .local v17, "len":I
    :goto_171
    invoke-virtual {v9, v13}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_175
    .catch Ljava/io/FileNotFoundException; {:try_start_16d .. :try_end_175} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_175} :catch_1c6
    .catchall {:try_start_16d .. :try_end_175} :catchall_1c0

    move/from16 v18, v3

    .end local v17    # "len":I
    .local v18, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1ba

    .line 866
    if-nez v15, :cond_187

    .line 867
    move/from16 v3, v18

    const/4 v4, 0x0

    .end local v18    # "len":I
    .local v3, "len":I
    :try_start_17f
    invoke-virtual {v8, v13, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_182
    .catch Ljava/io/FileNotFoundException; {:try_start_17f .. :try_end_182} :catch_266
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_263
    .catchall {:try_start_17f .. :try_end_182} :catchall_359

    move/from16 v17, v3

    move-object/from16 v18, v9

    goto :goto_199

    .line 869
    .end local v3    # "len":I
    .restart local v18    # "len":I
    :cond_187
    move/from16 v3, v18

    .end local v18    # "len":I
    .restart local v3    # "len":I
    :try_start_189
    invoke-virtual {v10, v13, v3}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v4

    .line 870
    .local v4, "convertedData":[B
    if-eqz v4, :cond_1a0

    .line 871
    move/from16 v17, v3

    .end local v3    # "len":I
    .restart local v17    # "len":I
    array-length v3, v4
    :try_end_192
    .catch Ljava/io/FileNotFoundException; {:try_start_189 .. :try_end_192} :catch_1cb
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_192} :catch_1c6
    .catchall {:try_start_189 .. :try_end_192} :catchall_1c0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v9    # "is":Ljava/io/InputStream;
    .local v18, "is":Ljava/io/InputStream;
    :try_start_195
    invoke-virtual {v8, v4, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 875
    .end local v4    # "convertedData":[B
    nop

    .line 865
    .end local v17    # "len":I
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_199
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, v18

    .end local v3    # "len":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "len":I
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_171

    .line 873
    .end local v17    # "len":I
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "convertedData":[B
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_1a0
    move/from16 v17, v3

    move-object/from16 v18, v9

    .end local v3    # "len":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "len":I
    .restart local v18    # "is":Ljava/io/InputStream;
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_1aa
    .catch Ljava/io/FileNotFoundException; {:try_start_195 .. :try_end_1aa} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_1aa} :catch_1b0
    .catchall {:try_start_195 .. :try_end_1aa} :catchall_1aa

    .line 901
    .end local v4    # "convertedData":[B
    .end local v13    # "buffer":[B
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v17    # "len":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_1aa
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v18

    goto/16 :goto_35b

    .line 897
    :catch_1b0
    move-exception v0

    move-object/from16 v9, v18

    goto/16 :goto_340

    .line 894
    :catch_1b5
    move-exception v0

    move-object/from16 v9, v18

    goto/16 :goto_34e

    .line 865
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v13    # "buffer":[B
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    .local v18, "len":I
    :cond_1ba
    move/from16 v17, v18

    move-object/from16 v18, v9

    .line 877
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v13    # "buffer":[B
    .local v18, "is":Ljava/io/InputStream;
    goto/16 :goto_29f

    .line 901
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1c0
    move-exception v0

    move-object/from16 v18, v9

    move-object v3, v0

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto/16 :goto_35b

    .line 897
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_1c6
    move-exception v0

    move-object/from16 v18, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto/16 :goto_340

    .line 894
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_1cb
    move-exception v0

    move-object/from16 v18, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto/16 :goto_34e

    .line 848
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    :cond_1d0
    :goto_1d0
    :try_start_1d0
    const-string v0, "Can\'t find data for this part."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d5
    .catch Ljava/io/FileNotFoundException; {:try_start_1d0 .. :try_end_1d5} :catch_266
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d5} :catch_263
    .catchall {:try_start_1d0 .. :try_end_1d5} :catchall_359

    .line 901
    if-eqz v8, :cond_1f0

    .line 903
    :try_start_1d7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1db

    .line 906
    goto :goto_1f0

    .line 904
    :catch_1db
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f0
    :goto_1f0
    if-eqz v9, :cond_20b

    .line 910
    :try_start_1f2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f5} :catch_1f6

    .line 913
    goto :goto_20b

    .line 911
    :catch_1f6
    move-exception v0

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20b
    :goto_20b
    if-eqz v10, :cond_245

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v19, v3

    .line 922
    .local v19, "values":Landroid/content/ContentValues;
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 922
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 849
    .end local v0    # "f":Ljava/io/File;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_245
    return-void

    .line 881
    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v17, "dataUri":Landroid/net/Uri;
    :cond_246
    if-nez v15, :cond_24e

    .line 882
    :try_start_248
    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_24b
    .catch Ljava/io/FileNotFoundException; {:try_start_248 .. :try_end_24b} :catch_334
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_24b} :catch_330
    .catchall {:try_start_248 .. :try_end_24b} :catchall_32b

    move-object/from16 v11, v17

    goto :goto_29f

    .line 884
    :cond_24e
    move-object/from16 v11, p2

    .line 885
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :try_start_250
    array-length v3, v14

    invoke-virtual {v10, v14, v3}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v3

    .line 886
    .local v3, "convertedData":[B
    if-eqz v3, :cond_25d

    .line 887
    array-length v0, v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_29f

    .line 889
    :cond_25d
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v4
    :try_end_263
    .catch Ljava/io/FileNotFoundException; {:try_start_250 .. :try_end_263} :catch_266
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_263} :catch_263
    .catchall {:try_start_250 .. :try_end_263} :catchall_359

    .line 897
    .end local v3    # "convertedData":[B
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_263
    move-exception v0

    goto/16 :goto_340

    .line 894
    :catch_266
    move-exception v0

    goto/16 :goto_34e

    .line 810
    .restart local v14    # "data":[B
    :cond_269
    move-object/from16 v17, v11

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    goto :goto_26e

    .line 809
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_26c
    move-object/from16 v17, v11

    .line 812
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :goto_26e
    :try_start_26e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .local v0, "cv":Landroid/content/ContentValues;
    if-nez v14, :cond_284

    .line 814
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v14, v3

    .line 816
    :cond_284
    const-string/jumbo v3, "text"

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v14}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_29a
    .catch Ljava/io/FileNotFoundException; {:try_start_26e .. :try_end_29a} :catch_334
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_29a} :catch_330
    .catchall {:try_start_26e .. :try_end_29a} :catchall_32b

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30d

    .line 820
    .end local v0    # "cv":Landroid/content/ContentValues;
    move-object/from16 v11, v17

    .line 901
    .end local v14    # "data":[B
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :goto_29f
    if-eqz v8, :cond_2ba

    .line 903
    :try_start_2a1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2a4} :catch_2a5

    .line 906
    goto :goto_2ba

    .line 904
    :catch_2a5
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2ba
    :goto_2ba
    if-eqz v9, :cond_2d5

    .line 910
    :try_start_2bc
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2bf
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2bf} :catch_2c0

    .line 913
    goto :goto_2d5

    .line 911
    :catch_2c0
    move-exception v0

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2d5
    :goto_2d5
    if-eqz v10, :cond_30c

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v16, v3

    .line 922
    .local v16, "values":Landroid/content/ContentValues;
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 922
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 925
    .end local v0    # "f":Ljava/io/File;
    .end local v16    # "values":Landroid/content/ContentValues;
    nop

    .line 927
    :cond_30c
    return-void

    .line 818
    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v0, "cv":Landroid/content/ContentValues;
    .restart local v14    # "data":[B
    .restart local v17    # "dataUri":Landroid/net/Uri;
    :cond_30d
    :try_start_30d
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to update "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v17    # "dataUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_32b
    .catch Ljava/io/FileNotFoundException; {:try_start_30d .. :try_end_32b} :catch_334
    .catch Ljava/io/IOException; {:try_start_30d .. :try_end_32b} :catch_330
    .catchall {:try_start_30d .. :try_end_32b} :catchall_32b

    .line 901
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v14    # "data":[B
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_32b
    move-exception v0

    move-object v3, v0

    move-object/from16 v11, v17

    goto :goto_35b

    .line 897
    :catch_330
    move-exception v0

    move-object/from16 v11, v17

    goto :goto_340

    .line 894
    :catch_334
    move-exception v0

    move-object/from16 v11, v17

    goto :goto_34e

    .line 901
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catchall_338
    move-exception v0

    move-object/from16 v17, v11

    move-object v3, v0

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "dataUri":Landroid/net/Uri;
    goto :goto_35b

    .line 897
    .end local v17    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catch_33d
    move-exception v0

    move-object/from16 v17, v11

    .line 898
    .local v0, "e":Ljava/io/IOException;
    :goto_340
    :try_start_340
    const-string v3, "Failed to read/write data."

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3

    .line 894
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_34b
    move-exception v0

    move-object/from16 v17, v11

    .line 895
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_34e
    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_359
    .catchall {:try_start_340 .. :try_end_359} :catchall_359

    .line 901
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_359
    move-exception v0

    move-object v3, v0

    :goto_35b
    if-eqz v8, :cond_376

    .line 903
    :try_start_35d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_360
    .catch Ljava/io/IOException; {:try_start_35d .. :try_end_360} :catch_361

    .line 906
    goto :goto_376

    .line 904
    :catch_361
    move-exception v0

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_376
    :goto_376
    if-eqz v9, :cond_391

    .line 910
    :try_start_378
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_37b
    .catch Ljava/io/IOException; {:try_start_378 .. :try_end_37b} :catch_37c

    .line 913
    goto :goto_391

    .line 911
    :catch_37c
    move-exception v0

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_391
    :goto_391
    if-eqz v10, :cond_3c7

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v16, v4

    .line 922
    .restart local v16    # "values":Landroid/content/ContentValues;
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 922
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    .end local v0    # "f":Ljava/io/File;
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_3c7
    throw v3
.end method

.method private blacklist setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 10
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 317
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 319
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 321
    .local v2, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 322
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 323
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 325
    .end local v1    # "charsetColumnIndex":I
    .end local v2    # "charset":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2c
    return-void
.end method

.method private blacklist setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 349
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 350
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 352
    .end local v0    # "l":J
    :cond_d
    return-void
.end method

.method private blacklist setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 340
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 341
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 343
    .end local v0    # "b":I
    :cond_d
    return-void
.end method

.method private blacklist setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 332
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 334
    :cond_d
    return-void
.end method

.method public static greylist toIsoString([B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B

    .line 1520
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 1521
    :catch_8
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1524
    const-string v1, ""

    return-object v1
.end method

.method private greylist updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 10
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 933
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 937
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 938
    return-void
.end method

.method private blacklist updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1055
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    move-object v5, v0

    .line 1057
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 1058
    .local v0, "charset":I
    if-eqz v0, :cond_16

    .line 1059
    const-string v1, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    :cond_16
    const/4 v1, 0x0

    .line 1063
    .local v1, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    if-eqz v2, :cond_b6

    .line 1064
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 1065
    const-string v2, "ct"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 1071
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1072
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "fn"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3e
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    if-eqz v2, :cond_52

    .line 1076
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1077
    .local v2, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v2    # "name":Ljava/lang/String;
    :cond_52
    const/4 v2, 0x0

    .line 1081
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    if-eqz v3, :cond_69

    .line 1082
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1083
    const-string v3, "cd"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_69
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 1087
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1088
    const-string v3, "cid"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_7f
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    if-eqz v3, :cond_97

    .line 1092
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1093
    const-string v3, "cl"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_98

    .line 1091
    :cond_97
    move-object v8, v2

    .line 1096
    .end local v2    # "value":Ljava/lang/Object;
    .local v8, "value":Ljava/lang/Object;
    :goto_98
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v4, "uri":Landroid/net/Uri;
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object p1

    if-nez p1, :cond_b2

    .line 1102
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    .line 1103
    :cond_b2
    invoke-direct {p0, p2, v4, v1, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1105
    :cond_b5
    return-void

    .line 1067
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "value":Ljava/lang/Object;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_b6
    move-object v4, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v4    # "uri":Landroid/net/Uri;
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string v2, "MIME type of the part must be set."

    invoke-direct {p1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist getPendingMessages(J)Landroid/database/Cursor;
    .registers 13
    .param p1, "dueTime"    # J

    .line 1556
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1557
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "protocol"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1559
    const-string v7, "err_type < ? AND due_time <= ?"

    .line 1562
    .local v7, "selection":Ljava/lang/String;
    nop

    .line 1563
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1564
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v8

    .line 1567
    .local v8, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1568
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1567
    const/4 v6, 0x0

    const-string v9, "due_time"

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public greylist load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 541
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    const/4 v9, 0x0

    .line 542
    .local v9, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v2, 0x0

    .line 543
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/4 v10, 0x0

    .line 544
    .local v10, "msgBox":I
    const-wide/16 v11, -0x1

    .line 546
    .local v11, "threadId":J
    const/4 v13, 0x0

    :try_start_a
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_257

    .line 547
    :try_start_d
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v4}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_254

    if-eqz v0, :cond_55

    .line 552
    :try_start_15
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1b
    .catchall {:try_start_15 .. :try_end_1a} :catchall_254

    .line 555
    goto :goto_23

    .line 553
    :catch_1b
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1c
    const-string v5, "PduPersister"

    const-string v6, "load: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_23
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v4}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v2, v0

    .line 557
    if-eqz v2, :cond_53

    .line 558
    invoke-virtual {v2}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_254

    .line 682
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 683
    if-eqz v9, :cond_44

    .line 684
    nop

    .line 686
    :try_start_39
    new-instance v3, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v2, v3

    .line 687
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    :cond_44
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, v4, v13}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v5

    .line 558
    return-object v0

    .line 691
    :catchall_50
    move-exception v0

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_50

    throw v0

    .line 557
    :cond_53
    move-object v14, v2

    goto :goto_56

    .line 547
    :cond_55
    move-object v14, v2

    .line 563
    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v14, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_56
    :try_start_56
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v15, 0x1

    invoke-virtual {v0, v4, v15}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 564
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_251

    .line 566
    :try_start_5d
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 568
    .local v2, "c":Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move-object v3, v0

    .line 570
    .local v3, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_24e

    .line 573
    .local v5, "msgId":J
    if-eqz v2, :cond_22d

    :try_start_77
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v15, :cond_22d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 577
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v10, v0

    .line 578
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-wide v11, v7

    .line 580
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 581
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_98
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_be

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 582
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 583
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 582
    invoke-direct {v1, v2, v15, v3, v13}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 584
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    goto :goto_98

    .line 586
    :cond_be
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 587
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 588
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 589
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 588
    invoke-direct {v1, v2, v13, v3, v15}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 590
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_c8

    .line 592
    :cond_ed
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 593
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 594
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 595
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 594
    invoke-direct {v1, v2, v13, v3, v15}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 596
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_f7

    .line 598
    :cond_11c
    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 599
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_126
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 600
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 601
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 600
    invoke-direct {v1, v2, v13, v3, v15}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_14a
    .catchall {:try_start_77 .. :try_end_14a} :catchall_246

    .line 602
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_126

    .line 604
    :cond_14b
    if-eqz v2, :cond_150

    .line 605
    :try_start_14d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_150
    const-wide/16 v15, -0x1

    cmp-long v0, v5, v15

    if-eqz v0, :cond_225

    .line 615
    invoke-direct {v1, v5, v6, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 617
    const/16 v0, 0x8c

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 618
    .local v0, "msgType":I
    new-instance v8, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 622
    .local v8, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v13, 0x84

    if-eq v0, v13, :cond_170

    const/16 v13, 0x80

    if-ne v0, v13, :cond_16d

    goto :goto_170

    :cond_16d
    move/from16 v17, v0

    goto :goto_18e

    .line 624
    :cond_170
    :goto_170
    invoke-direct {v1, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v13

    .line 625
    .local v13, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v13, :cond_18c

    .line 626
    array-length v15, v13

    .line 627
    .local v15, "partsNum":I
    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "msgType":I
    :goto_17d
    if-ge v0, v15, :cond_189

    .line 628
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    aget-object v0, v13, v16

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 627
    add-int/lit8 v0, v16, 0x1

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto :goto_17d

    :cond_189
    move/from16 v16, v0

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_18e

    .line 625
    .end local v15    # "partsNum":I
    .end local v16    # "i":I
    .end local v17    # "msgType":I
    .local v0, "msgType":I
    :cond_18c
    move/from16 v17, v0

    .line 633
    .end local v0    # "msgType":I
    .end local v13    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v17    # "msgType":I
    :goto_18e
    packed-switch v17, :pswitch_data_27a

    .line 678
    new-instance v0, Lcom/google/android/mms/MmsException;

    goto/16 :goto_20a

    .line 641
    :pswitch_195
    new-instance v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 642
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 656
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_19c
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 657
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 638
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1a3
    new-instance v0, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 639
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 650
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1aa
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 651
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 644
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1b1
    new-instance v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v0, v3, v8}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 645
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 653
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1b8
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 654
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 635
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1bf
    new-instance v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 636
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    goto :goto_1e9

    .line 674
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1c6
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported PDU type: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 675
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0

    .line 647
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :pswitch_1e3
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v0, v3, v8}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1e8
    .catchall {:try_start_14d .. :try_end_1e8} :catchall_24e

    .line 648
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v2, v0

    .line 682
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v5    # "msgId":J
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "msgType":I
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_1e9
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3

    .line 683
    nop

    .line 684
    nop

    .line 686
    :try_start_1ee
    new-instance v0, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v0, v2, v10, v11, v12}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v14, v0

    .line 687
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v4, v14}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v3

    .line 692
    nop

    .line 693
    return-object v2

    .line 691
    :catchall_207
    move-exception v0

    monitor-exit v3
    :try_end_209
    .catchall {:try_start_1ee .. :try_end_209} :catchall_207

    throw v0

    .line 678
    .local v2, "c":Landroid/database/Cursor;
    .restart local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v5    # "msgId":J
    .restart local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v17    # "msgType":I
    :goto_20a
    :try_start_20a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unrecognized PDU type: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 679
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0

    .line 611
    .end local v8    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "msgType":I
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_225
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v8, "Error! ID of the message: -1."

    invoke-direct {v0, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_22d
    .catchall {:try_start_20a .. :try_end_22d} :catchall_24e

    .line 574
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_22d
    :try_start_22d
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v5    # "msgId":J
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_246
    .catchall {:try_start_22d .. :try_end_246} :catchall_246

    .line 604
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v5    # "msgId":J
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_246
    move-exception v0

    if-eqz v2, :cond_24c

    .line 605
    :try_start_249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_24c
    nop

    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_24e
    .catchall {:try_start_249 .. :try_end_24e} :catchall_24e

    .line 682
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v5    # "msgId":J
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_24e
    move-exception v0

    move-object v2, v14

    goto :goto_258

    .line 564
    :catchall_251
    move-exception v0

    move-object v2, v14

    goto :goto_255

    .end local v14    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_254
    move-exception v0

    :goto_255
    :try_start_255
    monitor-exit v3
    :try_end_256
    .catchall {:try_start_255 .. :try_end_256} :catchall_254

    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10    # "msgBox":I
    .end local v11    # "threadId":J
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_256
    throw v0
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_257

    .line 682
    .restart local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v9    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "msgBox":I
    .restart local v11    # "threadId":J
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_257
    move-exception v0

    :goto_258
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3

    .line 683
    if-eqz v9, :cond_269

    .line 684
    nop

    .line 686
    :try_start_25e
    new-instance v5, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v2, v5

    .line 687
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v5, v4, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    :cond_269
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v3
    :try_end_275
    .catchall {:try_start_25e .. :try_end_275} :catchall_276

    .line 692
    throw v0

    .line 691
    :catchall_276
    move-exception v0

    :try_start_277
    monitor-exit v3
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_276

    throw v0

    nop

    :pswitch_data_27a
    .packed-switch 0x80
        :pswitch_1e3
        :pswitch_1c6
        :pswitch_1bf
        :pswitch_1b8
        :pswitch_1b1
        :pswitch_1aa
        :pswitch_1a3
        :pswitch_19c
        :pswitch_195
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1c6
    .end packed-switch
.end method

.method public greylist move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 14
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1493
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1494
    .local v0, "msgId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 1499
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1500
    .local v2, "msgBox":Ljava/lang/Integer;
    if-eqz v2, :cond_2f

    .line 1508
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object v8, v3

    .line 1509
    .local v8, "values":Landroid/content/ContentValues;
    const-string v3, "msg_box"

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1510
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    .end local p1    # "from":Landroid/net/Uri;
    .local v7, "from":Landroid/net/Uri;
    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1511
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 1501
    .end local v7    # "from":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    .restart local p1    # "from":Landroid/net/Uri;
    :cond_2f
    move-object v7, p1

    .end local p1    # "from":Landroid/net/Uri;
    .restart local v7    # "from":Landroid/net/Uri;
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string v3, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {p1, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1495
    .end local v2    # "msgBox":Ljava/lang/Integer;
    .end local v7    # "from":Landroid/net/Uri;
    .restart local p1    # "from":Landroid/net/Uri;
    :cond_38
    move-object v7, p1

    .end local p1    # "from":Landroid/net/Uri;
    .restart local v7    # "from":Landroid/net/Uri;
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string v2, "Error! ID of the message: -1."

    invoke-direct {p1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .registers 36
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1208
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v3, :cond_32b

    .line 1211
    const-wide/16 v4, -0x1

    .line 1213
    .local v4, "msgId":J
    :try_start_a
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_10

    move-wide v4, v6

    .line 1216
    goto :goto_11

    .line 1214
    :catch_10
    move-exception v0

    .line 1217
    :goto_11
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move v10, v0

    .line 1219
    .local v10, "existingUri":Z
    if-nez v10, :cond_2e

    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    goto :goto_2e

    .line 1220
    :cond_26
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v6, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_2e
    :goto_2e
    sget-object v11, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v11

    .line 1229
    :try_start_31
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v3}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_322

    if-eqz v0, :cond_4f

    .line 1234
    :try_start_39
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_46
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    .line 1237
    goto :goto_4f

    .line 1239
    :catchall_3f
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v4, p5

    goto/16 :goto_327

    .line 1235
    :catch_46
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_47
    const-string v12, "PduPersister"

    const-string/jumbo v13, "persist1: "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_3f

    .line 1239
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v11
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_322

    .line 1240
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v3}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1242
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    .line 1243
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v11, 0x0

    .line 1244
    .local v11, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1247
    .local v12, "values":Landroid/content/ContentValues;
    sget-object v13, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    .line 1248
    .local v13, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_69
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_bd

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1249
    .local v15, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-wide/from16 v17, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1250
    .local v6, "field":I
    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1251
    .local v7, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_b4

    .line 1252
    const/16 v19, 0x0

    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1253
    .local v8, "charsetColumn":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v16

    move-wide/from16 v20, v4

    .end local v4    # "msgId":J
    .local v20, "msgId":J
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b8

    .line 1251
    .end local v8    # "charsetColumn":Ljava/lang/String;
    .end local v20    # "msgId":J
    .restart local v4    # "msgId":J
    :cond_b4
    move-wide/from16 v20, v4

    const/16 v19, 0x0

    .line 1256
    .end local v4    # "msgId":J
    .end local v6    # "field":I
    .end local v7    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v20    # "msgId":J
    :goto_b8
    move-wide/from16 v6, v17

    move-wide/from16 v4, v20

    goto :goto_69

    .line 1258
    .end local v20    # "msgId":J
    .restart local v4    # "msgId":J
    :cond_bd
    move-wide/from16 v20, v4

    move-wide/from16 v17, v6

    const/16 v19, 0x0

    .end local v4    # "msgId":J
    .restart local v20    # "msgId":J
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1259
    .end local v13    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1260
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 1261
    .local v7, "text":[B
    if-eqz v7, :cond_f6

    .line 1262
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "text":[B
    :cond_f6
    goto :goto_cd

    .line 1266
    :cond_f7
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1267
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_101
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1268
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v7

    .line 1269
    .local v7, "b":I
    if-eqz v7, :cond_12a

    .line 1270
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "b":I
    :cond_12a
    goto :goto_101

    .line 1274
    :cond_12b
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1275
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_135
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_161

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1276
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 1277
    .local v7, "l":J
    cmp-long v9, v7, v17

    if-eqz v9, :cond_160

    .line 1278
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1280
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "l":J
    :cond_160
    goto :goto_135

    .line 1282
    :cond_161
    new-instance v5, Ljava/util/HashMap;

    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 1285
    .local v5, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v7, v6

    move/from16 v8, v19

    :goto_16e
    const/16 v9, 0x89

    if-ge v8, v7, :cond_191

    aget v13, v6, v8

    .line 1286
    .local v13, "addrType":I
    const/4 v14, 0x0

    .line 1287
    .local v14, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-ne v13, v9, :cond_183

    .line 1288
    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 1289
    .local v9, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v9, :cond_182

    .line 1290
    const/4 v15, 0x1

    new-array v14, v15, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1291
    aput-object v9, v14, v19

    .line 1293
    .end local v9    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_182
    goto :goto_187

    .line 1294
    :cond_183
    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    .line 1296
    :goto_187
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .end local v13    # "addrType":I
    .end local v14    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    add-int/lit8 v8, v8, 0x1

    goto :goto_16e

    .line 1299
    :cond_191
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1300
    .local v6, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    .line 1305
    .local v7, "msgType":I
    const/16 v8, 0x82

    if-eq v7, v8, :cond_1aa

    const/16 v13, 0x84

    if-eq v7, v13, :cond_1aa

    const/16 v13, 0x80

    if-ne v7, v13, :cond_1a7

    goto :goto_1aa

    :cond_1a7
    move/from16 v14, v19

    goto :goto_1e0

    .line 1308
    :cond_1aa
    :goto_1aa
    const/16 v13, 0x97

    packed-switch v7, :pswitch_data_336

    :pswitch_1af
    move/from16 v14, v19

    goto :goto_1c6

    .line 1311
    :pswitch_1b2
    move/from16 v14, v19

    invoke-direct {v1, v9, v6, v5, v14}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1319
    if-eqz p4, :cond_1c6

    .line 1320
    const/4 v15, 0x1

    invoke-direct {v1, v13, v6, v5, v15}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1325
    invoke-direct {v1, v8, v6, v5, v15}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_1c6

    .line 1329
    :pswitch_1c1
    move/from16 v14, v19

    invoke-direct {v1, v13, v6, v5, v14}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1332
    :cond_1c6
    :goto_1c6
    const-wide/16 v8, 0x0

    .line 1333
    .local v8, "threadId":J
    if-eqz p3, :cond_1d6

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d6

    .line 1336
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v13, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v8

    .line 1338
    :cond_1d6
    const-string/jumbo v13, "thread_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1343
    .end local v8    # "threadId":J
    :goto_1e0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1346
    .local v8, "placeholderId":J
    const/4 v13, 0x1

    .line 1349
    .local v13, "textOnly":Z
    const/4 v15, 0x0

    .line 1352
    .local v15, "messageSize":I
    instance-of v14, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v14, :cond_249

    .line 1353
    move-object v14, v2

    check-cast v14, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    .line 1355
    if-eqz v11, :cond_240

    .line 1356
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v14

    .line 1357
    .local v14, "partsNum":I
    move-object/from16 v22, v0

    .end local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .local v22, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v0, 0x2

    if-le v14, v0, :cond_1fd

    .line 1362
    const/4 v13, 0x0

    .line 1364
    :cond_1fd
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1fe
    if-ge v0, v14, :cond_237

    .line 1365
    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1366
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    move-result v16

    add-int v15, v15, v16

    .line 1367
    move-object/from16 v23, v4

    move-object/from16 v4, p5

    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v23, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-virtual {v1, v2, v8, v9, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1371
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_22e

    move-object/from16 v17, v2

    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v17, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v2, "application/smil"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string/jumbo v2, "text/plain"

    .line 1373
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    .line 1374
    const/4 v13, 0x0

    goto :goto_230

    .line 1372
    .end local v17    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_22e
    move-object/from16 v17, v2

    .line 1364
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_230
    :goto_230
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, v23

    .end local v16    # "i":I
    .local v0, "i":I
    goto :goto_1fe

    .end local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_237
    move/from16 v16, v0

    move-object/from16 v23, v4

    move-object/from16 v4, p5

    .end local v0    # "i":I
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v16    # "i":I
    .restart local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move v0, v13

    move v2, v15

    goto :goto_251

    .line 1355
    .end local v14    # "partsNum":I
    .end local v16    # "i":I
    .end local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_240
    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v4, p5

    .end local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move v0, v13

    move v2, v15

    goto :goto_251

    .line 1352
    .end local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_249
    move-object/from16 v22, v0

    move-object/from16 v23, v4

    move-object/from16 v4, p5

    .end local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .restart local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    move v0, v13

    move v2, v15

    .line 1381
    .end local v13    # "textOnly":Z
    .end local v15    # "messageSize":I
    .local v0, "textOnly":Z
    .local v2, "messageSize":I
    :goto_251
    const-string/jumbo v13, "text_only"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    const-string v13, "m_size"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    if-nez v13, :cond_26c

    .line 1385
    const-string v13, "m_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    :cond_26c
    const/4 v13, 0x0

    .line 1389
    .local v13, "res":Landroid/net/Uri;
    if-eqz v10, :cond_283

    .line 1390
    move-object/from16 v15, p2

    .line 1391
    .end local v13    # "res":Landroid/net/Uri;
    .local v15, "res":Landroid/net/Uri;
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v12

    const/16 v19, 0x0

    .end local v12    # "values":Landroid/content/ContentValues;
    .local v16, "values":Landroid/content/ContentValues;
    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v13, v20

    .end local v16    # "values":Landroid/content/ContentValues;
    .restart local v12    # "values":Landroid/content/ContentValues;
    goto :goto_293

    .line 1393
    .end local v15    # "res":Landroid/net/Uri;
    .restart local v13    # "res":Landroid/net/Uri;
    :cond_283
    const/16 v19, 0x0

    iget-object v14, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v14, v15, v3, v12}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1394
    .end local v13    # "res":Landroid/net/Uri;
    .restart local v15    # "res":Landroid/net/Uri;
    if-eqz v15, :cond_315

    .line 1399
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 1402
    .end local v20    # "msgId":J
    .local v13, "msgId":J
    :goto_293
    move/from16 v16, v0

    .end local v0    # "textOnly":Z
    .local v16, "textOnly":Z
    new-instance v0, Landroid/content/ContentValues;

    move/from16 v17, v2

    const/4 v2, 0x1

    .end local v2    # "messageSize":I
    .local v17, "messageSize":I
    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1403
    .end local v12    # "values":Landroid/content/ContentValues;
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "mid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1404
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v27, v0

    .end local v0    # "values":Landroid/content/ContentValues;
    .local v27, "values":Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v2

    const-string v2, "content://mms/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/part"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 1404
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v12

    invoke-static/range {v24 .. v29}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1412
    if-nez v10, :cond_2f1

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1417
    :cond_2f1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v2, v0

    move/from16 v12, v19

    :goto_2f6
    if-ge v12, v2, :cond_314

    move-object/from16 v18, v0

    aget v0, v18, v12

    .line 1418
    .local v0, "addrType":I
    move/from16 v19, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1419
    .local v2, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_30d

    .line 1420
    invoke-direct {v1, v13, v14, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1417
    .end local v0    # "addrType":I
    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_30d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    move/from16 v2, v19

    goto :goto_2f6

    .line 1424
    :cond_314
    return-object v15

    .line 1395
    .end local v13    # "msgId":J
    .end local v16    # "textOnly":Z
    .end local v17    # "messageSize":I
    .end local v27    # "values":Landroid/content/ContentValues;
    .local v0, "textOnly":Z
    .local v2, "messageSize":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    .restart local v20    # "msgId":J
    :cond_315
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "textOnly":Z
    .end local v2    # "messageSize":I
    .restart local v16    # "textOnly":Z
    .restart local v17    # "messageSize":I
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string/jumbo v2, "persist() failed: return null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    .end local v5    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .end local v6    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "msgType":I
    .end local v8    # "placeholderId":J
    .end local v11    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v12    # "values":Landroid/content/ContentValues;
    .end local v15    # "res":Landroid/net/Uri;
    .end local v16    # "textOnly":Z
    .end local v17    # "messageSize":I
    .end local v20    # "msgId":J
    .end local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v23    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v4, "msgId":J
    :catchall_322
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v4, p5

    .end local v4    # "msgId":J
    .restart local v20    # "msgId":J
    :goto_327
    :try_start_327
    monitor-exit v11
    :try_end_328
    .catchall {:try_start_327 .. :try_end_328} :catchall_329

    throw v0

    :catchall_329
    move-exception v0

    goto :goto_327

    .line 1209
    .end local v10    # "existingUri":Z
    .end local v20    # "msgId":J
    :cond_32b
    move-object/from16 v4, p5

    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Uri may not be null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_336
    .packed-switch 0x80
        :pswitch_1c1
        :pswitch_1af
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1b2
    .end packed-switch
.end method

.method public greylist persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .registers 13
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 720
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 721
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 723
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 724
    .local v2, "charset":I
    if-eqz v2, :cond_33

    .line 725
    const-string v3, "chset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    :cond_33
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_df

    .line 732
    const-string v4, "image/jpg"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 733
    const-string v3, "image/jpeg"

    .line 736
    :cond_43
    const-string v4, "ct"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v4, "application/smil"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 739
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "seq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    :cond_5b
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 746
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 747
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, "fn"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_6f
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    if-eqz v4, :cond_83

    .line 751
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 752
    .local v4, "name":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v4    # "name":Ljava/lang/String;
    :cond_83
    const/4 v4, 0x0

    .line 756
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 757
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 758
    const-string v5, "cd"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_9a
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    if-eqz v5, :cond_b0

    .line 762
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 763
    const-string v5, "cid"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_b0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    if-eqz v5, :cond_c6

    .line 767
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 768
    const-string v5, "cl"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_c6
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 772
    .local v5, "res":Landroid/net/Uri;
    if-eqz v5, :cond_d7

    .line 776
    invoke-direct {p0, p1, v5, v3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 779
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 781
    return-object v5

    .line 773
    :cond_d7
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Failed to persist part, return null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 742
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "res":Landroid/net/Uri;
    :cond_df
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "MIME type of the part must be set."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist release()V
    .registers 5

    .line 1546
    const-string v0, "content://mms/9223372036854775807/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1547
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1548
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->release()V

    .line 1549
    return-void
.end method

.method public greylist updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    .line 949
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v2

    .line 952
    :try_start_7
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v4}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18b

    if-eqz v0, :cond_1e

    .line 957
    :try_start_f
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_18b

    .line 960
    goto :goto_1e

    .line 958
    :catch_15
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_16
    const-string v3, "PduPersister"

    const-string/jumbo v5, "updateHeaders: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1e
    :goto_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_18b

    .line 963
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v4}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 965
    new-instance v5, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 966
    .local v5, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v0

    .line 967
    .local v0, "contentType":[B
    if-eqz v0, :cond_3a

    .line 968
    const-string v2, "ct_t"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v8

    .line 972
    .local v8, "date":J
    const-wide/16 v2, -0x1

    cmp-long v6, v8, v2

    if-eqz v6, :cond_4d

    .line 973
    const-string v6, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v10

    .line 977
    .local v10, "deliveryReport":I
    if-eqz v10, :cond_5c

    .line 978
    const-string v6, "d_rpt"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v11

    .line 982
    .local v11, "expiry":J
    cmp-long v2, v11, v2

    if-eqz v2, :cond_6d

    .line 983
    const-string v2, "exp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    :cond_6d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v13

    .line 987
    .local v13, "msgClass":[B
    if-eqz v13, :cond_7c

    .line 988
    const-string v2, "m_cls"

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v14

    .line 992
    .local v14, "priority":I
    if-eqz v14, :cond_8c

    .line 993
    const-string/jumbo v2, "pri"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    :cond_8c
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v15

    .line 997
    .local v15, "readReport":I
    if-eqz v15, :cond_9c

    .line 998
    const-string/jumbo v2, "rr"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    :cond_9c
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v16

    .line 1002
    .local v16, "transId":[B
    if-eqz v16, :cond_ac

    .line 1003
    const-string/jumbo v2, "tr_id"

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_ac
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 1007
    .local v17, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v17, :cond_cf

    .line 1008
    const-string/jumbo v2, "sub"

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v2, "sub_cs"

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d7

    .line 1011
    :cond_cf
    const-string/jumbo v2, "sub"

    const-string v3, ""

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v18

    .line 1015
    .local v18, "messageSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_ea

    .line 1016
    const-string v2, "m_size"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1019
    :cond_ea
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v2

    .line 1020
    .local v2, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1021
    .local v3, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v7, v6

    const/16 v20, 0x0

    move-object/from16 v21, v0

    move/from16 v0, v20

    .end local v0    # "contentType":[B
    .local v21, "contentType":[B
    :goto_fc
    if-ge v0, v7, :cond_166

    move/from16 v22, v0

    aget v0, v6, v22

    .line 1022
    .local v0, "addrType":I
    const/16 v23, 0x0

    .line 1023
    .local v23, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v4, 0x89

    if-ne v0, v4, :cond_11d

    .line 1024
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1025
    .local v4, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_118

    .line 1026
    move-object/from16 v24, v4

    .end local v4    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v24, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1027
    .end local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    aput-object v24, v4, v20

    move-object/from16 v23, v4

    goto :goto_11a

    .line 1025
    .end local v24    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_118
    move-object/from16 v24, v4

    .line 1029
    .end local v4    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_11a
    move-object/from16 v4, v23

    goto :goto_123

    .line 1030
    :cond_11d
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    move-object/from16 v4, v23

    .line 1033
    .end local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_123
    if-eqz v4, :cond_153

    .line 1034
    move-object/from16 v23, v6

    move/from16 v24, v7

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1035
    .local v6, "msgId":J
    invoke-direct {v1, v6, v7, v0, v4}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1036
    move-object/from16 v25, v2

    .end local v2    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v25, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v2, 0x97

    if-ne v0, v2, :cond_150

    .line 1037
    array-length v2, v4

    move/from16 v26, v0

    move/from16 v0, v20

    .end local v0    # "addrType":I
    .local v26, "addrType":I
    :goto_13b
    if-ge v0, v2, :cond_15b

    aget-object v27, v4, v0

    .line 1038
    .local v27, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_14b

    .line 1039
    move/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14d

    .line 1038
    :cond_14b
    move/from16 v28, v0

    .line 1037
    .end local v27    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_14d
    add-int/lit8 v0, v28, 0x1

    goto :goto_13b

    .line 1036
    .end local v26    # "addrType":I
    .restart local v0    # "addrType":I
    :cond_150
    move/from16 v26, v0

    .end local v0    # "addrType":I
    .restart local v26    # "addrType":I
    goto :goto_15b

    .line 1033
    .end local v6    # "msgId":J
    .end local v25    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v26    # "addrType":I
    .restart local v0    # "addrType":I
    .restart local v2    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_153
    move/from16 v26, v0

    move-object/from16 v25, v2

    move-object/from16 v23, v6

    move/from16 v24, v7

    .line 1021
    .end local v0    # "addrType":I
    .end local v2    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v25    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_15b
    :goto_15b
    add-int/lit8 v0, v22, 0x1

    move-object/from16 v4, p1

    move-object/from16 v6, v23

    move/from16 v7, v24

    move-object/from16 v2, v25

    goto :goto_fc

    .line 1045
    .end local v25    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v2    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_166
    move-object/from16 v25, v2

    .end local v2    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v25    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17e

    .line 1046
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v6

    .line 1047
    .local v6, "threadId":J
    const-string/jumbo v0, "thread_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    .end local v6    # "threadId":J
    :cond_17e
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v0, v3

    .end local v3    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v0, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1051
    return-void

    .line 962
    .end local v0    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "date":J
    .end local v10    # "deliveryReport":I
    .end local v11    # "expiry":J
    .end local v13    # "msgClass":[B
    .end local v14    # "priority":I
    .end local v15    # "readReport":I
    .end local v16    # "transId":[B
    .end local v17    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18    # "messageSize":J
    .end local v21    # "contentType":[B
    .end local v25    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :catchall_18b
    move-exception v0

    :try_start_18c
    monitor-exit v2
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v0
.end method

.method public greylist updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1120
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v6
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_130

    .line 1121
    :try_start_b
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12d

    if-eqz v0, :cond_35

    .line 1126
    :try_start_13
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_12d

    .line 1129
    goto :goto_22

    .line 1127
    :catch_19
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v7, "PduPersister"

    const-string/jumbo v8, "updateParts: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_22
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1131
    .local v0, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_35

    .line 1132
    invoke-virtual {v0}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1137
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_35
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1138
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_12d

    .line 1140
    :try_start_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v0, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v6, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 1144
    .local v8, "partsNum":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1145
    .local v9, "filter":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_56
    if-ge v10, v8, :cond_9f

    .line 1146
    invoke-virtual {v3, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 1147
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 1148
    .local v12, "partUri":Landroid/net/Uri;
    if-eqz v12, :cond_99

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_99

    .line 1149
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_79

    goto :goto_99

    .line 1152
    :cond_79
    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-le v13, v7, :cond_87

    .line 1157
    const-string v13, " AND "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_87
    const-string v13, "_id"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v13, "!="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_9c

    .line 1150
    :cond_99
    :goto_99
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    .end local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "partUri":Landroid/net/Uri;
    :goto_9c
    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    .line 1165
    .end local v10    # "i":I
    :cond_9f
    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1170
    .local v10, "msgId":J
    iget-object v7, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/part"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1171
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x2

    const/4 v5, 0x0

    if-le v14, v15, :cond_dc

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_dd

    :cond_dc
    move-object v14, v5

    .line 1170
    :goto_dd
    invoke-static {v7, v12, v13, v14, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/PduPart;

    .line 1176
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1, v7, v10, v11, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1177
    nop

    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_e4

    .line 1180
    :cond_f5
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_119

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1181
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1, v12, v13, v4}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_118
    .catchall {:try_start_3c .. :try_end_118} :catchall_130

    .line 1182
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    goto :goto_fd

    .line 1184
    .end local v0    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v6    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v8    # "partsNum":I
    .end local v9    # "filter":Ljava/lang/StringBuilder;
    .end local v10    # "msgId":J
    :cond_119
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1185
    :try_start_11c
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1186
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1187
    monitor-exit v5

    .line 1188
    nop

    .line 1189
    return-void

    .line 1187
    :catchall_12a
    move-exception v0

    monitor-exit v5
    :try_end_12c
    .catchall {:try_start_11c .. :try_end_12c} :catchall_12a

    throw v0

    .line 1138
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v6
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local p3    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_12f
    throw v0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_130

    .line 1184
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local p3    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_130
    move-exception v0

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1185
    :try_start_134
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1186
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1187
    monitor-exit v5
    :try_end_140
    .catchall {:try_start_134 .. :try_end_140} :catchall_141

    .line 1188
    throw v0

    .line 1187
    :catchall_141
    move-exception v0

    :try_start_142
    monitor-exit v5
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v0
.end method
