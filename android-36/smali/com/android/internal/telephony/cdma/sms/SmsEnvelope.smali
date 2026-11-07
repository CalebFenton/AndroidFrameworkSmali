.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final blacklist MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final blacklist MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final blacklist MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final blacklist SERVICE_CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final blacklist SERVICE_CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final blacklist SERVICE_CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final blacklist SERVICE_CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final blacklist SERVICE_CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final blacklist SERVICE_CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final blacklist TELESERVICE_FDEA_WAP:I = 0xfdea

.field public static final blacklist TELESERVICE_MWI:I = 0x40000

.field public static final blacklist TELESERVICE_NOT_SET:I = 0x0

.field public static final blacklist TELESERVICE_SCPT:I = 0x1006

.field public static final blacklist TELESERVICE_VMN:I = 0x1003

.field public static final blacklist TELESERVICE_WAP:I = 0x1004

.field public static final blacklist TELESERVICE_WEMT:I = 0x1005

.field public static final blacklist TELESERVICE_WMT:I = 0x1002


# instance fields
.field public greylist bearerData:[B

.field public blacklist bearerReply:I

.field public blacklist causeCode:B

.field public blacklist destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public blacklist destSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public blacklist errorClass:B

.field public blacklist messageType:I

.field public blacklist origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public blacklist origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public blacklist replySeqNo:B

.field public greylist serviceCategory:I

.field public greylist teleService:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 146
    return-void
.end method
