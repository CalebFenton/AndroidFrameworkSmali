.class public abstract Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerDetectionService.java"

# interfaces
.implements Landroid/media/soundtrigger/ISoundTriggerDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/ISoundTriggerDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger.ISoundTriggerDetectionService"

.field static final greylist-max-o TRANSACTION_onError:I = 0x4

.field static final greylist-max-o TRANSACTION_onGenericRecognitionEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_onStopOperation:I = 0x5

.field static final greylist-max-o TRANSACTION_removeClient:I = 0x2

.field static final greylist-max-o TRANSACTION_setClient:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_14

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "onStopOperation"

    return-object v0

    .line 87
    :pswitch_8
    const-string v0, "onError"

    return-object v0

    .line 83
    :pswitch_b
    const-string v0, "onGenericRecognitionEvent"

    return-object v0

    .line 79
    :pswitch_e
    const-string v0, "removeClient"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "setClient"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 270
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "android.media.soundtrigger.ISoundTriggerDetectionService"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_92

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_1e
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 165
    .local v2, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onStopOperation(Landroid/os/ParcelUuid;I)V

    .line 168
    goto :goto_91

    .line 151
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    :pswitch_31
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 153
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onError(Landroid/os/ParcelUuid;II)V

    .line 158
    goto :goto_91

    .line 139
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_48
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 141
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 144
    .local v4, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 146
    goto :goto_91

    .line 131
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;
    :pswitch_63
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 132
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->removeClient(Landroid/os/ParcelUuid;)V

    .line 134
    goto :goto_91

    .line 119
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    :pswitch_72
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 121
    .restart local v2    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 123
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    move-result-object v4

    .line 124
    .local v4, "_arg2":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    .line 126
    nop

    .line 175
    .end local v2    # "_arg0":Landroid/os/ParcelUuid;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;
    :goto_91
    return v1

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_72
        :pswitch_63
        :pswitch_48
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
