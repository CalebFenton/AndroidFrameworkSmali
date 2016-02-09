.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# instance fields
.field private mCid:I

.field private mLac:I

.field private mPsc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 33
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    #@4
    .line 34
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@6
    .line 35
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@8
    .line 36
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@a
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 42
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    #@4
    .line 43
    const-string/jumbo v0, "lac"

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@d
    .line 44
    const-string/jumbo v0, "cid"

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@16
    .line 45
    const-string/jumbo v0, "psc"

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@1f
    .line 42
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 107
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 112
    .local v2, "s":Landroid/telephony/gsm/GsmCellLocation;
    if-nez p1, :cond_0

    #@7
    .line 113
    return v3

    #@8
    .line 108
    .end local v2    # "s":Landroid/telephony/gsm/GsmCellLocation;
    :catch_0
    move-exception v1

    #@9
    .line 109
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 116
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v5

    #@16
    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v5

    #@28
    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 117
    iget v3, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v3

    #@34
    iget v4, v2, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v3

    #@3e
    .line 116
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 142
    const-string/jumbo v0, "lac"

    #@3
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 143
    const-string/jumbo v0, "cid"

    #@b
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 144
    const-string/jumbo v0, "psc"

    #@13
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 141
    return-void
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 52
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@2
    return v0
.end method

.method public getPsc()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@2
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@4
    xor-int/2addr v0, v1

    #@5
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 151
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@8
    if-ne v1, v2, :cond_0

    #@a
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@c
    if-ne v1, v2, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public setLacAndCid(II)V
    .locals 0
    .param p1, "lac"    # I
    .param p2, "cid"    # I

    #@0
    .prologue
    .line 85
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@2
    .line 86
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@4
    .line 84
    return-void
.end method

.method public setPsc(I)V
    .locals 0
    .param p1, "psc"    # I

    #@0
    .prologue
    .line 94
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@2
    .line 93
    return-void
.end method

.method public setStateInvalid()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 76
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@3
    .line 77
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@5
    .line 78
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@7
    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ","

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ","

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
