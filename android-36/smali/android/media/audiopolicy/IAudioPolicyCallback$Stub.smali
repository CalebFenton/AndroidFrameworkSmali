.class public abstract Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioPolicyCallback.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioPolicyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioPolicyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.audiopolicy.IAudioPolicyCallback"

.field static final greylist-max-o TRANSACTION_notifyAudioFocusAbandon:I = 0x4

.field static final greylist-max-o TRANSACTION_notifyAudioFocusGrant:I = 0x1

.field static final greylist-max-o TRANSACTION_notifyAudioFocusLoss:I = 0x2

.field static final greylist-max-o TRANSACTION_notifyAudioFocusRequest:I = 0x3

.field static final greylist-max-o TRANSACTION_notifyMixStateUpdate:I = 0x5

.field static final blacklist TRANSACTION_notifyUnregistration:I = 0x7

.field static final greylist-max-o TRANSACTION_notifyVolumeAdjust:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_1a

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_5
    const-string v0, "notifyUnregistration"

    return-object v0

    .line 103
    :pswitch_8
    const-string v0, "notifyVolumeAdjust"

    return-object v0

    .line 99
    :pswitch_b
    const-string v0, "notifyMixStateUpdate"

    return-object v0

    .line 95
    :pswitch_e
    const-string v0, "notifyAudioFocusAbandon"

    return-object v0

    .line 91
    :pswitch_11
    const-string v0, "notifyAudioFocusRequest"

    return-object v0

    .line 87
    :pswitch_14
    const-string v0, "notifyAudioFocusLoss"

    return-object v0

    .line 83
    :pswitch_17
    const-string v0, "notifyAudioFocusGrant"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 321
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 122
    const-string v0, "android.media.audiopolicy.IAudioPolicyCallback"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 127
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 130
    :cond_16
    packed-switch p1, :pswitch_data_86

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyUnregistration()V

    .line 191
    goto :goto_84

    .line 183
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyVolumeAdjust(I)V

    .line 186
    goto :goto_84

    .line 173
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyMixStateUpdate(Ljava/lang/String;I)V

    .line 178
    goto :goto_84

    .line 165
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3c
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 166
    .local v2, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V

    .line 168
    goto :goto_84

    .line 155
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    :pswitch_4b
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 157
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V

    .line 160
    goto :goto_84

    .line 145
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :pswitch_5e
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 147
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 148
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V

    .line 150
    goto :goto_84

    .line 135
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":Z
    :pswitch_71
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    .line 137
    .restart local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V

    .line 140
    nop

    .line 198
    .end local v2    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v3    # "_arg1":I
    :goto_84
    return v1

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_71
        :pswitch_5e
        :pswitch_4b
        :pswitch_3c
        :pswitch_2d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
