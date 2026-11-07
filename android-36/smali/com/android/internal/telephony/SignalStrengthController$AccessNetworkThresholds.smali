.class final Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;
.super Ljava/lang/Object;
.source "SignalStrengthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SignalStrengthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessNetworkThresholds"
.end annotation


# static fields
.field public static final blacklist CDMA2000:[I

.field public static final blacklist EUTRAN_RSRP:[I

.field public static final blacklist EUTRAN_RSRQ:[I

.field public static final blacklist EUTRAN_RSSNR:[I

.field public static final blacklist GERAN:[I

.field public static final blacklist NGRAN_SSRSRP:[I

.field public static final blacklist NGRAN_SSRSRQ:[I

.field public static final blacklist NGRAN_SSSINR:[I

.field public static final blacklist UTRAN:[I

.field public static final blacklist UTRAN_ECNO:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    const/16 v0, -0x61

    const/16 v1, -0x59

    const/16 v2, -0x6d

    const/16 v3, -0x67

    .line 1244
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->GERAN:[I

    const/16 v0, -0x5e

    const/16 v1, -0x54

    const/16 v2, -0x72

    const/16 v3, -0x68

    .line 1258
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN:[I

    const/16 v0, -0x6c

    const/16 v1, -0x62

    const/16 v2, -0x80

    const/16 v3, -0x76

    .line 1271
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRP:[I

    const/16 v0, -0xb

    const/16 v1, -0x14

    const/16 v2, -0x11

    const/16 v3, -0xe

    .line 1284
    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSRQ:[I

    const/16 v0, 0xd

    const/4 v1, -0x3

    const/4 v2, 0x1

    const/4 v4, 0x5

    .line 1297
    filled-new-array {v1, v2, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->EUTRAN_RSSNR:[I

    const/16 v0, -0x69

    const/16 v1, -0x5a

    const/16 v5, -0x4b

    const/16 v6, -0x41

    .line 1309
    filled-new-array {v0, v1, v5, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->CDMA2000:[I

    const/16 v0, -0x6e

    const/16 v5, -0x50

    .line 1319
    filled-new-array {v0, v1, v5, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRP:[I

    const/4 v0, -0x7

    const/4 v1, 0x6

    const/16 v5, -0x1f

    const/16 v6, -0x13

    .line 1329
    filled-new-array {v5, v6, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSRSRQ:[I

    const/16 v0, 0xf

    const/16 v1, 0x1e

    const/4 v5, -0x5

    .line 1339
    filled-new-array {v5, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->NGRAN_SSSINR:[I

    const/16 v0, -0x18

    const/4 v1, -0x6

    .line 1349
    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SignalStrengthController$AccessNetworkThresholds;->UTRAN_ECNO:[I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
