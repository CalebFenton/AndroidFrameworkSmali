.class public final Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
.super Ljava/lang/Object;
.source "CellInfoRatSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/CellInfoRatSpecificInfo$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/CellInfoRatSpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist cdma:I = 0x5

.field public static final blacklist gsm:I = 0x0

.field public static final blacklist lte:I = 0x3

.field public static final blacklist nr:I = 0x4

.field public static final blacklist tdscdma:I = 0x2

.field public static final blacklist wcdma:I = 0x1


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "_value":Landroid/hardware/radio/network/CellInfoGsm;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    .line 26
    iput-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    .line 35
    iput-object p2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/CellInfoRatSpecificInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 263
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 266
    return-void

    .line 264
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 281
    iput p1, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    .line 282
    iput-object p2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    .line 283
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 269
    packed-switch p1, :pswitch_data_2e

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :pswitch_1c
    const-string v0, "cdma"

    return-object v0

    .line 274
    :pswitch_1f
    const-string v0, "nr"

    return-object v0

    .line 273
    :pswitch_22
    const-string v0, "lte"

    return-object v0

    .line 272
    :pswitch_25
    const-string v0, "tdscdma"

    return-object v0

    .line 271
    :pswitch_28
    const-string v0, "wcdma"

    return-object v0

    .line 270
    :pswitch_2b
    const-string v0, "gsm"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist cdma(Landroid/hardware/radio/network/CellInfoCdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoCdma;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 244
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 245
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 247
    :cond_10
    return v0
.end method

.method public static blacklist gsm(Landroid/hardware/radio/network/CellInfoGsm;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoGsm;

    .line 46
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lte(Landroid/hardware/radio/network/CellInfoLte;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoLte;

    .line 91
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist nr(Landroid/hardware/radio/network/CellInfoNr;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoNr;

    .line 106
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tdscdma(Landroid/hardware/radio/network/CellInfoTdscdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoTdscdma;

    .line 76
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist wcdma(Landroid/hardware/radio/network/CellInfoWcdma;)Landroid/hardware/radio/network/CellInfoRatSpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellInfoWcdma;

    .line 61
    new-instance v0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_45

    .line 237
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    .line 234
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 235
    goto :goto_45

    .line 231
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 232
    goto :goto_45

    .line 228
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 229
    goto :goto_45

    .line 225
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 226
    goto :goto_45

    .line 222
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 223
    nop

    .line 240
    :goto_45
    return v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getCdma()Landroid/hardware/radio/network/CellInfoCdma;
    .registers 2

    .line 130
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 131
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoCdma;

    return-object v0
.end method

.method public blacklist getGsm()Landroid/hardware/radio/network/CellInfoGsm;
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 51
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoGsm;

    return-object v0
.end method

.method public blacklist getLte()Landroid/hardware/radio/network/CellInfoLte;
    .registers 2

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 96
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoLte;

    return-object v0
.end method

.method public blacklist getNr()Landroid/hardware/radio/network/CellInfoNr;
    .registers 2

    .line 110
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 111
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoNr;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    return v0
.end method

.method public blacklist getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;
    .registers 2

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoTdscdma;

    return-object v0
.end method

.method public blacklist getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;
    .registers 2

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_assertTag(I)V

    .line 66
    iget-object v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellInfoWcdma;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_68

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :pswitch_20
    sget-object v1, Landroid/hardware/radio/network/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoCdma;

    .line 211
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoCdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 212
    return-void

    .line 205
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellInfoCdma;
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/network/CellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoNr;

    .line 206
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoNr;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 207
    return-void

    .line 200
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellInfoNr;
    :pswitch_38
    sget-object v1, Landroid/hardware/radio/network/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoLte;

    .line 201
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoLte;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 202
    return-void

    .line 195
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellInfoLte;
    :pswitch_44
    sget-object v1, Landroid/hardware/radio/network/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoTdscdma;

    .line 196
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoTdscdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 197
    return-void

    .line 190
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellInfoTdscdma;
    :pswitch_50
    sget-object v1, Landroid/hardware/radio/network/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoWcdma;

    .line 191
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoWcdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 192
    return-void

    .line 185
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellInfoWcdma;
    :pswitch_5c
    sget-object v1, Landroid/hardware/radio/network/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellInfoGsm;

    .line 186
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellInfoGsm;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 187
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setCdma(Landroid/hardware/radio/network/CellInfoCdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoCdma;

    .line 135
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public blacklist setGsm(Landroid/hardware/radio/network/CellInfoGsm;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoGsm;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public blacklist setLte(Landroid/hardware/radio/network/CellInfoLte;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoLte;

    .line 100
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public blacklist setNr(Landroid/hardware/radio/network/CellInfoNr;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoNr;

    .line 115
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public blacklist setTdscdma(Landroid/hardware/radio/network/CellInfoTdscdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoTdscdma;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public blacklist setWcdma(Landroid/hardware/radio/network/CellInfoWcdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellInfoWcdma;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 252
    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_e2

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoRatSpecificInfo.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_a2
        :pswitch_82
        :pswitch_62
        :pswitch_42
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 156
    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 174
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getCdma()Landroid/hardware/radio/network/CellInfoCdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    .line 171
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getNr()Landroid/hardware/radio/network/CellInfoNr;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    goto :goto_3b

    .line 168
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getLte()Landroid/hardware/radio/network/CellInfoLte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    goto :goto_3b

    .line 165
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getTdscdma()Landroid/hardware/radio/network/CellInfoTdscdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 166
    goto :goto_3b

    .line 162
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getWcdma()Landroid/hardware/radio/network/CellInfoWcdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 163
    goto :goto_3b

    .line 159
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellInfoRatSpecificInfo;->getGsm()Landroid/hardware/radio/network/CellInfoGsm;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    nop

    .line 177
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
