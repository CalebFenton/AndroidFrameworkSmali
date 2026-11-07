.class public final enum Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;
.super Ljava/lang/Enum;
.source "DataEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataEvaluationReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_ENABLED_OVERRIDE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_NETWORK_CAPABILITIES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist SRVCC_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist UNSATISFIED_REQUEST_DETACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

.field public static final enum blacklist VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;


# instance fields
.field private final blacklist mIsConditionBased:Z


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;
    .registers 25

    .line 218
    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v8, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_OVERRIDE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v9, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v10, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v11, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v12, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_NETWORK_CAPABILITIES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v13, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v14, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v15, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v16, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v17, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v18, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v19, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SRVCC_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v20, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v21, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v22, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v23, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->UNSATISFIED_REQUEST_DETACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    sget-object v24, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    filled-new-array/range {v1 .. v24}, [Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 221
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "NEW_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->NEW_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 223
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_CONFIG_CHANGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 225
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "SIM_LOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_LOADED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 227
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "SIM_REMOVAL"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SIM_REMOVAL:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 229
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_PROFILES_CHANGED"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_PROFILES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 231
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_SERVICE_STATE_CHANGED"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_SERVICE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 233
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_ENABLED_CHANGED"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_ENABLED_OVERRIDE_CHANGED"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_OVERRIDE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 237
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "ROAMING_ENABLED_CHANGED"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 239
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "VOICE_CALL_ENDED"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->VOICE_CALL_ENDED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 241
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_RESTRICTED_CHANGED"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RESTRICTED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 243
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_NETWORK_CAPABILITIES_CHANGED"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_NETWORK_CAPABILITIES_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 245
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "EMERGENCY_CALL_CHANGED"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EMERGENCY_CALL_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 247
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "RETRY_AFTER_DISCONNECTED"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 249
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_RETRY"

    const/16 v4, 0xe

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 251
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "DATA_HANDOVER"

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_HANDOVER:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 253
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "PREFERRED_TRANSPORT_CHANGED"

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->PREFERRED_TRANSPORT_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 255
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "SLICE_CONFIG_CHANGED"

    const/16 v4, 0x11

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SLICE_CONFIG_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 257
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "SRVCC_STATE_CHANGED"

    const/16 v4, 0x12

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SRVCC_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 262
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "SINGLE_DATA_NETWORK_ARBITRATION"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SINGLE_DATA_NETWORK_ARBITRATION:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 264
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "EXTERNAL_QUERY"

    const/16 v4, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->EXTERNAL_QUERY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 266
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "TAC_CHANGED"

    const/16 v4, 0x15

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->TAC_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "UNSATISFIED_REQUEST_DETACHED"

    const/16 v4, 0x16

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->UNSATISFIED_REQUEST_DETACHED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 270
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const-string v1, "CHECK_DATA_USAGE"

    const/16 v3, 0x17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->CHECK_DATA_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->$values()[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

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

    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 293
    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->mIsConditionBased:Z

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 218
    const-class v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    return-object v0
.end method


# virtual methods
.method public blacklist isConditionBased()Z
    .registers 1

    .line 283
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->mIsConditionBased:Z

    return p0
.end method
