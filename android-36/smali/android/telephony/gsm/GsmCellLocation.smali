.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mCid:I

.field private greylist-max-o mLac:I

.field private greylist-max-o mPsc:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 40
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 41
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 47
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 48
    const-string/jumbo v0, "lac"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 49
    const-string v0, "cid"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 50
    const-string/jumbo v0, "psc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 51
    return-void
.end method

.method private static greylist-max-o equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 140
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_42

    .line 117
    .local v1, "s":Landroid/telephony/gsm/GsmCellLocation;
    nop

    .line 119
    if-nez p1, :cond_8

    .line 120
    return v0

    .line 123
    :cond_8
    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    nop

    .line 123
    :goto_41
    return v0

    .line 115
    .end local v1    # "s":Landroid/telephony/gsm/GsmCellLocation;
    :catch_42
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 149
    const-string/jumbo v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public whitelist getCid()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    return v0
.end method

.method public whitelist getPsc()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 106
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 3

    .line 158
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist setLacAndCid(II)V
    .registers 3
    .param p1, "lac"    # I
    .param p2, "cid"    # I

    .line 91
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 92
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 93
    return-void
.end method

.method public greylist-max-p setPsc(I)V
    .registers 2
    .param p1, "psc"    # I

    .line 101
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 102
    return-void
.end method

.method public whitelist setStateInvalid()V
    .registers 2

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 83
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 84
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 85
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
