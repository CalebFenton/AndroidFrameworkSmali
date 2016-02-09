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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field public static final enum READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 1680
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@7
    const-string/jumbo v1, "IDLE"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@11
    const-string/jumbo v1, "INIT"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    #@17
    .line 1681
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@19
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1b
    const-string/jumbo v1, "READ_SPN_3GPP"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    #@21
    .line 1682
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@23
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@25
    const-string/jumbo v1, "READ_SPN_CPHS"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 1683
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2d
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2f
    const-string/jumbo v1, "READ_SPN_SHORT_CPHS"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;-><init>(Ljava/lang/String;I)V

    #@35
    .line 1684
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@37
    .line 1679
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@3a
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1679
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1679
    const-class v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    .locals 1

    #@0
    .prologue
    .line 1679
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->$VALUES:[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2
    return-object v0
.end method
