.class public Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mAmount:F

.field private final mIsNight:Z


# direct methods
.method constructor <init>(ZF)V
    .locals 0
    .param p1, "isNight"    # Z
    .param p2, "amount"    # F

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@5
    .line 32
    iput p2, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    #@7
    .line 30
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/server/twilight/TwilightState;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    if-eqz p1, :cond_0

    #@3
    .line 57
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@5
    iget-boolean v2, p1, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 58
    iget v1, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    #@b
    iget v2, p1, Lcom/android/server/twilight/TwilightState;->mAmount:F

    #@d
    cmpl-float v1, v1, v2

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 56
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lcom/android/server/twilight/TwilightState;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getAmount()F
    .locals 1

    #@0
    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isNight()Z
    .locals 1

    #@0
    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 68
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    .line 69
    .local v0, "f":Ljava/text/DateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "{TwilightState: isNight="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 70
    const-string/jumbo v2, ", mAmount="

    #@19
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 70
    iget v2, p0, Lcom/android/server/twilight/TwilightState;->mAmount:F

    #@1f
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 71
    const-string/jumbo v2, "}"

    #@26
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method
