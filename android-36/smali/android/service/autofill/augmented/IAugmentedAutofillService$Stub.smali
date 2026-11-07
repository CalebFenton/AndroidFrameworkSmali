.class public abstract Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDestroyAllFillWindowsRequest:I = 0x4

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onFillRequest:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_16

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "onDestroyAllFillWindowsRequest"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "onFillRequest"

    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 72
    :pswitch_11
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.service.autofill.augmented.IAugmentedAutofillService"

    .line 100
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 101
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 104
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v3

    .line 107
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_8e

    .line 155
    move-object/from16 v7, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 150
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDestroyAllFillWindowsRequest()V

    .line 151
    move-object/from16 v7, p0

    goto :goto_8c

    .line 127
    :pswitch_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 129
    .local v6, "_arg0":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 131
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 133
    .local v8, "_arg2":I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/content/ComponentName;

    .line 135
    .local v9, "_arg3":Landroid/content/ComponentName;
    sget-object v5, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/view/autofill/AutofillId;

    .line 137
    .local v10, "_arg4":Landroid/view/autofill/AutofillId;
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/view/autofill/AutofillValue;

    .line 139
    .local v11, "_arg5":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 141
    .local v12, "_arg6":J
    sget-object v5, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 143
    .local v14, "_arg7":Landroid/view/inputmethod/InlineSuggestionsRequest;
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/autofill/augmented/IFillCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v15

    .line 144
    .local v15, "_arg8":Landroid/service/autofill/augmented/IFillCallback;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    .line 146
    move-object/from16 v7, p0

    goto :goto_8c

    .line 121
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/content/ComponentName;
    .end local v10    # "_arg4":Landroid/view/autofill/AutofillId;
    .end local v11    # "_arg5":Landroid/view/autofill/AutofillValue;
    .end local v12    # "_arg6":J
    .end local v14    # "_arg7":Landroid/view/inputmethod/InlineSuggestionsRequest;
    .end local v15    # "_arg8":Landroid/service/autofill/augmented/IFillCallback;
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onDisconnected()V

    .line 122
    move-object/from16 v7, p0

    goto :goto_8c

    .line 112
    :pswitch_7b
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 114
    .local v5, "_arg0":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 115
    .local v6, "_arg1":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->onConnected(ZZ)V

    .line 117
    nop

    .line 158
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    :goto_8c
    return v3

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_75
        :pswitch_2e
        :pswitch_28
    .end packed-switch
.end method
