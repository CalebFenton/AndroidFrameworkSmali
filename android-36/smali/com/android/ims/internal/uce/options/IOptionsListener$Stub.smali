.class public abstract Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;
.super Landroid/os/Binder;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsListener"

.field static final greylist-max-o TRANSACTION_cmdStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getVersionCb:I = 0x1

.field static final greylist-max-o TRANSACTION_incomingOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_serviceAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_serviceUnavailable:I = 0x3

.field static final greylist-max-o TRANSACTION_sipResponseReceived:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_4

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_4
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    if-eqz v1, :cond_14

    .line 97
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/options/IOptionsListener;

    return-object v1

    .line 99
    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 108
    packed-switch p0, :pswitch_data_1a

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 132
    :pswitch_5
    const-string v0, "incomingOptions"

    return-object v0

    .line 128
    :pswitch_8
    const-string v0, "cmdStatus"

    return-object v0

    .line 124
    :pswitch_b
    const-string/jumbo v0, "sipResponseReceived"

    return-object v0

    .line 120
    :pswitch_f
    const-string/jumbo v0, "serviceUnavailable"

    return-object v0

    .line 116
    :pswitch_13
    const-string/jumbo v0, "serviceAvailable"

    return-object v0

    .line 112
    :pswitch_17
    const-string v0, "getVersionCb"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 103
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 385
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 143
    invoke-static {p1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 147
    const-string v0, "com.android.ims.internal.uce.options.IOptionsListener"

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
    packed-switch p1, :pswitch_data_9c

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 209
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .line 213
    .local v3, "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 214
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_9a

    .line 200
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .end local v4    # "_arg2":I
    :pswitch_38
    sget-object v2, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    .line 201
    .local v2, "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_9a

    .line 187
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/options/OptionsCmdStatus;
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    .line 191
    .local v3, "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    sget-object v4, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    .line 192
    .local v4, "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_9a

    .line 178
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    .end local v4    # "_arg2":Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    :pswitch_68
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 179
    .local v2, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_9a

    .line 169
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7a
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 170
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_9a

    .line 160
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    nop

    .line 224
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_9a
    return v1

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_4a
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
