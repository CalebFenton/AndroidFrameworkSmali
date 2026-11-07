.class public abstract Landroid/service/autofill/IAutoFillService$Stub;
.super Landroid/os/Binder;
.source "IAutoFillService.java"

# interfaces
.implements Landroid/service/autofill/IAutoFillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutoFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutoFillService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IAutoFillService"

.field static final greylist-max-o TRANSACTION_onConnectedStateChanged:I = 0x1

.field static final blacklist TRANSACTION_onConvertCredentialRequest:I = 0x6

.field static final blacklist TRANSACTION_onFillCredentialRequest:I = 0x3

.field static final greylist-max-o TRANSACTION_onFillRequest:I = 0x2

.field static final greylist-max-o TRANSACTION_onSaveRequest:I = 0x4

.field static final blacklist TRANSACTION_onSavedPasswordCountRequest:I = 0x5

.field static final blacklist TRANSACTION_onSessionDestroyed:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IAutoFillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.service.autofill.IAutoFillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IAutoFillService;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IAutoFillService;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/service/autofill/IAutoFillService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IAutoFillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_22

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string/jumbo v0, "onSessionDestroyed"

    return-object v0

    .line 101
    :pswitch_9
    const-string/jumbo v0, "onConvertCredentialRequest"

    return-object v0

    .line 97
    :pswitch_d
    const-string/jumbo v0, "onSavedPasswordCountRequest"

    return-object v0

    .line 93
    :pswitch_11
    const-string/jumbo v0, "onSaveRequest"

    return-object v0

    .line 89
    :pswitch_15
    const-string/jumbo v0, "onFillCredentialRequest"

    return-object v0

    .line 85
    :pswitch_19
    const-string/jumbo v0, "onFillRequest"

    return-object v0

    .line 81
    :pswitch_1d
    const-string/jumbo v0, "onConnectedStateChanged"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
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

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 320
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/service/autofill/IAutoFillService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    const-string v0, "android.service.autofill.IAutoFillService"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_16
    packed-switch p1, :pswitch_data_aa

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 191
    :pswitch_1e
    sget-object v2, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillEventHistory;

    .line 192
    .local v2, "_arg0":Landroid/service/autofill/FillEventHistory;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/service/autofill/IAutoFillService$Stub;->onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V

    .line 194
    goto/16 :goto_a8

    .line 181
    .end local v2    # "_arg0":Landroid/service/autofill/FillEventHistory;
    :pswitch_2e
    sget-object v2, Landroid/service/autofill/ConvertCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/ConvertCredentialRequest;

    .line 183
    .local v2, "_arg0":Landroid/service/autofill/ConvertCredentialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/IConvertCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IConvertCredentialCallback;

    move-result-object v3

    .line 184
    .local v3, "_arg1":Landroid/service/autofill/IConvertCredentialCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Landroid/service/autofill/IAutoFillService$Stub;->onConvertCredentialRequest(Landroid/service/autofill/ConvertCredentialRequest;Landroid/service/autofill/IConvertCredentialCallback;)V

    .line 186
    goto :goto_a8

    .line 173
    .end local v2    # "_arg0":Landroid/service/autofill/ConvertCredentialRequest;
    .end local v3    # "_arg1":Landroid/service/autofill/IConvertCredentialCallback;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 174
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/autofill/IAutoFillService$Stub;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    .line 176
    goto :goto_a8

    .line 163
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_54
    sget-object v2, Landroid/service/autofill/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/SaveRequest;

    .line 165
    .local v2, "_arg0":Landroid/service/autofill/SaveRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/ISaveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/ISaveCallback;

    move-result-object v3

    .line 166
    .local v3, "_arg1":Landroid/service/autofill/ISaveCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/service/autofill/IAutoFillService$Stub;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    .line 168
    goto :goto_a8

    .line 151
    .end local v2    # "_arg0":Landroid/service/autofill/SaveRequest;
    .end local v3    # "_arg1":Landroid/service/autofill/ISaveCallback;
    :pswitch_6b
    sget-object v2, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillRequest;

    .line 153
    .local v2, "_arg0":Landroid/service/autofill/FillRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;

    move-result-object v3

    .line 155
    .local v3, "_arg1":Landroid/service/autofill/IFillCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 156
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/autofill/IAutoFillService$Stub;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V

    .line 158
    goto :goto_a8

    .line 141
    .end local v2    # "_arg0":Landroid/service/autofill/FillRequest;
    .end local v3    # "_arg1":Landroid/service/autofill/IFillCallback;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_86
    sget-object v2, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillRequest;

    .line 143
    .restart local v2    # "_arg0":Landroid/service/autofill/FillRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg1":Landroid/service/autofill/IFillCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/service/autofill/IAutoFillService$Stub;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    .line 146
    goto :goto_a8

    .line 133
    .end local v2    # "_arg0":Landroid/service/autofill/FillRequest;
    .end local v3    # "_arg1":Landroid/service/autofill/IFillCallback;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 134
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/service/autofill/IAutoFillService$Stub;->onConnectedStateChanged(Z)V

    .line 136
    nop

    .line 201
    .end local v2    # "_arg0":Z
    :goto_a8
    return v1

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_86
        :pswitch_6b
        :pswitch_54
        :pswitch_45
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
