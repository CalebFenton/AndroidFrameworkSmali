.class public Lcom/android/internal/telephony/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private blacklist mCsEmergencyRestricted:Z

.field private blacklist mCsNormalRestricted:Z

.field private blacklist mPsRestricted:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 95
    :try_start_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/RestrictedState;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_1b

    if-nez p1, :cond_7

    return v0

    .line 104
    :cond_7
    iget-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    iget-boolean v2, v1, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    if-ne p1, v2, :cond_1b

    iget-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    iget-boolean v2, v1, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-ne p1, v2, :cond_1b

    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    iget-boolean p1, v1, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-ne p0, p1, :cond_1b

    const/4 p0, 0x1

    return p0

    :catch_1b
    :cond_1b
    return v0
.end method

.method public blacklist isAnyCsRestricted()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isCsEmergencyRestricted()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    return p0
.end method

.method public blacklist isCsNormalRestricted()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    return p0
.end method

.method public blacklist isCsRestricted()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPsRestricted()Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    return p0
.end method

.method public blacklist setCsEmergencyRestricted(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    return-void
.end method

.method public blacklist setCsNormalRestricted(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    return-void
.end method

.method public blacklist setPsRestricted(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v1, :cond_b

    .line 114
    const-string v0, "all"

    goto :goto_1f

    :cond_b
    if-eqz v0, :cond_14

    .line 115
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-nez v1, :cond_14

    .line 116
    const-string v0, "emergency"

    goto :goto_1f

    :cond_14
    if-nez v0, :cond_1d

    .line 117
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    if-eqz v0, :cond_1d

    .line 118
    const-string v0, "normal call"

    goto :goto_1f

    .line 121
    :cond_1d
    const-string v0, "none"

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restricted State CS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PS:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
