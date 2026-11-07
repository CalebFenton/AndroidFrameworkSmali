.class public abstract Landroid/hardware/tv/tuner/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/tv/tuner/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDemuxCaps:I = 0x4

.field static final blacklist TRANSACTION_getDemuxIds:I = 0xe

.field static final blacklist TRANSACTION_getDemuxInfo:I = 0x10

.field static final blacklist TRANSACTION_getFrontendIds:I = 0x1

.field static final blacklist TRANSACTION_getFrontendInfo:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLnbIds:I = 0x7

.field static final blacklist TRANSACTION_getMaxNumberOfFrontends:I = 0xc

.field static final blacklist TRANSACTION_isLnaSupported:I = 0xd

.field static final blacklist TRANSACTION_openDemux:I = 0x3

.field static final blacklist TRANSACTION_openDemuxById:I = 0xf

.field static final blacklist TRANSACTION_openDescrambler:I = 0x5

.field static final blacklist TRANSACTION_openFrontendById:I = 0x2

.field static final blacklist TRANSACTION_openLnbById:I = 0x8

.field static final blacklist TRANSACTION_openLnbByName:I = 0x9

.field static final blacklist TRANSACTION_setLna:I = 0xa

.field static final blacklist TRANSACTION_setMaxNumberOfFrontends:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->markVintfStability()V

    .line 107
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/ITuner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_4

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/ITuner;

    if-eqz v1, :cond_14

    .line 120
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/ITuner;

    return-object v1

    .line 122
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 126
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    sget-object v0, Landroid/hardware/tv/tuner/ITuner$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v2

    .line 138
    :cond_16
    if-ne p1, v1, :cond_23

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return v2

    .line 143
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v2

    .line 148
    :cond_33
    const-string v1, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_186

    .line 312
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 303
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxInfo(I)Landroid/hardware/tv/tuner/DemuxInfo;

    move-result-object v3

    .line 306
    .local v3, "_result":Landroid/hardware/tv/tuner/DemuxInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto/16 :goto_184

    .line 293
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/DemuxInfo;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDemuxById(I)Landroid/hardware/tv/tuner/IDemux;

    move-result-object v3

    .line 296
    .local v3, "_result":Landroid/hardware/tv/tuner/IDemux;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 298
    goto/16 :goto_184

    .line 285
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/IDemux;
    :pswitch_66
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxIds()[I

    move-result-object v1

    .line 286
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 288
    goto/16 :goto_184

    .line 278
    .end local v1    # "_result":[I
    :pswitch_72
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->isLnaSupported()Z

    move-result v1

    .line 279
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    goto/16 :goto_184

    .line 269
    .end local v1    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getMaxNumberOfFrontends(I)I

    move-result v3

    .line 272
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    goto/16 :goto_184

    .line 258
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v1, v3}, Landroid/hardware/tv/tuner/ITuner$Stub;->setMaxNumberOfFrontends(II)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_184

    .line 249
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 250
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->setLna(Z)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto/16 :goto_184

    .line 229
    .end local v1    # "_arg0":Z
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 232
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_d5

    .line 234
    if-gez v5, :cond_c1

    .line 235
    const/4 v1, 0x0

    .local v1, "_arg1":[I
    goto :goto_c3

    .line 237
    .end local v1    # "_arg1":[I
    :cond_c1
    new-array v1, v5, [I

    .line 239
    .restart local v1    # "_arg1":[I
    :goto_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v4, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbByName(Ljava/lang/String;[I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object v3

    .line 241
    .local v3, "_result":Landroid/hardware/tv/tuner/ILnb;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 243
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 244
    goto/16 :goto_184

    .line 233
    .end local v1    # "_arg1":[I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/ILnb;
    :cond_d5
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1_length":I
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openLnbById(I)Landroid/hardware/tv/tuner/ILnb;

    move-result-object v3

    .line 222
    .restart local v3    # "_result":Landroid/hardware/tv/tuner/ILnb;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 224
    goto/16 :goto_184

    .line 211
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/ILnb;
    :pswitch_ff
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getLnbIds()[I

    move-result-object v1

    .line 212
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 214
    goto/16 :goto_184

    .line 202
    .end local v1    # "_result":[I
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendInfo(I)Landroid/hardware/tv/tuner/FrontendInfo;

    move-result-object v3

    .line 205
    .local v3, "_result":Landroid/hardware/tv/tuner/FrontendInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    goto :goto_184

    .line 194
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/FrontendInfo;
    :pswitch_11d
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDescrambler()Landroid/hardware/tv/tuner/IDescrambler;

    move-result-object v1

    .line 195
    .local v1, "_result":Landroid/hardware/tv/tuner/IDescrambler;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 197
    goto :goto_184

    .line 187
    .end local v1    # "_result":Landroid/hardware/tv/tuner/IDescrambler;
    :pswitch_128
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getDemuxCaps()Landroid/hardware/tv/tuner/DemuxCapabilities;

    move-result-object v1

    .line 188
    .local v1, "_result":Landroid/hardware/tv/tuner/DemuxCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_184

    .line 170
    .end local v1    # "_result":Landroid/hardware/tv/tuner/DemuxCapabilities;
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 171
    .local v4, "_arg0_length":I
    if-gt v4, v3, :cond_150

    .line 173
    if-gez v4, :cond_13d

    .line 174
    const/4 v1, 0x0

    .local v1, "_arg0":[I
    goto :goto_13f

    .line 176
    .end local v1    # "_arg0":[I
    :cond_13d
    new-array v1, v4, [I

    .line 178
    .restart local v1    # "_arg0":[I
    :goto_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openDemux([I)Landroid/hardware/tv/tuner/IDemux;

    move-result-object v3

    .line 180
    .local v3, "_result":Landroid/hardware/tv/tuner/IDemux;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 182
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 183
    goto :goto_184

    .line 172
    .end local v1    # "_arg0":[I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/IDemux;
    :cond_150
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v4    # "_arg0_length":I
    :pswitch_167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/ITuner$Stub;->openFrontendById(I)Landroid/hardware/tv/tuner/IFrontend;

    move-result-object v3

    .line 163
    .local v3, "_result":Landroid/hardware/tv/tuner/IFrontend;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 165
    goto :goto_184

    .line 152
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/tv/tuner/IFrontend;
    :pswitch_179
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/ITuner$Stub;->getFrontendIds()[I

    move-result-object v1

    .line 153
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 155
    nop

    .line 315
    .end local v1    # "_result":[I
    :goto_184
    return v2

    nop

    :pswitch_data_186
    .packed-switch 0x1
        :pswitch_179
        :pswitch_167
        :pswitch_133
        :pswitch_128
        :pswitch_11d
        :pswitch_10b
        :pswitch_ff
        :pswitch_ec
        :pswitch_b3
        :pswitch_a4
        :pswitch_91
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_53
        :pswitch_40
    .end packed-switch
.end method
