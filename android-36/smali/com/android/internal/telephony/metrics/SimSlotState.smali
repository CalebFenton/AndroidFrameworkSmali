.class public Lcom/android/internal/telephony/metrics/SimSlotState;
.super Ljava/lang/Object;
.source "SimSlotState.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SimSlotState"


# instance fields
.field public final blacklist numActiveEsimSlots:I

.field public final blacklist numActiveEsims:I

.field public final blacklist numActiveMepSlots:I

.field public final blacklist numActiveSims:I

.field public final blacklist numActiveSlots:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8zQi_2eV-Nm0vfTkwDtP81RZ1as(Lcom/android/internal/telephony/uicc/UiccProfile;)Z
    .registers 1

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 6

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSlots:I

    .line 95
    iput p2, p0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSims:I

    .line 96
    iput p3, p0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveEsims:I

    .line 97
    iput p4, p0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveEsimSlots:I

    .line 98
    iput p5, p0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveMepSlots:I

    return-void
.end method

.method public static blacklist getCurrentState()Lcom/android/internal/telephony/metrics/SimSlotState;
    .registers 10

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 48
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_79

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 50
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v8

    if-eqz v8, :cond_76

    add-int/lit8 v3, v3, 0x1

    .line 52
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v8

    if-eqz v8, :cond_27

    add-int/lit8 v6, v6, 0x1

    .line 56
    :cond_27
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v8, v9, :cond_76

    .line 57
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 59
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 61
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortList()[Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda1;-><init>()V

    .line 63
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda2;-><init>()V

    .line 64
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda3;-><init>()V

    .line 65
    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v8

    long-to-int v2, v8

    add-int/2addr v4, v2

    add-int/2addr v5, v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_76

    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    :cond_74
    add-int/lit8 v4, v4, 0x1

    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 80
    :cond_79
    new-instance v2, Lcom/android/internal/telephony/metrics/SimSlotState;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/SimSlotState;-><init>(IIIII)V

    return-object v2
.end method

.method public static blacklist isEsim(I)Z
    .registers 4

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 105
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result p0

    return p0

    .line 108
    :cond_f
    sget-object v0, Lcom/android/internal/telephony/metrics/SimSlotState;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEsim: slot=null for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isMultiSim()Z
    .registers 2

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->getCurrentState()Lcom/android/internal/telephony/metrics/SimSlotState;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSims:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
