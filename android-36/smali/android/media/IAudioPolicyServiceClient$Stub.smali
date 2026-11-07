.class public abstract Landroid/media/IAudioPolicyServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyServiceClient.java"

# interfaces
.implements Landroid/media/IAudioPolicyServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioPolicyServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioPatchListUpdate:I = 0x3

.field static final blacklist TRANSACTION_onAudioPortListUpdate:I = 0x2

.field static final blacklist TRANSACTION_onAudioVolumeGroupChanged:I = 0x1

.field static final blacklist TRANSACTION_onDynamicPolicyMixStateUpdate:I = 0x4

.field static final blacklist TRANSACTION_onRecordingConfigurationUpdate:I = 0x5

.field static final blacklist TRANSACTION_onRoutingUpdated:I = 0x6

.field static final blacklist TRANSACTION_onVolumeRangeInitRequest:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.IAudioPolicyServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioPolicyServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioPolicyServiceClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_4
    const-string v0, "android.media.IAudioPolicyServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioPolicyServiceClient;

    if-eqz v1, :cond_14

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioPolicyServiceClient;

    return-object v1

    .line 71
    :cond_14
    new-instance v1, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioPolicyServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const-string v0, "android.media.IAudioPolicyServiceClient"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 87
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 153
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onVolumeRangeInitRequest()V

    .line 149
    goto :goto_8d

    .line 143
    :pswitch_22
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRoutingUpdated()V

    .line 144
    goto :goto_8d

    .line 122
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    .local v4, "_arg0":I
    sget-object v3, Landroid/media/RecordClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/media/RecordClientInfo;

    .line 126
    .local v5, "_arg1":Landroid/media/RecordClientInfo;
    sget-object v3, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/media/audio/common/AudioConfigBase;

    .line 128
    .local v6, "_arg2":Landroid/media/audio/common/AudioConfigBase;
    sget-object v3, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Landroid/media/EffectDescriptor;

    .line 130
    .local v7, "_arg3":[Landroid/media/EffectDescriptor;
    sget-object v3, Landroid/media/audio/common/AudioConfigBase;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/media/audio/common/AudioConfigBase;

    .line 132
    .local v8, "_arg4":Landroid/media/audio/common/AudioConfigBase;
    sget-object v3, Landroid/media/EffectDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [Landroid/media/EffectDescriptor;

    .line 134
    .local v9, "_arg5":[Landroid/media/EffectDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 136
    .local v10, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 137
    .local v11, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Landroid/media/IAudioPolicyServiceClient$Stub;->onRecordingConfigurationUpdate(ILandroid/media/RecordClientInfo;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;Landroid/media/audio/common/AudioConfigBase;[Landroid/media/EffectDescriptor;II)V

    .line 139
    goto :goto_8d

    .line 112
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/media/RecordClientInfo;
    .end local v6    # "_arg2":Landroid/media/audio/common/AudioConfigBase;
    .end local v7    # "_arg3":[Landroid/media/EffectDescriptor;
    .end local v8    # "_arg4":Landroid/media/audio/common/AudioConfigBase;
    .end local v9    # "_arg5":[Landroid/media/EffectDescriptor;
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v4, v5}, Landroid/media/IAudioPolicyServiceClient$Stub;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 117
    goto :goto_8d

    .line 106
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :pswitch_76
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPatchListUpdate()V

    .line 107
    goto :goto_8d

    .line 101
    :pswitch_7a
    invoke-virtual {p0}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioPortListUpdate()V

    .line 102
    goto :goto_8d

    .line 92
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 95
    .restart local v5    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v4, v5}, Landroid/media/IAudioPolicyServiceClient$Stub;->onAudioVolumeGroupChanged(II)V

    .line 97
    nop

    .line 156
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_67
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
