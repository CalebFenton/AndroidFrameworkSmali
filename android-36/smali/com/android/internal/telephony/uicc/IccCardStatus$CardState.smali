.class public final enum Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public static final enum greylist CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public static final enum greylist CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public static final enum greylist CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field public static final enum blacklist CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 4

    .line 35
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_ABSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_PRESENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_RESTRICTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->$values()[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    return-object v0
.end method


# virtual methods
.method public greylist-max-r isCardPresent()Z
    .registers 2

    .line 46
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_RESTRICTED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

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
