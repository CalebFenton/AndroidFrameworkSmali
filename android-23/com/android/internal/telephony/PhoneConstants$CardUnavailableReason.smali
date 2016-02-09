.class public final enum Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardUnavailableReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

.field public static final enum REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 184
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@5
    const-string/jumbo v1, "REASON_CARD_REMOVED"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@d
    .line 185
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@f
    const-string/jumbo v1, "REASON_RADIO_UNAVAILABLE"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@17
    .line 186
    new-instance v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@19
    const-string/jumbo v1, "REASON_SIM_REFRESH_RESET"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@21
    .line 183
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@24
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;
    .locals 1

    #@0
    .prologue
    .line 183
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;

    #@2
    return-object v0
.end method
