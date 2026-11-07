.class public final Landroid/hardware/radio/network/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/CellIdentity$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist cdma:I = 0x4

.field public static final blacklist gsm:I = 0x1

.field public static final blacklist lte:I = 0x5

.field public static final blacklist noinit:I = 0x0

.field public static final blacklist nr:I = 0x6

.field public static final blacklist tdscdma:I = 0x3

.field public static final blacklist wcdma:I = 0x2


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 158
    new-instance v0, Landroid/hardware/radio/network/CellIdentity$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 39
    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/CellIdentity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 287
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 290
    return-void

    .line 288
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/CellIdentity;->_tagString(I)Ljava/lang/String;

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

    .line 306
    iput p1, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    .line 307
    iput-object p2, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    .line 308
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 293
    packed-switch p1, :pswitch_data_32

    .line 302
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

    .line 300
    :pswitch_1c
    const-string v0, "nr"

    return-object v0

    .line 299
    :pswitch_1f
    const-string v0, "lte"

    return-object v0

    .line 298
    :pswitch_22
    const-string v0, "cdma"

    return-object v0

    .line 297
    :pswitch_25
    const-string v0, "tdscdma"

    return-object v0

    .line 296
    :pswitch_28
    const-string v0, "wcdma"

    return-object v0

    .line 295
    :pswitch_2b
    const-string v0, "gsm"

    return-object v0

    .line 294
    :pswitch_2e
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist cdma(Landroid/hardware/radio/network/CellIdentityCdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityCdma;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 267
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 268
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 270
    :cond_10
    return v0
.end method

.method public static blacklist gsm(Landroid/hardware/radio/network/CellIdentityGsm;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityGsm;

    .line 64
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist lte(Landroid/hardware/radio/network/CellIdentityLte;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityLte;

    .line 126
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/CellIdentity;
    .registers 4
    .param p0, "_value"    # Z

    .line 49
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist nr(Landroid/hardware/radio/network/CellIdentityNr;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityNr;

    .line 141
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist tdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 94
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist wcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)Landroid/hardware/radio/network/CellIdentity;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 79
    new-instance v0, Landroid/hardware/radio/network/CellIdentity;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/CellIdentity;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_45

    .line 260
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_45

    .line 257
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 258
    goto :goto_45

    .line 254
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 255
    goto :goto_45

    .line 251
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 252
    goto :goto_45

    .line 248
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 249
    goto :goto_45

    .line 245
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/CellIdentity;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 246
    nop

    .line 263
    :goto_45
    return v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_31
        :pswitch_27
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getCdma()Landroid/hardware/radio/network/CellIdentityCdma;
    .registers 2

    .line 115
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 116
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityCdma;

    return-object v0
.end method

.method public blacklist getGsm()Landroid/hardware/radio/network/CellIdentityGsm;
    .registers 2

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 69
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityGsm;

    return-object v0
.end method

.method public blacklist getLte()Landroid/hardware/radio/network/CellIdentityLte;
    .registers 2

    .line 130
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 131
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityLte;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 54
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getNr()Landroid/hardware/radio/network/CellIdentityNr;
    .registers 2

    .line 145
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 146
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityNr;

    return-object v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    return v0
.end method

.method public blacklist getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;
    .registers 2

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 99
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityTdscdma;

    return-object v0
.end method

.method public blacklist getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;
    .registers 2

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/CellIdentity;->_assertTag(I)V

    .line 84
    iget-object v0, p0, Landroid/hardware/radio/network/CellIdentity;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/CellIdentityWcdma;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_74

    .line 237
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

    .line 233
    :pswitch_20
    sget-object v1, Landroid/hardware/radio/network/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityNr;

    .line 234
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityNr;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 235
    return-void

    .line 228
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityNr;
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/network/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityLte;

    .line 229
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityLte;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 230
    return-void

    .line 223
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityLte;
    :pswitch_38
    sget-object v1, Landroid/hardware/radio/network/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityCdma;

    .line 224
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityCdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 225
    return-void

    .line 218
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityCdma;
    :pswitch_44
    sget-object v1, Landroid/hardware/radio/network/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 219
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityTdscdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 220
    return-void

    .line 213
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityTdscdma;
    :pswitch_50
    sget-object v1, Landroid/hardware/radio/network/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 214
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityWcdma;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 215
    return-void

    .line 208
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityWcdma;
    :pswitch_5c
    sget-object v1, Landroid/hardware/radio/network/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentityGsm;

    .line 209
    .local v1, "_aidl_value":Landroid/hardware/radio/network/CellIdentityGsm;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 210
    return-void

    .line 203
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/CellIdentityGsm;
    :pswitch_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 204
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 205
    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setCdma(Landroid/hardware/radio/network/CellIdentityCdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityCdma;

    .line 120
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public blacklist setGsm(Landroid/hardware/radio/network/CellIdentityGsm;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityGsm;

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public blacklist setLte(Landroid/hardware/radio/network/CellIdentityLte;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityLte;

    .line 135
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 136
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 58
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public blacklist setNr(Landroid/hardware/radio/network/CellIdentityNr;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityNr;

    .line 150
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 151
    return-void
.end method

.method public blacklist setTdscdma(Landroid/hardware/radio/network/CellIdentityTdscdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityTdscdma;

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public blacklist setWcdma(Landroid/hardware/radio/network/CellIdentityWcdma;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/CellIdentityWcdma;

    .line 88
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/CellIdentity;->_set(ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 275
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_fe

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

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

    .line 281
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

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

    .line 280
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

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

    .line 279
    :pswitch_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

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

    .line 278
    :pswitch_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

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

    .line 277
    :pswitch_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

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

    .line 276
    :pswitch_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIdentity.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_e2
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

    .line 171
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/hardware/radio/network/CellIdentity;->_tag:I

    packed-switch v0, :pswitch_data_44

    goto :goto_43

    .line 192
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNr()Landroid/hardware/radio/network/CellIdentityNr;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_43

    .line 189
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getLte()Landroid/hardware/radio/network/CellIdentityLte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_43

    .line 186
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getCdma()Landroid/hardware/radio/network/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_43

    .line 183
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getTdscdma()Landroid/hardware/radio/network/CellIdentityTdscdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    goto :goto_43

    .line 180
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getWcdma()Landroid/hardware/radio/network/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 181
    goto :goto_43

    .line 177
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getGsm()Landroid/hardware/radio/network/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    goto :goto_43

    .line 174
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/radio/network/CellIdentity;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    nop

    .line 195
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
