.class public abstract Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAugmentedAutofillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAugmentedAutofillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAugmentedAutofillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_autofill:I = 0x3

.field static final blacklist TRANSACTION_getViewCoordinates:I = 0x1

.field static final blacklist TRANSACTION_getViewNodeParcelable:I = 0x2

.field static final blacklist TRANSACTION_requestAutofill:I = 0x6

.field static final blacklist TRANSACTION_requestHideFillUi:I = 0x5

.field static final blacklist TRANSACTION_requestShowFillUi:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAugmentedAutofillManagerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAugmentedAutofillManagerClient;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_1a

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 111
    :pswitch_5
    const-string/jumbo v0, "requestAutofill"

    return-object v0

    .line 107
    :pswitch_9
    const-string/jumbo v0, "requestHideFillUi"

    return-object v0

    .line 103
    :pswitch_d
    const-string/jumbo v0, "requestShowFillUi"

    return-object v0

    .line 99
    :pswitch_11
    const-string v0, "autofill"

    return-object v0

    .line 95
    :pswitch_14
    const-string v0, "getViewNodeParcelable"

    return-object v0

    .line 91
    :pswitch_17
    const-string v0, "getViewCoordinates"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 363
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 122
    invoke-static {p1}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const-string v0, "android.view.autofill.IAugmentedAutofillManagerClient"

    .line 127
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_16
    packed-switch p1, :pswitch_data_d2

    .line 215
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 204
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 207
    .local v3, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestAutofill(ILandroid/view/autofill/AutofillId;)Z

    move-result v4

    .line 209
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 211
    move-object v4, p0

    goto/16 :goto_d1

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v4    # "_result":Z
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 196
    .restart local v3    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object v4, p0

    goto/16 :goto_d1

    .line 174
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    .local v5, "_arg0":I
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 178
    .local v6, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 180
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 182
    .local v8, "_arg3":I
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 184
    .local v9, "_arg4":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v10

    .line 185
    .local v10, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_d1

    .line 159
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :pswitch_84
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 163
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 165
    .local v5, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 166
    .local v6, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_d1

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v5    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "_arg3":Z
    :pswitch_a3
    move-object v4, p0

    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 150
    .local v2, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewNodeParcelable(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNodeParcelable;

    move-result-object v3

    .line 152
    .local v3, "_result":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    goto :goto_d1

    .line 139
    .end local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    .end local v3    # "_result":Landroid/app/assist/AssistStructure$ViewNodeParcelable;
    :pswitch_ba
    move-object v4, p0

    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 140
    .restart local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/autofill/IAugmentedAutofillManagerClient$Stub;->getViewCoordinates(Landroid/view/autofill/AutofillId;)Landroid/graphics/Rect;

    move-result-object v3

    .line 142
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .line 218
    .end local v2    # "_arg0":Landroid/view/autofill/AutofillId;
    .end local v3    # "_result":Landroid/graphics/Rect;
    :goto_d1
    return v1

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_a3
        :pswitch_84
        :pswitch_53
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
