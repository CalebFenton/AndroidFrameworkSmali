.class public abstract Landroid/credentials/ICredentialManager$Stub;
.super Landroid/os/Binder;
.source "ICredentialManager.java"

# interfaces
.implements Landroid/credentials/ICredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ICredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/ICredentialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearCredentialState:I = 0x5

.field static final blacklist TRANSACTION_executeCreateCredential:I = 0x3

.field static final blacklist TRANSACTION_executeGetCredential:I = 0x1

.field static final blacklist TRANSACTION_executePrepareGetCredential:I = 0x2

.field static final blacklist TRANSACTION_getCandidateCredentials:I = 0x4

.field static final blacklist TRANSACTION_getCredentialProviderServices:I = 0xa

.field static final blacklist TRANSACTION_getCredentialProviderServicesForTesting:I = 0xb

.field static final blacklist TRANSACTION_isEnabledCredentialProviderService:I = 0x9

.field static final blacklist TRANSACTION_isServiceEnabled:I = 0xc

.field static final blacklist TRANSACTION_registerCredentialDescription:I = 0x7

.field static final blacklist TRANSACTION_setEnabledProviders:I = 0x6

.field static final blacklist TRANSACTION_unregisterCredentialDescription:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "android.credentials.ICredentialManager"

    invoke-virtual {p0, p0, v0}, Landroid/credentials/ICredentialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/credentials/ICredentialManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_4
    const-string v0, "android.credentials.ICredentialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/credentials/ICredentialManager;

    if-eqz v1, :cond_14

    .line 90
    move-object v1, v0

    check-cast v1, Landroid/credentials/ICredentialManager;

    return-object v1

    .line 92
    :cond_14
    new-instance v1, Landroid/credentials/ICredentialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/credentials/ICredentialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 101
    packed-switch p0, :pswitch_data_2e

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 149
    :pswitch_5
    const-string/jumbo v0, "isServiceEnabled"

    return-object v0

    .line 145
    :pswitch_9
    const-string v0, "getCredentialProviderServicesForTesting"

    return-object v0

    .line 141
    :pswitch_c
    const-string v0, "getCredentialProviderServices"

    return-object v0

    .line 137
    :pswitch_f
    const-string/jumbo v0, "isEnabledCredentialProviderService"

    return-object v0

    .line 133
    :pswitch_13
    const-string/jumbo v0, "unregisterCredentialDescription"

    return-object v0

    .line 129
    :pswitch_17
    const-string/jumbo v0, "registerCredentialDescription"

    return-object v0

    .line 125
    :pswitch_1b
    const-string/jumbo v0, "setEnabledProviders"

    return-object v0

    .line 121
    :pswitch_1f
    const-string v0, "clearCredentialState"

    return-object v0

    .line 117
    :pswitch_22
    const-string v0, "getCandidateCredentials"

    return-object v0

    .line 113
    :pswitch_25
    const-string v0, "executeCreateCredential"

    return-object v0

    .line 109
    :pswitch_28
    const-string v0, "executePrepareGetCredential"

    return-object v0

    .line 105
    :pswitch_2b
    const-string v0, "executeGetCredential"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 589
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 160
    invoke-static {p1}, Landroid/credentials/ICredentialManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-string v0, "android.credentials.ICredentialManager"

    .line 165
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_16
    packed-switch p1, :pswitch_data_174

    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 321
    :pswitch_1e
    invoke-virtual {p0}, Landroid/credentials/ICredentialManager$Stub;->isServiceEnabled()Z

    move-result v2

    .line 322
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    goto/16 :goto_173

    .line 312
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Landroid/credentials/ICredentialManager$Stub;->getCredentialProviderServicesForTesting(I)Ljava/util/List;

    move-result-object v3

    .line 315
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 317
    goto/16 :goto_173

    .line 300
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 302
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 303
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3}, Landroid/credentials/ICredentialManager$Stub;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object v4

    .line 305
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 307
    goto/16 :goto_173

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    :pswitch_54
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 290
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3}, Landroid/credentials/ICredentialManager$Stub;->isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 293
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    goto/16 :goto_173

    .line 277
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6f
    sget-object v2, Landroid/credentials/UnregisterCredentialDescriptionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/UnregisterCredentialDescriptionRequest;

    .line 279
    .local v2, "_arg0":Landroid/credentials/UnregisterCredentialDescriptionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3}, Landroid/credentials/ICredentialManager$Stub;->unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_173

    .line 266
    .end local v2    # "_arg0":Landroid/credentials/UnregisterCredentialDescriptionRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_86
    sget-object v2, Landroid/credentials/RegisterCredentialDescriptionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/RegisterCredentialDescriptionRequest;

    .line 268
    .local v2, "_arg0":Landroid/credentials/RegisterCredentialDescriptionRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3}, Landroid/credentials/ICredentialManager$Stub;->registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_173

    .line 251
    .end local v2    # "_arg0":Landroid/credentials/RegisterCredentialDescriptionRequest;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 253
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 255
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 257
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/credentials/ISetEnabledProvidersCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/ISetEnabledProvidersCallback;

    move-result-object v5

    .line 258
    .local v5, "_arg3":Landroid/credentials/ISetEnabledProvidersCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/credentials/ICredentialManager$Stub;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_173

    .line 237
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/credentials/ISetEnabledProvidersCallback;
    :pswitch_bc
    sget-object v2, Landroid/credentials/ClearCredentialStateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/ClearCredentialStateRequest;

    .line 239
    .local v2, "_arg0":Landroid/credentials/ClearCredentialStateRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/credentials/IClearCredentialStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IClearCredentialStateCallback;

    move-result-object v3

    .line 241
    .local v3, "_arg1":Landroid/credentials/IClearCredentialStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Landroid/credentials/ICredentialManager$Stub;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 244
    .local v5, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 246
    goto/16 :goto_173

    .line 221
    .end local v2    # "_arg0":Landroid/credentials/ClearCredentialStateRequest;
    .end local v3    # "_arg1":Landroid/credentials/IClearCredentialStateCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_df
    sget-object v2, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 223
    .local v2, "_arg0":Landroid/credentials/GetCredentialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/credentials/IGetCandidateCredentialsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCandidateCredentialsCallback;

    move-result-object v3

    .line 225
    .local v3, "_arg1":Landroid/credentials/IGetCandidateCredentialsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 227
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/credentials/ICredentialManager$Stub;->getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 230
    .local v6, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 232
    goto :goto_173

    .line 207
    .end local v2    # "_arg0":Landroid/credentials/GetCredentialRequest;
    .end local v3    # "_arg1":Landroid/credentials/IGetCandidateCredentialsCallback;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_105
    sget-object v2, Landroid/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/CreateCredentialRequest;

    .line 209
    .local v2, "_arg0":Landroid/credentials/CreateCredentialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/credentials/ICreateCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/ICreateCredentialCallback;

    move-result-object v3

    .line 211
    .local v3, "_arg1":Landroid/credentials/ICreateCredentialCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3, v4}, Landroid/credentials/ICredentialManager$Stub;->executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 214
    .local v5, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 216
    goto :goto_173

    .line 191
    .end local v2    # "_arg0":Landroid/credentials/CreateCredentialRequest;
    .end local v3    # "_arg1":Landroid/credentials/ICreateCredentialCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_127
    sget-object v2, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 193
    .local v2, "_arg0":Landroid/credentials/GetCredentialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/credentials/IPrepareGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IPrepareGetCredentialCallback;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Landroid/credentials/IPrepareGetCredentialCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/credentials/IGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCredentialCallback;

    move-result-object v4

    .line 197
    .local v4, "_arg2":Landroid/credentials/IGetCredentialCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/credentials/ICredentialManager$Stub;->executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 200
    .restart local v6    # "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 202
    goto :goto_173

    .line 177
    .end local v2    # "_arg0":Landroid/credentials/GetCredentialRequest;
    .end local v3    # "_arg1":Landroid/credentials/IPrepareGetCredentialCallback;
    .end local v4    # "_arg2":Landroid/credentials/IGetCredentialCallback;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_151
    sget-object v2, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 179
    .restart local v2    # "_arg0":Landroid/credentials/GetCredentialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/credentials/IGetCredentialCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/credentials/IGetCredentialCallback;

    move-result-object v3

    .line 181
    .local v3, "_arg1":Landroid/credentials/IGetCredentialCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/credentials/ICredentialManager$Stub;->executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 184
    .local v5, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 186
    nop

    .line 331
    .end local v2    # "_arg0":Landroid/credentials/GetCredentialRequest;
    .end local v3    # "_arg1":Landroid/credentials/IGetCredentialCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/ICancellationSignal;
    :goto_173
    return v1

    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_151
        :pswitch_127
        :pswitch_105
        :pswitch_df
        :pswitch_bc
        :pswitch_9d
        :pswitch_86
        :pswitch_6f
        :pswitch_54
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
