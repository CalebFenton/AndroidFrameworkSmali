.class public abstract Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentServiceCallback.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentServiceCallback"

.field static final greylist-max-o TRANSACTION_addEscrowToken:I = 0x6

.field static final greylist-max-o TRANSACTION_grantTrust:I = 0x1

.field static final greylist-max-o TRANSACTION_isEscrowTokenActive:I = 0x7

.field static final blacklist TRANSACTION_lockUser:I = 0x3

.field static final greylist-max-o TRANSACTION_onConfigureCompleted:I = 0x5

.field static final greylist-max-o TRANSACTION_removeEscrowToken:I = 0x8

.field static final greylist-max-o TRANSACTION_revokeTrust:I = 0x2

.field static final greylist-max-o TRANSACTION_setManagingTrust:I = 0x4

.field static final greylist-max-o TRANSACTION_showKeyguardErrorMessage:I = 0xa

.field static final greylist-max-o TRANSACTION_unlockUserWithToken:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_2c

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string/jumbo v0, "showKeyguardErrorMessage"

    return-object v0

    .line 121
    :pswitch_9
    const-string/jumbo v0, "unlockUserWithToken"

    return-object v0

    .line 117
    :pswitch_d
    const-string/jumbo v0, "removeEscrowToken"

    return-object v0

    .line 113
    :pswitch_11
    const-string/jumbo v0, "isEscrowTokenActive"

    return-object v0

    .line 109
    :pswitch_15
    const-string v0, "addEscrowToken"

    return-object v0

    .line 105
    :pswitch_18
    const-string/jumbo v0, "onConfigureCompleted"

    return-object v0

    .line 101
    :pswitch_1c
    const-string/jumbo v0, "setManagingTrust"

    return-object v0

    .line 97
    :pswitch_20
    const-string/jumbo v0, "lockUser"

    return-object v0

    .line 93
    :pswitch_24
    const-string/jumbo v0, "revokeTrust"

    return-object v0

    .line 89
    :pswitch_28
    const-string/jumbo v0, "grantTrust"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 419
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_16
    packed-switch p1, :pswitch_data_b4

    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 237
    :pswitch_1e
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 238
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 240
    goto/16 :goto_b3

    .line 225
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 227
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 229
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->unlockUserWithToken(J[BI)V

    .line 232
    goto/16 :goto_b3

    .line 215
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 217
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->removeEscrowToken(JI)V

    .line 220
    goto :goto_b3

    .line 205
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 207
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->isEscrowTokenActive(JI)V

    .line 210
    goto :goto_b3

    .line 195
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 197
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->addEscrowToken([BI)V

    .line 200
    goto :goto_b3

    .line 185
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 187
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 188
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 190
    goto :goto_b3

    .line 177
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 178
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->setManagingTrust(Z)V

    .line 180
    goto :goto_b3

    .line 171
    .end local v2    # "_arg0":Z
    :pswitch_89
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->lockUser()V

    .line 172
    goto :goto_b3

    .line 166
    :pswitch_8d
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->revokeTrust()V

    .line 167
    goto :goto_b3

    .line 153
    :pswitch_91
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    .line 155
    .local v4, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 157
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 159
    .local v7, "_arg2":I
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/infra/AndroidFuture;

    .line 160
    .local v8, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V

    .line 162
    nop

    .line 247
    .end local v4    # "_arg0":Ljava/lang/CharSequence;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :goto_b3
    return v1

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_7e
        :pswitch_6f
        :pswitch_60
        :pswitch_51
        :pswitch_42
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
