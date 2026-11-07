.class public final enum Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum greylist PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum greylist PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum blacklist PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum greylist PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum blacklist PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public static final enum blacklist PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 6

    .line 51
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_ENABLED_NOT_VERIFIED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_ENABLED_VERIFIED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_ENABLED_BLOCKED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    const-string v1, "PINSTATE_ENABLED_PERM_BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object v0
.end method
