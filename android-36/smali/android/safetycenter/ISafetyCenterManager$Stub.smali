.class public abstract Landroid/safetycenter/ISafetyCenterManager$Stub;
.super Landroid/os/Binder;
.source "ISafetyCenterManager.java"

# interfaces
.implements Landroid/safetycenter/ISafetyCenterManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/ISafetyCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/ISafetyCenterManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOnSafetyCenterDataChangedListener:I = 0x9

.field static final blacklist TRANSACTION_clearAllSafetySourceDataForTests:I = 0xd

.field static final blacklist TRANSACTION_clearSafetyCenterConfigForTests:I = 0xf

.field static final blacklist TRANSACTION_dismissSafetyCenterIssue:I = 0xb

.field static final blacklist TRANSACTION_executeSafetyCenterIssueAction:I = 0xc

.field static final blacklist TRANSACTION_getSafetyCenterConfig:I = 0x7

.field static final blacklist TRANSACTION_getSafetyCenterData:I = 0x8

.field static final blacklist TRANSACTION_getSafetySourceData:I = 0x3

.field static final blacklist TRANSACTION_isSafetyCenterEnabled:I = 0x1

.field static final blacklist TRANSACTION_refreshSafetySources:I = 0x5

.field static final blacklist TRANSACTION_refreshSpecificSafetySources:I = 0x6

.field static final blacklist TRANSACTION_removeOnSafetyCenterDataChangedListener:I = 0xa

.field static final blacklist TRANSACTION_reportSafetySourceError:I = 0x4

.field static final blacklist TRANSACTION_setSafetyCenterConfigForTests:I = 0xe

