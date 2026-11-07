.class public abstract Landroid/media/ISoundDose$Stub;
.super Landroid/os/Binder;
.source "ISoundDose.java"

# interfaces
.implements Landroid/media/ISoundDose;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ISoundDose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ISoundDose$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0xb

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0xa

.field static final blacklist TRANSACTION_getCsd:I = 0x8

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x7

.field static final blacklist TRANSACTION_initCachedAudioDeviceCategories:I = 0x5

.field static final blacklist TRANSACTION_isSoundDoseHalSupported:I = 0x9

.field static final blacklist TRANSACTION_resetCsd:I = 0x2

.field static final blacklist TRANSACTION_setAudioDeviceCategory:I = 0x6

.field static final blacklist TRANSACTION_setCsdEnabled:I = 0x4

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x1

.field static final blacklist TRANSACTION_updateAttenuation:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.media.ISoundDose"

    invoke-virtual {p0, p0, v0}, Landroid/media/ISoundDose$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ISoundDose;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    const-string v0, "android.media.ISoundDose"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/ISoundDose;

    if-eqz v1, :cond_14

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/media/ISoundDose;

    return-object v1

    .line 126
    :cond_14
    new-instance v1, Landroid/media/ISoundDose$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ISoundDose$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 130
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "android.media.ISoundDose"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_16
    packed-switch p1, :pswitch_data_ae

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 228
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 229
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 231
    goto/16 :goto_ad

    .line 220
    .end local v2    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 221
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->forceUseFrameworkMel(Z)V

    .line 223
    goto/16 :goto_ad

    .line 212
    .end local v2    # "_arg0":Z
    :pswitch_36
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->isSoundDoseHalSupported()Z

    move-result v2

    .line 213
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto :goto_ad

    .line 205
    .end local v2    # "_result":Z
    :pswitch_41
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->getCsd()F

    move-result v2

    .line 206
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 208
    goto :goto_ad

    .line 198
    .end local v2    # "_result":F
    :pswitch_4c
    invoke-virtual {p0}, Landroid/media/ISoundDose$Stub;->getOutputRs2UpperBound()F

    move-result v2

    .line 199
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    goto :goto_ad

    .line 191
    .end local v2    # "_result":F
    :pswitch_57
    sget-object v2, Landroid/media/ISoundDose$AudioDeviceCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 192
    .local v2, "_arg0":Landroid/media/ISoundDose$AudioDeviceCategory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->setAudioDeviceCategory(Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 194
    goto :goto_ad

    .line 183
    .end local v2    # "_arg0":Landroid/media/ISoundDose$AudioDeviceCategory;
    :pswitch_66
    sget-object v2, Landroid/media/ISoundDose$AudioDeviceCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ISoundDose$AudioDeviceCategory;

    .line 184
    .local v2, "_arg0":[Landroid/media/ISoundDose$AudioDeviceCategory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 186
    goto :goto_ad

    .line 175
    .end local v2    # "_arg0":[Landroid/media/ISoundDose$AudioDeviceCategory;
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 176
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->setCsdEnabled(Z)V

    .line 178
    goto :goto_ad

    .line 165
    .end local v2    # "_arg0":Z
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 167
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/media/ISoundDose$Stub;->updateAttenuation(FI)V

    .line 170
    goto :goto_ad

    .line 155
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 157
    .restart local v2    # "_arg0":F
    sget-object v3, Landroid/media/SoundDoseRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/SoundDoseRecord;

    .line 158
    .local v3, "_arg1":[Landroid/media/SoundDoseRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/media/ISoundDose$Stub;->resetCsd(F[Landroid/media/SoundDoseRecord;)V

    .line 160
    goto :goto_ad

    .line 147
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":[Landroid/media/SoundDoseRecord;
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 148
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/media/ISoundDose$Stub;->setOutputRs2UpperBound(F)V

    .line 150
    nop

    .line 238
    .end local v2    # "_arg0":F
    :goto_ad
    return v1

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_8f
        :pswitch_80
        :pswitch_75
        :pswitch_66
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
