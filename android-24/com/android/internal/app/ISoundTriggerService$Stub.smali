.class public abstract Lcom/android/internal/app/ISoundTriggerService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerService.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.ISoundTriggerService"

.field static final TRANSACTION_deleteSoundModel:I = 0x3

.field static final TRANSACTION_getSoundModel:I = 0x1

.field static final TRANSACTION_startRecognition:I = 0x4

.field static final TRANSACTION_stopRecognition:I = 0x5

.field static final TRANSACTION_updateSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "com.android.internal.app.ISoundTriggerService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.ISoundTriggerService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Lcom/android/internal/app/ISoundTriggerService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/ISoundTriggerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v7

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 54
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/os/ParcelUuid;

    #@25
    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@28
    move-result-object v5

    #@29
    .line 60
    .local v5, "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 61
    if-eqz v5, :cond_1

    #@2e
    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 63
    invoke-virtual {v5, p3, v7}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    #@34
    .line 68
    :goto_1
    return v7

    #@35
    .line 57
    .end local v5    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_0
    const/4 v1, 0x0

    #@36
    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    #@37
    .line 66
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v5    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    goto :goto_1

    #@3b
    .line 72
    .end local v5    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@3e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v6

    #@45
    if-eqz v6, :cond_2

    #@47
    .line 75
    sget-object v6, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@49
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    #@4f
    .line 80
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    #@52
    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 82
    return v7

    #@56
    .line 78
    :cond_2
    const/4 v0, 0x0

    #@57
    .local v0, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    goto :goto_2

    #@58
    .line 86
    .end local v0    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@5b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v6

    #@62
    if-eqz v6, :cond_3

    #@64
    .line 89
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    check-cast v1, Landroid/os/ParcelUuid;

    #@6c
    .line 94
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ISoundTriggerService$Stub;->deleteSoundModel(Landroid/os/ParcelUuid;)V

    #@6f
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 96
    return v7

    #@73
    .line 92
    :cond_3
    const/4 v1, 0x0

    #@74
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_3

    #@75
    .line 100
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@78
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v6

    #@7f
    if-eqz v6, :cond_4

    #@81
    .line 103
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Landroid/os/ParcelUuid;

    #@89
    .line 109
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8c
    move-result-object v6

    #@8d
    invoke-static {v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@90
    move-result-object v2

    #@91
    .line 111
    .local v2, "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@94
    move-result v6

    #@95
    if-eqz v6, :cond_5

    #@97
    .line 112
    sget-object v6, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@99
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9c
    move-result-object v3

    #@9d
    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    #@9f
    .line 117
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ISoundTriggerService$Stub;->startRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    #@a2
    move-result v4

    #@a3
    .line 118
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a9
    .line 120
    return v7

    #@aa
    .line 106
    .end local v2    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :cond_4
    const/4 v1, 0x0

    #@ab
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_4

    #@ac
    .line 115
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v2    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    :cond_5
    const/4 v3, 0x0

    #@ad
    .local v3, "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    goto :goto_5

    #@ae
    .line 124
    .end local v2    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v3    # "_arg2":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.app.ISoundTriggerService"

    #@b1
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v6

    #@b8
    if-eqz v6, :cond_6

    #@ba
    .line 127
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bc
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v1

    #@c0
    check-cast v1, Landroid/os/ParcelUuid;

    #@c2
    .line 133
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c5
    move-result-object v6

    #@c6
    invoke-static {v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    #@c9
    move-result-object v2

    #@ca
    .line 134
    .restart local v2    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/ISoundTriggerService$Stub;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    #@cd
    move-result v4

    #@ce
    .line 135
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d4
    .line 137
    return v7

    #@d5
    .line 130
    .end local v2    # "_arg1":Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .end local v4    # "_result":I
    :cond_6
    const/4 v1, 0x0

    #@d6
    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_6

    #@d7
    .line 42
    nop

    #@d8
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
