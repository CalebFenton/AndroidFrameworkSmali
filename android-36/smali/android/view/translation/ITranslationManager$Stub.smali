.class public abstract Landroid/view/translation/ITranslationManager$Stub;
.super Landroid/os/Binder;
.source "ITranslationManager.java"

# interfaces
.implements Landroid/view/translation/ITranslationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ITranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ITranslationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getServiceSettingsActivity:I = 0x8

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x4

.field static final blacklist TRANSACTION_onTranslationCapabilitiesRequest:I = 0x1

.field static final blacklist TRANSACTION_onTranslationFinished:I = 0x9

.field static final blacklist TRANSACTION_registerTranslationCapabilityCallback:I = 0x2

.field static final blacklist TRANSACTION_registerUiTranslationStateCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterTranslationCapabilityCallback:I = 0x3

.field static final blacklist TRANSACTION_unregisterUiTranslationStateCallback:I = 0x7

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/translation/ITranslationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.view.translation.ITranslationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/translation/ITranslationManager;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/view/translation/ITranslationManager;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/view/translation/ITranslationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/translation/ITranslationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_26

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "onTranslationFinished"

    return-object v0

    .line 115
    :pswitch_8
    const-string v0, "getServiceSettingsActivity"

    return-object v0

    .line 111
    :pswitch_b
    const-string/jumbo v0, "unregisterUiTranslationStateCallback"

    return-object v0

    .line 107
    :pswitch_f
    const-string/jumbo v0, "registerUiTranslationStateCallback"

    return-object v0

    .line 103
    :pswitch_13
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 99
    :pswitch_17
    const-string v0, "onSessionCreated"

    return-object v0

    .line 95
    :pswitch_1a
    const-string/jumbo v0, "unregisterTranslationCapabilityCallback"

    return-object v0

    .line 91
    :pswitch_1e
    const-string/jumbo v0, "registerTranslationCapabilityCallback"

    return-object v0

    .line 87
    :pswitch_22
    const-string v0, "onTranslationCapabilitiesRequest"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
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

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 422
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/view/translation/ITranslationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    move-object v9, p2

    const-string v10, "android.view.translation.ITranslationManager"

    .line 135
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 136
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 139
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v11

    .line 142
    :cond_19
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_112

    .line 260
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 247
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 249
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Landroid/os/IBinder;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 253
    .local v3, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 256
    goto/16 :goto_111

    .line 237
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Landroid/content/ComponentName;
    .end local v4    # "_arg3":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 239
    .local v1, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v1, v2}, Landroid/view/translation/ITranslationManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V

    .line 242
    goto/16 :goto_111

    .line 227
    .end local v1    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v2    # "_arg1":I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 229
    .local v1, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v1, v2}, Landroid/view/translation/ITranslationManager$Stub;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 232
    goto/16 :goto_111

    .line 217
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg1":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 219
    .restart local v1    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1, v2}, Landroid/view/translation/ITranslationManager$Stub;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V

    .line 222
    goto/16 :goto_111

    .line 195
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg1":I
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg0":I
    sget-object v2, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationSpec;

    .line 199
    .local v2, "_arg1":Landroid/view/translation/TranslationSpec;
    sget-object v3, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/TranslationSpec;

    .line 201
    .local v3, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v4, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 203
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 205
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 207
    .local v6, "_arg5":I
    sget-object v7, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/translation/UiTranslationSpec;

    .line 209
    .local v7, "_arg6":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 210
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/view/translation/ITranslationManager$Stub;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V

    .line 212
    goto :goto_111

    .line 181
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/view/translation/TranslationSpec;
    .end local v3    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/view/translation/UiTranslationSpec;
    .end local v8    # "_arg7":I
    :pswitch_b1
    sget-object v1, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/translation/TranslationContext;

    .line 183
    .local v1, "_arg0":Landroid/view/translation/TranslationContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 187
    .local v3, "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager$Stub;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V

    .line 190
    goto :goto_111

    .line 171
    .end local v1    # "_arg0":Landroid/view/translation/TranslationContext;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_arg3":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/view/translation/ITranslationManager$Stub;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 176
    goto :goto_111

    .line 161
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg1":I
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 163
    .restart local v1    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v1, v2}, Landroid/view/translation/ITranslationManager$Stub;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V

    .line 166
    goto :goto_111

    .line 147
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg1":I
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 153
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager$Stub;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    .line 156
    nop

    .line 263
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    .end local v4    # "_arg3":I
    :goto_111
    return v11

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_f6
        :pswitch_e3
        :pswitch_d0
        :pswitch_b1
        :pswitch_7b
        :pswitch_67
        :pswitch_53
        :pswitch_3f
        :pswitch_23
    .end packed-switch
.end method