.field static final blacklist TRANSACTION_setSafetySourceData:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const-string v0, "android.safetycenter.ISafetyCenterManager"

    invoke-virtual {p0, p0, v0}, Landroid/safetycenter/ISafetyCenterManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/safetycenter/ISafetyCenterManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 141
    if-nez p0, :cond_4

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_4
    const-string v0, "android.safetycenter.ISafetyCenterManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 145
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/safetycenter/ISafetyCenterManager;

    if-eqz v1, :cond_14

    .line 146
    move-object v1, v0

    check-cast v1, Landroid/safetycenter/ISafetyCenterManager;

    return-object v1

    .line 148
    :cond_14
    new-instance v1, Landroid/safetycenter/ISafetyCenterManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/safetycenter/ISafetyCenterManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 157
    packed-switch p0, :pswitch_data_32

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 217
    :pswitch_5
    const-string v0, "clearSafetyCenterConfigForTests"

    return-object v0

    .line 213
    :pswitch_8
    const-string v0, "setSafetyCenterConfigForTests"

    return-object v0

    .line 209
    :pswitch_b
    const-string v0, "clearAllSafetySourceDataForTests"

    return-object v0

    .line 205
    :pswitch_e
    const-string v0, "executeSafetyCenterIssueAction"

    return-object v0

    .line 201
    :pswitch_11
    const-string v0, "dismissSafetyCenterIssue"

    return-object v0

    .line 197
    :pswitch_14
    const-string v0, "removeOnSafetyCenterDataChangedListener"

    return-object v0

    .line 193
    :pswitch_17
    const-string v0, "addOnSafetyCenterDataChangedListener"

    return-object v0

    .line 189
    :pswitch_1a
    const-string v0, "getSafetyCenterData"

    return-object v0

    .line 185
    :pswitch_1d
    const-string v0, "getSafetyCenterConfig"

    return-object v0

    .line 181
    :pswitch_20
    const-string v0, "refreshSpecificSafetySources"

    return-object v0

    .line 177
    :pswitch_23
    const-string v0, "refreshSafetySources"

    return-object v0

    .line 173
    :pswitch_26
    const-string v0, "reportSafetySourceError"

    return-object v0

    .line 169
    :pswitch_29
    const-string v0, "getSafetySourceData"

    return-object v0

    .line 165
    :pswitch_2c
    const-string v0, "setSafetySourceData"

    return-object v0

    .line 161
    :pswitch_2f
    const-string v0, "isSafetyCenterEnabled"

    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
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

    .line 152
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 733
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 228
    invoke-static {p1}, Landroid/safetycenter/ISafetyCenterManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    const-string v6, "android.safetycenter.ISafetyCenterManager"

    .line 233
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 234
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    return v7

    .line 240
    :cond_16
    packed-switch p1, :pswitch_data_132

    .line 398
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 392
    :pswitch_1e
    invoke-virtual {p0}, Landroid/safetycenter/ISafetyCenterManager$Stub;->clearSafetyCenterConfigForTests()V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    goto/16 :goto_131

    .line 385
    :pswitch_26
    sget-object v1, Landroid/safetycenter/config/SafetyCenterConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/config/SafetyCenterConfig;

    .line 386
    .local v1, "_arg0":Landroid/safetycenter/config/SafetyCenterConfig;
    invoke-virtual {p0, v1}, Landroid/safetycenter/ISafetyCenterManager$Stub;->setSafetyCenterConfigForTests(Landroid/safetycenter/config/SafetyCenterConfig;)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_131

    .line 378
    .end local v1    # "_arg0":Landroid/safetycenter/config/SafetyCenterConfig;
    :pswitch_36
    invoke-virtual {p0}, Landroid/safetycenter/ISafetyCenterManager$Stub;->clearAllSafetySourceDataForTests()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_131

    .line 367
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/safetycenter/ISafetyCenterManager$Stub;->executeSafetyCenterIssueAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    goto/16 :goto_131

    .line 357
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/safetycenter/ISafetyCenterManager$Stub;->dismissSafetyCenterIssue(Ljava/lang/String;I)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_131

    .line 347
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safetycenter/IOnSafetyCenterDataChangedListener;

    move-result-object v1

    .line 349
    .local v1, "_arg0":Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/safetycenter/ISafetyCenterManager$Stub;->removeOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;I)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_131

    .line 335
    .end local v1    # "_arg0":Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    .end local v2    # "_arg1":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/safetycenter/IOnSafetyCenterDataChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safetycenter/IOnSafetyCenterDataChangedListener;

    move-result-object v1

    .line 337
    .restart local v1    # "_arg0":Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 340
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/safetycenter/ISafetyCenterManager$Stub;->addOnSafetyCenterDataChangedListener(Landroid/safetycenter/IOnSafetyCenterDataChangedListener;Ljava/lang/String;I)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_131

    .line 324
    .end local v1    # "_arg0":Landroid/safetycenter/IOnSafetyCenterDataChangedListener;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 327
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/safetycenter/ISafetyCenterManager$Stub;->getSafetyCenterData(Ljava/lang/String;I)Landroid/safetycenter/SafetyCenterData;

    move-result-object v3

    .line 328
    .local v3, "_result":Landroid/safetycenter/SafetyCenterData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v3, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 330
    goto/16 :goto_131

    .line 316
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/safetycenter/SafetyCenterData;
    :pswitch_a2
    invoke-virtual {p0}, Landroid/safetycenter/ISafetyCenterManager$Stub;->getSafetyCenterConfig()Landroid/safetycenter/config/SafetyCenterConfig;

    move-result-object v1

    .line 317
    .local v1, "_result":Landroid/safetycenter/config/SafetyCenterConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v1, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 319
    goto/16 :goto_131

    .line 305
    .end local v1    # "_result":Landroid/safetycenter/config/SafetyCenterConfig;
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 309
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 310
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2, v3}, Landroid/safetycenter/ISafetyCenterManager$Stub;->refreshSpecificSafetySources(IILjava/util/List;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto :goto_131

    .line 295
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 298
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/safetycenter/ISafetyCenterManager$Stub;->refreshSafetySources(II)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_131

    .line 281
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/safetycenter/SafetySourceErrorDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/safetycenter/SafetySourceErrorDetails;

    .line 285
    .local v2, "_arg1":Landroid/safetycenter/SafetySourceErrorDetails;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/safetycenter/ISafetyCenterManager$Stub;->reportSafetySourceError(Ljava/lang/String;Landroid/safetycenter/SafetySourceErrorDetails;Ljava/lang/String;I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto :goto_131

    .line 268
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/safetycenter/SafetySourceErrorDetails;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/safetycenter/ISafetyCenterManager$Stub;->getSafetySourceData(Ljava/lang/String;Ljava/lang/String;I)Landroid/safetycenter/SafetySourceData;

    move-result-object v4

    .line 274
    .local v4, "_result":Landroid/safetycenter/SafetySourceData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 276
    goto :goto_131

    .line 252
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/safetycenter/SafetySourceData;
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/safetycenter/SafetySourceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/safetycenter/SafetySourceData;

    .line 256
    .local v2, "_arg1":Landroid/safetycenter/SafetySourceData;
    sget-object v3, Landroid/safetycenter/SafetyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safetycenter/SafetyEvent;

    .line 258
    .local v3, "_arg2":Landroid/safetycenter/SafetyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 261
    .local v5, "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/safetycenter/ISafetyCenterManager$Stub;->setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;Ljava/lang/String;I)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_131

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/safetycenter/SafetySourceData;
    .end local v3    # "_arg2":Landroid/safetycenter/SafetyEvent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :pswitch_126
    invoke-virtual {p0}, Landroid/safetycenter/ISafetyCenterManager$Stub;->isSafetyCenterEnabled()Z

    move-result v0

    .line 245
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    nop

    .line 401
    .end local v0    # "_result":Z
    :goto_131
    return v7

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_126
        :pswitch_102
        :pswitch_eb
        :pswitch_d0
        :pswitch_c1
        :pswitch_ae
        :pswitch_a2
        :pswitch_8e
        :pswitch_76
        :pswitch_62
        :pswitch_52
        :pswitch_3e
        :pswitch_36
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
