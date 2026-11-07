.class public final enum Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;
.super Ljava/lang/Enum;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimServiceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsimService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist COMMUNICATION_CONTROL_FOR_IMS_BY_ISIM:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist GBA:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist GBA_LOCALKEY_ESTABLISHMENT:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist HTTP_DIGEST:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist PCSCF_ADDRESS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist PCSCF_DISCOVERY_FOR_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SMSR:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist SM_OVERIP_AND_DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

.field public static final enum blacklist UICC_ACCESS_TO_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;
    .registers 10

    .line 21
    sget-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v1, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v2, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v3, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCALKEY_ESTABLISHMENT:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v4, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY_FOR_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v5, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v6, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v7, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVERIP_AND_DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v8, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_FOR_IMS_BY_ISIM:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    sget-object v9, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_TO_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    filled-new-array/range {v0 .. v9}, [Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_ADDRESS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 23
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "HTTP_DIGEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->HTTP_DIGEST:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "GBA_LOCALKEY_ESTABLISHMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->GBA_LOCALKEY_ESTABLISHMENT:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 26
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "PCSCF_DISCOVERY_FOR_IMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->PCSCF_DISCOVERY_FOR_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SMSR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SMSR:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "SM_OVERIP_AND_DATA_DL_VIA_SMS_PP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->SM_OVERIP_AND_DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "COMMUNICATION_CONTROL_FOR_IMS_BY_ISIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->COMMUNICATION_CONTROL_FOR_IMS_BY_ISIM:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    const-string v1, "UICC_ACCESS_TO_IMS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->UICC_ACCESS_TO_IMS:Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 21
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->$values()[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->$VALUES:[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    return-object v0
.end method
