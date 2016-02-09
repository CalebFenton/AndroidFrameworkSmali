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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 96
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@7
    const-string/jumbo v1, "SS_ALL_TELE_AND_BEARER_SERVICES"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@f
    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@11
    const-string/jumbo v1, "SS_ALL_TELESEVICES"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@19
    .line 98
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@1b
    const-string/jumbo v1, "SS_TELEPHONY"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@23
    .line 99
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@25
    const-string/jumbo v1, "SS_ALL_DATA_TELESERVICES"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@2d
    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@2f
    const-string/jumbo v1, "SS_SMS_SERVICES"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@37
    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@39
    const-string/jumbo v1, "SS_ALL_TELESERVICES_EXCEPT_SMS"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@42
    .line 95
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@45
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 1

    #@0
    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@2
    return-object v0
.end method
