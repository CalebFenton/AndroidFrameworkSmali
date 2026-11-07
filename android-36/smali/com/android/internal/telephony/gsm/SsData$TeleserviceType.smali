.class public final enum Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TeleserviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum blacklist SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .registers 6

    .line 94
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v2, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v3, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v5, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELE_AND_BEARER_SERVICES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELESEVICES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_TELEPHONY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_DATA_TELESERVICES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_SMS_SERVICES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELESERVICES_EXCEPT_SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

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

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 94
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    return-object v0
.end method
