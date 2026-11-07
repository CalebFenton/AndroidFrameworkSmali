.class final enum Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
.super Ljava/lang/Enum;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GetSpnFsmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum blacklist IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum greylist INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum greylist READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum greylist READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum greylist READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .registers 5

    .line 1796
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1799
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1800
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const-string v1, "INIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1802
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const-string v1, "READ_SPN_3GPP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1804
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const-string v1, "READ_SPN_CPHS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1806
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    const-string v1, "READ_SPN_SHORT_CPHS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 1796
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

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

    .line 1798
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1796
    const-class v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .registers 1

    .line 1796
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-object v0
.end method
