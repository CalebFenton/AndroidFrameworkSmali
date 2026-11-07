.class public final enum Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
.super Ljava/lang/Enum;
.source "IccSlotStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccSlotStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultipleEnabledProfilesMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field public static final enum blacklist MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field public static final enum blacklist MEP_A2:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field public static final enum blacklist MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .registers 4

    .line 33
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A2:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    const-string v1, "MEP_A1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    const-string v1, "MEP_A2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A2:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    const-string v1, "MEP_B"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_B:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 33
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->$values()[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->$VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    const-class v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->$VALUES:[Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-object v0
.end method


# virtual methods
.method public blacklist isMepA1Mode()Z
    .registers 2

    .line 59
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMepAMode()Z
    .registers 2

    .line 55
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A1:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->MEP_A2:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isMepMode()Z
    .registers 2

    .line 63
    sget-object v0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
