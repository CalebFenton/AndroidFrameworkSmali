.class public abstract Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger3/ISoundTriggerHw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger3/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forceRecognitionEvent:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getParameter:I = 0xa

.field static final blacklist TRANSACTION_getProperties:I = 0x1

.field static final blacklist TRANSACTION_loadPhraseSoundModel:I = 0x4

.field static final blacklist TRANSACTION_loadSoundModel:I = 0x3

.field static final blacklist TRANSACTION_queryParameter:I = 0x9

.field static final blacklist TRANSACTION_registerGlobalCallback:I = 0x2

.field static final blacklist TRANSACTION_setParameter:I = 0xb

.field static final blacklist TRANSACTION_startRecognition:I = 0x6

.field static final blacklist TRANSACTION_stopRecognition:I = 0x7

.field static final blacklist TRANSACTION_unloadSoundModel:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->markVintfStability()V

    .line 82
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHw;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_4
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    if-eqz v1, :cond_14

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    return-object v1

    .line 97
    :cond_14
    new-instance v1, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
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

    .line 105
    sget-object v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 113
    :cond_16
    if-ne p1, v1, :cond_23

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v2

    .line 118
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 123
    :cond_33
    packed-switch p1, :pswitch_data_124

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 234
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 239
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->setParameter(III)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_123

    .line 222
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->getParameter(II)I

    move-result v4

    .line 227
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    goto/16 :goto_123

    .line 210
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v4

    .line 215
    .local v4, "_result":Landroid/media/soundtrigger/ModelParameterRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 217
    goto/16 :goto_123

    .line 201
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/media/soundtrigger/ModelParameterRange;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->forceRecognitionEvent(I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto/16 :goto_123

    .line 192
    .end local v1    # "_arg0":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->stopRecognition(I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto/16 :goto_123

    .line 177
    .end local v1    # "_arg0":I
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .local v4, "_arg2":I
    sget-object v5, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/soundtrigger/RecognitionConfig;

    .line 184
    .local v5, "_arg3":Landroid/media/soundtrigger/RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_123

    .line 168
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/media/soundtrigger/RecognitionConfig;
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->unloadSoundModel(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_123

    .line 156
    .end local v1    # "_arg0":I
    :pswitch_ca
    sget-object v1, Landroid/media/soundtrigger/PhraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/PhraseSoundModel;

    .line 158
    .local v1, "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    move-result-object v3

    .line 159
    .local v3, "_arg1":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result v4

    .line 161
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    goto :goto_123

    .line 144
    .end local v1    # "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    .end local v4    # "_result":I
    :pswitch_e8
    sget-object v1, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundModel;

    .line 146
    .local v1, "_arg0":Landroid/media/soundtrigger/SoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg1":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v1, v3}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->loadSoundModel(Landroid/media/soundtrigger/SoundModel;Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;)I

    move-result v4

    .line 149
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_123

    .line 135
    .end local v1    # "_arg0":Landroid/media/soundtrigger/SoundModel;
    .end local v3    # "_arg1":Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;
    .end local v4    # "_result":I
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    move-result-object v1

    .line 136
    .local v1, "_arg0":Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v1}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->registerGlobalCallback(Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_123

    .line 127
    .end local v1    # "_arg0":Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;
    :pswitch_118
    invoke-virtual {p0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->getProperties()Landroid/media/soundtrigger/Properties;

    move-result-object v1

    .line 128
    .local v1, "_result":Landroid/media/soundtrigger/Properties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    nop

    .line 249
    .end local v1    # "_result":Landroid/media/soundtrigger/Properties;
    :goto_123
    return v2

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_118
        :pswitch_106
        :pswitch_e8
        :pswitch_ca
        :pswitch_bc
        :pswitch_9e
        :pswitch_8f
        :pswitch_80
        :pswitch_69
        :pswitch_52
        :pswitch_3b
    .end packed-switch
.end method
