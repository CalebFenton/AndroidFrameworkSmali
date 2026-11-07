.class Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;
.super Ljava/lang/Object;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideTimerRule"
.end annotation


# instance fields
.field final blacklist mOverrideType:I

.field final blacklist mPrimaryTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSecondaryTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mState:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mState:Ljava/lang/String;

    .line 1655
    iput p2, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    .line 1656
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    .line 1657
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addSecondaryTimer(Ljava/lang/String;I)V
    .registers 3

    .line 1675
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist addTimer(Ljava/lang/String;I)V
    .registers 3

    .line 1666
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist getSecondaryTimer(Ljava/lang/String;)I
    .registers 3

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_15

    .line 1693
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    const-string p1, "any"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    :cond_15
    if-nez p1, :cond_19

    const/4 p0, 0x0

    return p0

    .line 1694
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getTimer(Ljava/lang/String;)I
    .registers 3

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_15

    .line 1683
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    const-string p1, "any"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    :cond_15
    if-nez p1, :cond_19

    const/4 p0, 0x0

    return p0

    .line 1684
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist isDefined()Z
    .registers 2

    .line 1703
    iget v0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    .line 1704
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOverrideType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mOverrideType:I

    .line 1711
    invoke-static {v1}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryTimers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mPrimaryTimers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryTimers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$OverrideTimerRule;->mSecondaryTimers:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
