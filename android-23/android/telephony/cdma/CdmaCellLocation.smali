.class public Landroid/telephony/cdma/CdmaCellLocation;
.super Landroid/telephony/CellLocation;
.source "CdmaCellLocation.java"


# static fields
.field public static final INVALID_LAT_LONG:I = 0x7fffffff


# instance fields
.field private mBaseStationId:I

.field private mBaseStationLatitude:I

.field private mBaseStationLongitude:I

.field private mNetworkId:I

.field private mSystemId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    const/4 v0, -0x1

    #@4
    .line 57
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    #@7
    .line 26
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@9
    .line 39
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@b
    .line 47
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@d
    .line 49
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@f
    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@11
    .line 58
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@13
    .line 59
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@15
    .line 60
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@17
    .line 61
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@19
    .line 62
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@1b
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    const/4 v0, -0x1

    #@4
    .line 68
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    #@7
    .line 26
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@9
    .line 39
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@b
    .line 47
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@d
    .line 49
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@f
    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@11
    .line 69
    const-string/jumbo v0, "baseStationId"

    #@14
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@1c
    .line 70
    const-string/jumbo v0, "baseStationLatitude"

    #@1f
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@27
    .line 71
    const-string/jumbo v0, "baseStationLongitude"

    #@2a
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@2c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@32
    .line 72
    const-string/jumbo v0, "systemId"

    #@35
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@37
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@3d
    .line 73
    const-string/jumbo v0, "networkId"

    #@40
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@42
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@48
    .line 68
    return-void
.end method

.method public static convertQuartSecToDecDegrees(I)D
    .locals 4
    .param p0, "quartSec"    # I

    #@0
    .prologue
    .line 240
    int-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const v0, -0x278d00

    #@a
    if-ge p0, v0, :cond_1

    #@c
    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Invalid coordiante value:"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 240
    :cond_1
    const v0, 0x278d00

    #@29
    if-gt p0, v0, :cond_0

    #@2b
    .line 244
    int-to-double v0, p0

    #@2c
    const-wide v2, 0x40cc200000000000L    # 14400.0

    #@31
    div-double/2addr v0, v2

    #@32
    return-wide v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
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
    .line 169
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 174
    .local v2, "s":Landroid/telephony/cdma/CdmaCellLocation;
    if-nez p1, :cond_0

    #@7
    .line 175
    return v3

    #@8
    .line 170
    .end local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :catch_0
    move-exception v1

    #@9
    .line 171
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 178
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v5

    #@16
    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 179
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v5

    #@28
    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    .line 178
    if-eqz v4, :cond_1

    #@2e
    .line 180
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v4

    #@3e
    .line 178
    if-eqz v4, :cond_1

    #@40
    .line 181
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v4

    #@46
    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v5

    #@4c
    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    .line 178
    if-eqz v4, :cond_1

    #@52
    .line 182
    iget v3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@57
    move-result-object v3

    #@58
    iget v4, v2, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@5a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v3, v4}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@61
    move-result v3

    #@62
    .line 178
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundleToFill"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 212
    const-string/jumbo v0, "baseStationId"

    #@3
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 213
    const-string/jumbo v0, "baseStationLatitude"

    #@b
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 214
    const-string/jumbo v0, "baseStationLongitude"

    #@13
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@18
    .line 215
    const-string/jumbo v0, "systemId"

    #@1b
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@20
    .line 216
    const-string/jumbo v0, "networkId"

    #@23
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 211
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@2
    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@2
    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@2
    return v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@2
    return v0
.end method

.method public getSystemId()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 160
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@2
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@4
    xor-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@7
    xor-int/2addr v0, v1

    #@8
    .line 161
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@a
    .line 160
    xor-int/2addr v0, v1

    #@b
    .line 161
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@d
    .line 160
    xor-int/2addr v0, v1

    #@e
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    #@0
    .prologue
    const v3, 0x7fffffff

    #@3
    const/4 v0, 0x0

    #@4
    const/4 v2, -0x1

    #@5
    .line 223
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 224
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@b
    if-ne v1, v3, :cond_0

    #@d
    .line 225
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@f
    if-ne v1, v3, :cond_0

    #@11
    .line 226
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 227
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@17
    if-ne v1, v2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 223
    :cond_0
    return v0
.end method

.method public setCellLocationData(III)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I

    #@0
    .prologue
    .line 140
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@2
    .line 141
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@4
    .line 142
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@6
    .line 138
    return-void
.end method

.method public setCellLocationData(IIIII)V
    .locals 0
    .param p1, "baseStationId"    # I
    .param p2, "baseStationLatitude"    # I
    .param p3, "baseStationLongitude"    # I
    .param p4, "systemId"    # I
    .param p5, "networkId"    # I

    #@0
    .prologue
    .line 151
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@2
    .line 152
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@4
    .line 153
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@6
    .line 154
    iput p4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@8
    .line 155
    iput p5, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@a
    .line 149
    return-void
.end method

.method public setStateInvalid()V
    .locals 2

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    const/4 v0, -0x1

    #@4
    .line 127
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    #@6
    .line 128
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@8
    .line 129
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@a
    .line 130
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@c
    .line 131
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@e
    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 188
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
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

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
    .line 189
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    #@1b
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 189
    const-string/jumbo v1, ","

    #@22
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 190
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    #@28
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 190
    const-string/jumbo v1, ","

    #@2f
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 191
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    #@35
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 191
    const-string/jumbo v1, ","

    #@3c
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 192
    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    #@42
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 192
    const-string/jumbo v1, "]"

    #@49
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method
