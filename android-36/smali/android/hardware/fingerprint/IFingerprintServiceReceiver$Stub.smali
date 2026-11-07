.class public abstract Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintServiceReceiver"

.field static final greylist-max-o TRANSACTION_onAcquired:I = 0x2

.field static final greylist-max-o TRANSACTION_onAuthenticationFailed:I = 0x5

.field static final greylist-max-o TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0x8

.field static final greylist-max-o TRANSACTION_onEnrollResult:I = 0x1

.field static final greylist-max-o TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onFingerprintDetected:I = 0x4

.field static final greylist-max-o TRANSACTION_onRemoved:I = 0x7

.field static final blacklist TRANSACTION_onUdfpsOverlayShown:I = 0xb

.field static final blacklist TRANSACTION_onUdfpsPointerDown:I = 0x9

.field static final blacklist TRANSACTION_onUdfpsPointerUp:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_26

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 132
    :pswitch_5
    const-string v0, "onUdfpsOverlayShown"

    return-object v0

    .line 128
    :pswitch_8
    const-string v0, "onUdfpsPointerUp"

    return-object v0

    .line 124
    :pswitch_b
    const-string v0, "onUdfpsPointerDown"

    return-object v0

    .line 120
    :pswitch_e
    const-string v0, "onChallengeGenerated"

    return-object v0

    .line 116
    :pswitch_11
    const-string v0, "onRemoved"

    return-object v0

    .line 112
    :pswitch_14
    const-string v0, "onError"

    return-object v0

    .line 108
    :pswitch_17
    const-string v0, "onAuthenticationFailed"

    return-object v0

    .line 104
    :pswitch_1a
    const-string v0, "onFingerprintDetected"

    return-object v0

    .line 100
    :pswitch_1d
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    .line 96
    :pswitch_20
    const-string v0, "onAcquired"

    return-object v0

    .line 92
    :pswitch_23
    const-string v0, "onEnrollResult"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 438
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 143
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 147
    const-string v0, "android.hardware.fingerprint.IFingerprintServiceReceiver"

    .line 148
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 149
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return v1

    .line 155
    :cond_16
    packed-switch p1, :pswitch_data_c2

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 256
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onUdfpsOverlayShown()V

    .line 257
    goto/16 :goto_c1

    .line 249
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onUdfpsPointerUp(I)V

    .line 252
    goto/16 :goto_c1

    .line 241
    .end local v2    # "_arg0":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onUdfpsPointerDown(I)V

    .line 244
    goto/16 :goto_c1

    .line 229
    .end local v2    # "_arg0":I
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 234
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onChallengeGenerated(IIJ)V

    .line 236
    goto/16 :goto_c1

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_4f
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 221
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 224
    goto :goto_c1

    .line 209
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onError(II)V

    .line 214
    goto :goto_c1

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_71
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 204
    goto :goto_c1

    .line 192
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 197
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onFingerprintDetected(IIZ)V

    .line 199
    goto :goto_c1

    .line 180
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_88
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 182
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 185
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    .line 187
    goto :goto_c1

    .line 170
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onAcquired(II)V

    .line 175
    goto :goto_c1

    .line 160
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_ae
    sget-object v2, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 162
    .local v2, "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 165
    nop

    .line 264
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "_arg1":I
    :goto_c1
    return v1

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_9f
        :pswitch_88
        :pswitch_75
        :pswitch_71
        :pswitch_62
        :pswitch_4f
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method
