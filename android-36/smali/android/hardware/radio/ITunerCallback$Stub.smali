.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final greylist-max-o TRANSACTION_onAntennaState:I = 0x7

.field static final greylist-max-o TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x8

.field static final greylist-max-o TRANSACTION_onBackgroundScanComplete:I = 0x9

.field static final blacklist TRANSACTION_onConfigFlagUpdated:I = 0xc

.field static final greylist-max-o TRANSACTION_onConfigurationChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onCurrentProgramInfoChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onEmergencyAnnouncement:I = 0x6

.field static final greylist-max-o TRANSACTION_onError:I = 0x1

.field static final greylist-max-o TRANSACTION_onParametersUpdated:I = 0xd

.field static final greylist-max-o TRANSACTION_onProgramListChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onProgramListUpdated:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrafficAnnouncement:I = 0x5

.field static final greylist-max-o TRANSACTION_onTuneFailed:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_4
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_14

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITunerCallback;

    return-object v1

    .line 101
    :cond_14
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 110
    packed-switch p0, :pswitch_data_2c

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_5
    const-string v0, "onParametersUpdated"

    return-object v0

    .line 158
    :pswitch_8
    const-string v0, "onConfigFlagUpdated"

    return-object v0

    .line 154
    :pswitch_b
    const-string v0, "onProgramListUpdated"

    return-object v0

    .line 150
    :pswitch_e
    const-string v0, "onProgramListChanged"

    return-object v0

    .line 146
    :pswitch_11
    const-string v0, "onBackgroundScanComplete"

    return-object v0

    .line 142
    :pswitch_14
    const-string v0, "onBackgroundScanAvailabilityChange"

    return-object v0

    .line 138
    :pswitch_17
    const-string v0, "onAntennaState"

    return-object v0

    .line 134
    :pswitch_1a
    const-string v0, "onEmergencyAnnouncement"

    return-object v0

    .line 130
    :pswitch_1d
    const-string v0, "onTrafficAnnouncement"

    return-object v0

    .line 126
    :pswitch_20
    const-string v0, "onCurrentProgramInfoChanged"

    return-object v0

    .line 122
    :pswitch_23
    const-string v0, "onConfigurationChanged"

    return-object v0

    .line 118
    :pswitch_26
    const-string v0, "onTuneFailed"

    return-object v0

    .line 114
    :pswitch_29
    const-string v0, "onError"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 522
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/hardware/radio/ITunerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 177
    const-string v0, "android.hardware.radio.ITunerCallback"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_16
    packed-switch p1, :pswitch_data_d2

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 285
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "N":I
    if-gez v2, :cond_26

    const/4 v3, 0x0

    goto :goto_2b

    :cond_26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v3, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2b
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v3}, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 294
    .end local v2    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/Map;)V

    .line 296
    goto/16 :goto_d0

    .line 274
    .end local v3    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 277
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigFlagUpdated(IZ)V

    .line 279
    goto/16 :goto_d0

    .line 266
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_50
    sget-object v2, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    .line 267
    .local v2, "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 269
    goto/16 :goto_d0

    .line 260
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    :pswitch_60
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 261
    goto :goto_d0

    .line 255
    :pswitch_64
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 256
    goto :goto_d0

    .line 248
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 249
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 251
    goto :goto_d0

    .line 240
    .end local v2    # "_arg0":Z
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 241
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 243
    goto :goto_d0

    .line 232
    .end local v2    # "_arg0":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 233
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 235
    goto :goto_d0

    .line 224
    .end local v2    # "_arg0":Z
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 225
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 227
    goto :goto_d0

    .line 216
    .end local v2    # "_arg0":Z
    :pswitch_94
    sget-object v2, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 217
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 219
    goto :goto_d0

    .line 208
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :pswitch_a3
    sget-object v2, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 209
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 211
    goto :goto_d0

    .line 198
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector;

    .line 201
    .local v3, "_arg1":Landroid/hardware/radio/ProgramSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    .line 203
    goto :goto_d0

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/ProgramSelector;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 193
    nop

    .line 303
    .end local v2    # "_arg0":I
    :goto_d0
    return v1

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_b2
        :pswitch_a3
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_50
        :pswitch_40
        :pswitch_1e
    .end packed-switch
.end method
