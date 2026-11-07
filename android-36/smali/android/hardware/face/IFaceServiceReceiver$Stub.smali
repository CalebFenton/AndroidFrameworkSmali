.class public abstract Landroid/hardware/face/IFaceServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Landroid/hardware/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x5

.field static final blacklist TRANSACTION_onAuthenticationFrame:I = 0xb

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0xa

.field static final blacklist TRANSACTION_onEnrollResult:I = 0x1

.field static final blacklist TRANSACTION_onEnrollmentFrame:I = 0xc

.field static final blacklist TRANSACTION_onError:I = 0x6

.field static final blacklist TRANSACTION_onFaceDetected:I = 0x4

.field static final blacklist TRANSACTION_onFeatureGet:I = 0x9

.field static final blacklist TRANSACTION_onFeatureSet:I = 0x8

.field static final blacklist TRANSACTION_onRemoved:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceServiceReceiver;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_2a

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string v0, "onEnrollmentFrame"

    return-object v0

    .line 135
    :pswitch_8
    const-string v0, "onAuthenticationFrame"

    return-object v0

    .line 131
    :pswitch_b
    const-string v0, "onChallengeGenerated"

    return-object v0

    .line 127
    :pswitch_e
    const-string v0, "onFeatureGet"

    return-object v0

    .line 123
    :pswitch_11
    const-string v0, "onFeatureSet"

    return-object v0

    .line 119
    :pswitch_14
    const-string v0, "onRemoved"

    return-object v0

    .line 115
    :pswitch_17
    const-string v0, "onError"

    return-object v0

    .line 111
    :pswitch_1a
    const-string v0, "onAuthenticationFailed"

    return-object v0

    .line 107
    :pswitch_1d
    const-string v0, "onFaceDetected"

    return-object v0

    .line 103
    :pswitch_20
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    .line 99
    :pswitch_23
    const-string v0, "onAcquired"

    return-object v0

    .line 95
    :pswitch_26
    const-string v0, "onEnrollResult"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 477
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    const-string v0, "android.hardware.face.IFaceServiceReceiver"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v1

    .line 162
    :cond_16
    packed-switch p1, :pswitch_data_ea

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 278
    :pswitch_1e
    sget-object v2, Landroid/hardware/face/FaceEnrollFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceEnrollFrame;

    .line 279
    .local v2, "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    .line 281
    goto/16 :goto_e8

    .line 270
    .end local v2    # "_arg0":Landroid/hardware/face/FaceEnrollFrame;
    :pswitch_2e
    sget-object v2, Landroid/hardware/face/FaceAuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceAuthenticationFrame;

    .line 271
    .local v2, "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 273
    goto/16 :goto_e8

    .line 258
    .end local v2    # "_arg0":Landroid/hardware/face/FaceAuthenticationFrame;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 263
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onChallengeGenerated(IIJ)V

    .line 265
    goto/16 :goto_e8

    .line 246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 248
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 250
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v4

    .line 251
    .local v4, "_arg2":[Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureGet(Z[I[Z)V

    .line 253
    goto/16 :goto_e8

    .line 236
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[Z
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 238
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFeatureSet(ZI)V

    .line 241
    goto/16 :goto_e8

    .line 226
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_76
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 228
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 229
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onRemoved(Landroid/hardware/face/Face;I)V

    .line 231
    goto :goto_e8

    .line 216
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
    .end local v3    # "_arg1":I
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onError(II)V

    .line 221
    goto :goto_e8

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_98
    invoke-virtual {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 211
    goto :goto_e8

    .line 199
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 204
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onFaceDetected(IIZ)V

    .line 206
    goto :goto_e8

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_af
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 189
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 192
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    .line 194
    goto :goto_e8

    .line 177
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onAcquired(II)V

    .line 182
    goto :goto_e8

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d5
    sget-object v2, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 169
    .local v2, "_arg0":Landroid/hardware/face/Face;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->onEnrollResult(Landroid/hardware/face/Face;I)V

    .line 172
    nop

    .line 288
    .end local v2    # "_arg0":Landroid/hardware/face/Face;
    .end local v3    # "_arg1":I
    :goto_e8
    return v1

    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_c6
        :pswitch_af
        :pswitch_9c
        :pswitch_98
        :pswitch_89
        :pswitch_76
        :pswitch_66
        :pswitch_52
        :pswitch_3e
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
