.class public final enum Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;
.super Ljava/lang/Enum;
.source "DataEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataEvaluation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataAllowedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist IN_VOICE_CALL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

.field public static final enum blacklist UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;
    .registers 8

    .line 385
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NONE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v1, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IN_VOICE_CALL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v4, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v5, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v6, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    sget-object v7, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 392
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NONE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 396
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->NORMAL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 400
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "IN_VOICE_CALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->IN_VOICE_CALL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 405
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "UNMETERED_USAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->UNMETERED_USAGE:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 409
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "MMS_REQUEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->MMS_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 413
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "RESTRICTED_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->RESTRICTED_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 417
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "EMERGENCY_SUPL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_SUPL:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 422
    new-instance v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    const-string v1, "EMERGENCY_REQUEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->EMERGENCY_REQUEST:Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    .line 385
    invoke-static {}, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->$values()[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 385
    const-class v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;
    .registers 1

    .line 385
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->$VALUES:[Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/data/DataEvaluation$DataAllowedReason;

    return-object v0
.end method
