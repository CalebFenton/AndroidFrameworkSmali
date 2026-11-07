.class public abstract Landroid/hardware/tv/tuner/IFrontend$Stub;
.super Landroid/os/Binder;
.source "IFrontend.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x4

.field static final blacklist TRANSACTION_getFrontendStatusReadiness:I = 0xd

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0xb

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getStatus:I = 0x7

.field static final blacklist TRANSACTION_linkCiCam:I = 0x9

.field static final blacklist TRANSACTION_removeOutputPid:I = 0xc

.field static final blacklist TRANSACTION_scan:I = 0x5

.field static final blacklist TRANSACTION_setCallback:I = 0x1

.field static final blacklist TRANSACTION_setLnb:I = 0x8

.field static final blacklist TRANSACTION_stopScan:I = 0x6

.field static final blacklist TRANSACTION_stopTune:I = 0x3

.field static final blacklist TRANSACTION_tune:I = 0x2

.field static final blacklist TRANSACTION_unlinkCiCam:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->markVintfStability()V

    .line 88
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontend;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFrontend;

    if-eqz v1, :cond_14

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFrontend;

    return-object v1

    .line 103
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFrontend$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 107
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

    .line 111
    sget-object v0, Landroid/hardware/tv/tuner/IFrontend$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 112
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v2

    .line 119
    :cond_16
    if-ne p1, v1, :cond_23

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v2

    .line 124
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v2

    .line 129
    :cond_33
    packed-switch p1, :pswitch_data_fc

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 235
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 236
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getFrontendStatusReadiness([I)[I

    move-result-object v3

    .line 238
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    goto/16 :goto_fa

    .line 226
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":[I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->removeOutputPid(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto/16 :goto_fa

    .line 218
    .end local v1    # "_arg0":I
    :pswitch_5d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getHardwareInfo()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    goto/16 :goto_fa

    .line 210
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->unlinkCiCam(I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto/16 :goto_fa

    .line 200
    .end local v1    # "_arg0":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->linkCiCam(I)I

    move-result v3

    .line 203
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    goto/16 :goto_fa

    .line 191
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 192
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setLnb(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_fa

    .line 181
    .end local v1    # "_arg0":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 182
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->getStatus([I)[Landroid/hardware/tv/tuner/FrontendStatus;

    move-result-object v3

    .line 184
    .local v3, "_result":[Landroid/hardware/tv/tuner/FrontendStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 186
    goto :goto_fa

    .line 174
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":[Landroid/hardware/tv/tuner/FrontendStatus;
    :pswitch_ab
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopScan()V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_fa

    .line 164
    :pswitch_b2
    sget-object v1, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendSettings;

    .line 166
    .local v1, "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v1, v3}, Landroid/hardware/tv/tuner/IFrontend$Stub;->scan(Landroid/hardware/tv/tuner/FrontendSettings;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_fa

    .line 157
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    .end local v3    # "_arg1":I
    :pswitch_c8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->close()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_fa

    .line 151
    :pswitch_cf
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontend$Stub;->stopTune()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_fa

    .line 143
    :pswitch_d6
    sget-object v1, Landroid/hardware/tv/tuner/FrontendSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/FrontendSettings;

    .line 144
    .restart local v1    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->tune(Landroid/hardware/tv/tuner/FrontendSettings;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_fa

    .line 134
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/FrontendSettings;
    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontendCallback;

    move-result-object v1

    .line 135
    .local v1, "_arg0":Landroid/hardware/tv/tuner/IFrontendCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontend$Stub;->setCallback(Landroid/hardware/tv/tuner/IFrontendCallback;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    nop

    .line 247
    .end local v1    # "_arg0":Landroid/hardware/tv/tuner/IFrontendCallback;
    :goto_fa
    return v2

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_d6
        :pswitch_cf
        :pswitch_c8
        :pswitch_b2
        :pswitch_ab
        :pswitch_99
        :pswitch_8b
        :pswitch_78
        :pswitch_69
        :pswitch_5d
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
