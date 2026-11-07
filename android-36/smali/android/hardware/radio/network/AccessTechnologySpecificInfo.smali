.class public final Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
.super Ljava/lang/Object;
.source "AccessTechnologySpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/AccessTechnologySpecificInfo$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/AccessTechnologySpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist cdmaInfo:I = 0x1

.field public static final blacklist eutranInfo:I = 0x2

.field public static final blacklist geranDtmSupported:I = 0x4

.field public static final blacklist ngranNrVopsInfo:I = 0x3

.field public static final blacklist noinit:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/AccessTechnologySpecificInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 231
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 234
    return-void

    .line 232
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tagString(I)Ljava/lang/String;

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

    .line 248
    iput p1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 249
    iput-object p2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 250
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 237
    packed-switch p1, :pswitch_data_2c

    .line 244
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

    .line 242
    :pswitch_1c
    const-string v0, "geranDtmSupported"

    return-object v0

    .line 241
    :pswitch_1f
    const-string v0, "ngranNrVopsInfo"

    return-object v0

    .line 240
    :pswitch_22
    const-string v0, "eutranInfo"

    return-object v0

    .line 239
    :pswitch_25
    const-string v0, "cdmaInfo"

    return-object v0

    .line 238
    :pswitch_28
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist cdmaInfo(Landroid/hardware/radio/network/Cdma2000RegistrationInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 213
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 214
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 216
    :cond_10
    return v0
.end method

.method public static blacklist eutranInfo(Landroid/hardware/radio/network/EutranRegistrationInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 76
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist geranDtmSupported(Z)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 4
    .param p0, "_value"    # Z

    .line 112
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist ngranNrVopsInfo(Landroid/hardware/radio/network/NrVopsInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/NrVopsInfo;

    .line 96
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist noinit(Z)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 4
    .param p0, "_value"    # Z

    .line 44
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_27

    .line 206
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_27

    .line 203
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 204
    goto :goto_27

    .line 200
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 201
    nop

    .line 209
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    .registers 2

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 66
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    return-object v0
.end method

.method public blacklist getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;
    .registers 2

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/EutranRegistrationInfo;

    return-object v0
.end method

.method public blacklist getGeranDtmSupported()Z
    .registers 2

    .line 116
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 117
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;
    .registers 2

    .line 100
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 101
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/NrVopsInfo;

    return-object v0
.end method

.method public blacklist getNoinit()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_5c

    .line 192
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

    .line 188
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 189
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 190
    return-void

    .line 183
    .end local v1    # "_aidl_value":Z
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/network/NrVopsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/NrVopsInfo;

    .line 184
    .local v1, "_aidl_value":Landroid/hardware/radio/network/NrVopsInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 178
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/NrVopsInfo;
    :pswitch_38
    sget-object v1, Landroid/hardware/radio/network/EutranRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 179
    .local v1, "_aidl_value":Landroid/hardware/radio/network/EutranRegistrationInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 180
    return-void

    .line 173
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/EutranRegistrationInfo;
    :pswitch_44
    sget-object v1, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    .line 174
    .local v1, "_aidl_value":Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 175
    return-void

    .line 168
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 169
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 170
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setCdmaInfo(Landroid/hardware/radio/network/Cdma2000RegistrationInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public blacklist setEutranInfo(Landroid/hardware/radio/network/EutranRegistrationInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public blacklist setGeranDtmSupported(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 121
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public blacklist setNgranNrVopsInfo(Landroid/hardware/radio/network/NrVopsInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/NrVopsInfo;

    .line 105
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public blacklist setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 53
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 221
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_ba

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessTechnologySpecificInfo.geranDtmSupported("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessTechnologySpecificInfo.ngranNrVopsInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

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

    .line 224
    :pswitch_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessTechnologySpecificInfo.eutranInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

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

    .line 223
    :pswitch_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessTechnologySpecificInfo.cdmaInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

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

    .line 222
    :pswitch_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessTechnologySpecificInfo.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_7e
        :pswitch_5e
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 142
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 157
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_33

    .line 154
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_33

    .line 151
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    goto :goto_33

    .line 148
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 149
    goto :goto_33

    .line 145
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    nop

    .line 160
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
