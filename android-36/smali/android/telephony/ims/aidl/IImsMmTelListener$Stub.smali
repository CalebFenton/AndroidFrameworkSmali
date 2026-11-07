.class public abstract Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioModeIsVoipChanged:I = 0x4

.field static final blacklist TRANSACTION_onIncomingCall:I = 0x1

.field static final blacklist TRANSACTION_onMediaQualityStatusChanged:I = 0x9

.field static final blacklist TRANSACTION_onModifyImsTrafficSession:I = 0x7

.field static final blacklist TRANSACTION_onRejectedCall:I = 0x2

.field static final blacklist TRANSACTION_onStartImsTrafficSession:I = 0x6

.field static final blacklist TRANSACTION_onStopImsTrafficSession:I = 0x8

.field static final blacklist TRANSACTION_onTriggerEpsFallback:I = 0x5

.field static final blacklist TRANSACTION_onVoiceMessageCountUpdate:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelListener;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelListener;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_20

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string v0, "onMediaQualityStatusChanged"

    return-object v0

    .line 118
    :pswitch_8
    const-string v0, "onStopImsTrafficSession"

    return-object v0

    .line 114
    :pswitch_b
    const-string v0, "onModifyImsTrafficSession"

    return-object v0

    .line 110
    :pswitch_e
    const-string v0, "onStartImsTrafficSession"

    return-object v0

    .line 106
    :pswitch_11
    const-string v0, "onTriggerEpsFallback"

    return-object v0

    .line 102
    :pswitch_14
    const-string v0, "onAudioModeIsVoipChanged"

    return-object v0

    .line 98
    :pswitch_17
    const-string v0, "onVoiceMessageCountUpdate"

    return-object v0

    .line 94
    :pswitch_1a
    const-string v0, "onRejectedCall"

    return-object v0

    .line 90
    :pswitch_1d
    const-string v0, "onIncomingCall"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 398
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "android.telephony.ims.aidl.IImsMmTelListener"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_d2

    .line 240
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_1f
    sget-object v2, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/MediaQualityStatus;

    .line 234
    .local v2, "_arg0":Landroid/telephony/ims/MediaQualityStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 236
    move-object v4, p0

    goto/16 :goto_d0

    .line 225
    .end local v2    # "_arg0":Landroid/telephony/ims/MediaQualityStatus;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onStopImsTrafficSession(I)V

    .line 228
    move-object v4, p0

    goto/16 :goto_d0

    .line 215
    .end local v2    # "_arg0":I
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onModifyImsTrafficSession(II)V

    .line 220
    move-object v4, p0

    goto/16 :goto_d0

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    .local v5, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 203
    .local v6, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 205
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 207
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsTrafficSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    move-result-object v9

    .line 208
    .local v9, "_arg4":Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V

    .line 210
    goto :goto_d0

    .line 191
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
    :pswitch_6e
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onTriggerEpsFallback(I)V

    .line 194
    goto :goto_d0

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_7a
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onAudioModeIsVoipChanged(I)V

    .line 186
    goto :goto_d0

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_86
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onVoiceMessageCountUpdate(I)V

    .line 178
    goto :goto_d0

    .line 164
    .end local v2    # "_arg0":I
    :pswitch_92
    move-object v4, p0

    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .line 166
    .local v2, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 167
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_d0

    .line 150
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_ad
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 155
    .local v5, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v5}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v6

    .line 157
    .local v6, "_result":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 159
    nop

    .line 243
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :goto_d0
    return v1

    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_4e
        :pswitch_3d
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method
