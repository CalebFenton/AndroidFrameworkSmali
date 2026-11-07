.class public abstract Lcom/android/ims/internal/IImsUtListener$Stub;
.super Landroid/os/Binder;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUtListener"

.field static final blacklist TRANSACTION_lineIdentificationSupplementaryServiceResponse:I = 0x5

.field static final greylist-max-o TRANSACTION_onSupplementaryServiceIndication:I = 0x9

.field static final greylist-max-o TRANSACTION_utConfigurationCallBarringQueried:I = 0x6

.field static final greylist-max-o TRANSACTION_utConfigurationCallForwardQueried:I = 0x7

.field static final greylist-max-o TRANSACTION_utConfigurationCallWaitingQueried:I = 0x8

.field static final greylist-max-o TRANSACTION_utConfigurationQueried:I = 0x3

.field static final greylist-max-o TRANSACTION_utConfigurationQueryFailed:I = 0x4

.field static final greylist-max-o TRANSACTION_utConfigurationUpdateFailed:I = 0x2

.field static final greylist-max-o TRANSACTION_utConfigurationUpdated:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "com.android.ims.internal.IImsUtListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsUtListener;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUtListener;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_28

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "onSupplementaryServiceIndication"

    return-object v0

    .line 121
    :pswitch_8
    const-string/jumbo v0, "utConfigurationCallWaitingQueried"

    return-object v0

    .line 117
    :pswitch_c
    const-string/jumbo v0, "utConfigurationCallForwardQueried"

    return-object v0

    .line 113
    :pswitch_10
    const-string/jumbo v0, "utConfigurationCallBarringQueried"

    return-object v0

    .line 109
    :pswitch_14
    const-string v0, "lineIdentificationSupplementaryServiceResponse"

    return-object v0

    .line 105
    :pswitch_17
    const-string/jumbo v0, "utConfigurationQueryFailed"

    return-object v0

    .line 101
    :pswitch_1b
    const-string/jumbo v0, "utConfigurationQueried"

    return-object v0

    .line 97
    :pswitch_1f
    const-string/jumbo v0, "utConfigurationUpdateFailed"

    return-object v0

    .line 93
    :pswitch_23
    const-string/jumbo v0, "utConfigurationUpdated"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 419
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Lcom/android/ims/internal/IImsUtListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    const-string v0, "com.android.ims.internal.IImsUtListener"

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
    packed-switch p1, :pswitch_data_fa

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 245
    :pswitch_1e
    sget-object v2, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsSsData;

    .line 246
    .local v2, "_arg0":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsUtListener$Stub;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 248
    goto/16 :goto_f9

    .line 233
    .end local v2    # "_arg0":Landroid/telephony/ims/ImsSsData;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 235
    .local v2, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 238
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 240
    goto/16 :goto_f9

    .line 221
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 226
    .local v4, "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 228
    goto/16 :goto_f9

    .line 209
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsCallForwardInfo;
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 214
    .local v4, "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 216
    goto/16 :goto_f9

    .line 199
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/telephony/ims/ImsSsInfo;
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsSsInfo;

    .line 202
    .local v3, "_arg1":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 204
    goto :goto_f9

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsSsInfo;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .local v3, "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 192
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 194
    goto :goto_f9

    .line 175
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 177
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 180
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 182
    goto :goto_f9

    .line 163
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 165
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 168
    .local v4, "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 170
    goto :goto_f9

    .line 153
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsUtListener$Stub;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 158
    nop

    .line 255
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsUt;
    .end local v3    # "_arg1":I
    :goto_f9
    return v1

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_cb
        :pswitch_b0
        :pswitch_95
        :pswitch_82
        :pswitch_66
        :pswitch_4a
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
