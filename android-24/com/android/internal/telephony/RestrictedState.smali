.class public Lcom/android/internal/telephony/RestrictedState;
.super Ljava/lang/Object;
.source "RestrictedState.java"


# instance fields
.field private mCsEmergencyRestricted:Z

.field private mCsNormalRestricted:Z

.field private mPsRestricted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    #@7
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    #@a
    .line 37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    #@d
    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 91
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lcom/android/internal/telephony/RestrictedState;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 96
    .local v2, "s":Lcom/android/internal/telephony/RestrictedState;
    if-nez p1, :cond_0

    #@7
    .line 97
    return v3

    #@8
    .line 92
    .end local v2    # "s":Lcom/android/internal/telephony/RestrictedState;
    :catch_0
    move-exception v1

    #@9
    .line 93
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 100
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Lcom/android/internal/telephony/RestrictedState;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    #@c
    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    #@e
    if-ne v4, v5, :cond_1

    #@10
    .line 101
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@12
    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@14
    if-ne v4, v5, :cond_1

    #@16
    .line 102
    iget-boolean v4, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@18
    iget-boolean v5, v2, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    const/4 v3, 0x1

    #@1d
    .line 100
    :cond_1
    return v3
.end method

.method public isCsEmergencyRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@2
    return v0
.end method

.method public isCsNormalRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@2
    return v0
.end method

.method public isCsRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isPsRestricted()Z
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    #@2
    return v0
.end method

.method public setCsEmergencyRestricted(Z)V
    .locals 0
    .param p1, "csEmergencyRestricted"    # Z

    #@0
    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@2
    .line 43
    return-void
.end method

.method public setCsNormalRestricted(Z)V
    .locals 0
    .param p1, "csNormalRestricted"    # Z

    #@0
    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@2
    .line 57
    return-void
.end method

.method public setPsRestricted(Z)V
    .locals 0
    .param p1, "psRestricted"    # Z

    #@0
    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    #@2
    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "none"

    #@3
    .line 109
    .local v0, "csString":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 110
    const-string/jumbo v0, "all"

    #@e
    .line 117
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Restricted State CS: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " PS:"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget-boolean v2, p0, Lcom/android/internal/telephony/RestrictedState;->mPsRestricted:Z

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1

    #@30
    .line 111
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@32
    if-eqz v1, :cond_2

    #@34
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 113
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsEmergencyRestricted:Z

    #@3a
    if-nez v1, :cond_0

    #@3c
    iget-boolean v1, p0, Lcom/android/internal/telephony/RestrictedState;->mCsNormalRestricted:Z

    #@3e
    if-eqz v1, :cond_0

    #@40
    .line 114
    const-string/jumbo v0, "normal call"

    #@43
    goto :goto_0

    #@44
    .line 112
    :cond_3
    const-string/jumbo v0, "emergency"

    #@47
    goto :goto_0
.end method
