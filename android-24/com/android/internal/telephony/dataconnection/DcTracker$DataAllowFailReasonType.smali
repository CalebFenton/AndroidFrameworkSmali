.class public final enum Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataAllowFailReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;


# instance fields
.field public mFailReasonStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 214
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@7
    const-string/jumbo v1, "NOT_ATTACHED"

    #@a
    const-string/jumbo v2, " - Not attached"

    #@d
    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@10
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@12
    .line 215
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@14
    const-string/jumbo v1, "RECORD_NOT_LOADED"

    #@17
    const-string/jumbo v2, " - SIM not loaded"

    #@1a
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@1f
    .line 216
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@21
    const-string/jumbo v1, "ROAMING_DISABLED"

    #@24
    const-string/jumbo v2, " - Roaming and data roaming not enabled"

    #@27
    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@2c
    .line 217
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@2e
    const-string/jumbo v1, "INVALID_PHONE_STATE"

    #@31
    const-string/jumbo v2, " - PhoneState is not idle"

    #@34
    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@37
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@39
    .line 218
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@3b
    const-string/jumbo v1, "CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    #@3e
    const-string/jumbo v2, " - Concurrent voice and data not allowed"

    #@41
    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@46
    .line 219
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@48
    const-string/jumbo v1, "PS_RESTRICTED"

    #@4b
    const-string/jumbo v2, " - mIsPsRestricted= true"

    #@4e
    const/4 v3, 0x5

    #@4f
    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@54
    .line 220
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@56
    const-string/jumbo v1, "UNDESIRED_POWER_STATE"

    #@59
    const-string/jumbo v2, " - desiredPowerState= false"

    #@5c
    const/4 v3, 0x6

    #@5d
    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@60
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@62
    .line 221
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@64
    const-string/jumbo v1, "INTERNAL_DATA_DISABLED"

    #@67
    const-string/jumbo v2, " - mInternalDataEnabled= false"

    #@6a
    const/4 v3, 0x7

    #@6b
    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@6e
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@70
    .line 222
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@72
    const-string/jumbo v1, "DEFAULT_DATA_UNSELECTED"

    #@75
    const-string/jumbo v2, " - defaultDataSelected= false"

    #@78
    const/16 v3, 0x8

    #@7a
    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@7d
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@7f
    .line 213
    const/16 v0, 0x9

    #@81
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@83
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@85
    aput-object v1, v0, v4

    #@87
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@89
    aput-object v1, v0, v5

    #@8b
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@8d
    aput-object v1, v0, v6

    #@8f
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@91
    aput-object v1, v0, v7

    #@93
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@95
    aput-object v1, v0, v8

    #@97
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@99
    const/4 v2, 0x5

    #@9a
    aput-object v1, v0, v2

    #@9c
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@9e
    const/4 v2, 0x6

    #@9f
    aput-object v1, v0, v2

    #@a1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@a3
    const/4 v2, 0x7

    #@a4
    aput-object v1, v0, v2

    #@a6
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@a8
    const/16 v2, 0x8

    #@aa
    aput-object v1, v0, v2

    #@ac
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@ae
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 227
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->mFailReasonStr:Ljava/lang/String;

    #@5
    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    .locals 1

    #@0
    .prologue
    .line 213
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    #@2
    return-object v0
.end method
