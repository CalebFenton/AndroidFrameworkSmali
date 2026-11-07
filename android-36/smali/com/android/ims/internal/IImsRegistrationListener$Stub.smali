.class public abstract Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IImsRegistrationListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRegistrationListener"

.field static final greylist-max-o TRANSACTION_registrationAssociatedUriChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_registrationChangeFailed:I = 0xc

.field static final greylist-max-o TRANSACTION_registrationConnected:I = 0x1

.field static final greylist-max-o TRANSACTION_registrationConnectedWithRadioTech:I = 0x3

.field static final greylist-max-o TRANSACTION_registrationDisconnected:I = 0x5

.field static final greylist-max-o TRANSACTION_registrationFeatureCapabilityChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_registrationProgressing:I = 0x2

.field static final greylist-max-o TRANSACTION_registrationProgressingWithRadioTech:I = 0x4

.field static final greylist-max-o TRANSACTION_registrationResumed:I = 0x6

.field static final greylist-max-o TRANSACTION_registrationServiceCapabilityChanged:I = 0x8

.field static final greylist-max-o TRANSACTION_registrationSuspended:I = 0x7

.field static final greylist-max-o TRANSACTION_voiceMessageCountUpdate:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsRegistrationListener;

    if-eqz v1, :cond_14

    .line 143
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v1

    .line 145
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 154
    packed-switch p0, :pswitch_data_36

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 202
    :pswitch_5
    const-string/jumbo v0, "registrationChangeFailed"

    return-object v0

    .line 198
    :pswitch_9
    const-string/jumbo v0, "registrationAssociatedUriChanged"

    return-object v0

    .line 194
    :pswitch_d
    const-string/jumbo v0, "voiceMessageCountUpdate"

    return-object v0

    .line 190
    :pswitch_11
    const-string/jumbo v0, "registrationFeatureCapabilityChanged"

    return-object v0

    .line 186
    :pswitch_15
    const-string/jumbo v0, "registrationServiceCapabilityChanged"

    return-object v0

    .line 182
    :pswitch_19
    const-string/jumbo v0, "registrationSuspended"

    return-object v0

    .line 178
    :pswitch_1d
    const-string/jumbo v0, "registrationResumed"

    return-object v0

    .line 174
    :pswitch_21
    const-string/jumbo v0, "registrationDisconnected"

    return-object v0

    .line 170
    :pswitch_25
    const-string/jumbo v0, "registrationProgressingWithRadioTech"

    return-object v0

    .line 166
    :pswitch_29
    const-string/jumbo v0, "registrationConnectedWithRadioTech"

    return-object v0

    .line 162
    :pswitch_2d
    const-string/jumbo v0, "registrationProgressing"

    return-object v0

    .line 158
    :pswitch_31
    const-string/jumbo v0, "registrationConnected"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 564
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 213
    invoke-static {p1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 217
    const-string v0, "com.android.ims.internal.IImsRegistrationListener"

    .line 218
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 219
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    return v1

    .line 225
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 312
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 315
    .local v3, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 317
    goto/16 :goto_a3

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_32
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 305
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 307
    goto :goto_a3

    .line 296
    .end local v2    # "_arg0":[Landroid/net/Uri;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->voiceMessageCountUpdate(I)V

    .line 299
    goto :goto_a3

    .line 284
    .end local v2    # "_arg0":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 288
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 289
    .local v4, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 291
    goto :goto_a3

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":[I
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationServiceCapabilityChanged(II)V

    .line 279
    goto :goto_a3

    .line 268
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationSuspended()V

    .line 269
    goto :goto_a3

    .line 263
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationResumed()V

    .line 264
    goto :goto_a3

    .line 256
    :pswitch_76
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 257
    .local v2, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 259
    goto :goto_a3

    .line 248
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressingWithRadioTech(I)V

    .line 251
    goto :goto_a3

    .line 240
    .end local v2    # "_arg0":I
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnectedWithRadioTech(I)V

    .line 243
    goto :goto_a3

    .line 234
    .end local v2    # "_arg0":I
    :pswitch_9b
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationProgressing()V

    .line 235
    goto :goto_a3

    .line 229
    :pswitch_9f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->registrationConnected()V

    .line 230
    nop

    .line 324
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_9b
        :pswitch_90
        :pswitch_85
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_5f
        :pswitch_4c
        :pswitch_41
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
