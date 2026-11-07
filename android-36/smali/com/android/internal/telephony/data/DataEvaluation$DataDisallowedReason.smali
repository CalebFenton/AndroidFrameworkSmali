.class public final enum Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;
.super Ljava/lang/Enum;
.source "DataEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataDisallowedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist HANDOVER_RETRY_STOPPED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

.field public static final enum blacklist VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;


# instance fields
.field private final blacklist mIsHardReason:Z


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;
    .registers 29

    .line 298
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v9, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v10, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v11, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v12, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v13, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v14, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v15, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v16, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v17, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v18, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v19, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v20, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v21, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v22, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v23, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v24, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v25, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v26, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->HANDOVER_RETRY_STOPPED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v27, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    sget-object v28, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    filled-new-array/range {v1 .. v28}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 302
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 304
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "ROAMING_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ROAMING_DISABLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 306
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DEFAULT_DATA_UNSELECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 311
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "NOT_IN_SERVICE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_IN_SERVICE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_CONFIG_NOT_READY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_CONFIG_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 315
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "SIM_NOT_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 317
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 319
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 321
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_RESTRICTED_BY_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 323
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "RADIO_POWER_OFF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_POWER_OFF:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 325
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "PENDING_TEAR_DOWN_ALL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->PENDING_TEAR_DOWN_ALL:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 327
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "RADIO_DISABLED_BY_CARRIER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 329
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_SERVICE_NOT_READY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SERVICE_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 331
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "NO_SUITABLE_DATA_PROFILE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NO_SUITABLE_DATA_PROFILE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 333
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_NETWORK_TYPE_NOT_ALLOWED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TYPE_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 335
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "CDMA_EMERGENCY_CALLBACK_MODE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->CDMA_EMERGENCY_CALLBACK_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 337
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "RETRY_SCHEDULED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->RETRY_SCHEDULED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 339
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_THROTTLED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_THROTTLED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 341
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_PROFILE_INVALID"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_INVALID:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 343
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_PROFILE_NOT_PREFERRED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_PROFILE_NOT_PREFERRED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 345
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "NOT_ALLOWED_BY_POLICY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->NOT_ALLOWED_BY_POLICY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 347
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "ILLEGAL_STATE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ILLEGAL_STATE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 349
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "VOPS_NOT_SUPPORTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->VOPS_NOT_SUPPORTED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 351
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "ONLY_ALLOWED_SINGLE_NETWORK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->ONLY_ALLOWED_SINGLE_NETWORK:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 353
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_SETTINGS_NOT_READY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_SETTINGS_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 355
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "HANDOVER_RETRY_STOPPED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->HANDOVER_RETRY_STOPPED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 357
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_LIMIT_REACHED"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_LIMIT_REACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 359
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    const-string v1, "DATA_NETWORK_TRANSPORT_NOT_ALLOWED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_NETWORK_TRANSPORT_NOT_ALLOWED:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->$values()[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->mIsHardReason:Z

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 298
    const-class v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;
    .registers 1

    .line 298
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    return-object v0
.end method


# virtual methods
.method public blacklist isHardReason()Z
    .registers 1

    .line 367
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->mIsHardReason:Z

    return p0
.end method
