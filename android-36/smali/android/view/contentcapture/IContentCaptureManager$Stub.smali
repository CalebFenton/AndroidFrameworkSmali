.class public abstract Landroid/view/contentcapture/IContentCaptureManager$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureManager.java"

# interfaces
.implements Landroid/view/contentcapture/IContentCaptureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishSession:I = 0x2

.field static final blacklist TRANSACTION_getContentCaptureConditions:I = 0x8

.field static final blacklist TRANSACTION_getServiceComponentName:I = 0x3

.field static final blacklist TRANSACTION_getServiceSettingsActivity:I = 0x7

.field static final blacklist TRANSACTION_isContentCaptureFeatureEnabled:I = 0x6

.field static final blacklist TRANSACTION_onLoginDetected:I = 0xd

.field static final blacklist TRANSACTION_registerContentCaptureOptionsCallback:I = 0xc

.field static final blacklist TRANSACTION_removeData:I = 0x4

.field static final blacklist TRANSACTION_resetTemporaryService:I = 0x9

.field static final blacklist TRANSACTION_setDefaultServiceEnabled:I = 0xb

.field static final blacklist TRANSACTION_setTemporaryService:I = 0xa

.field static final blacklist TRANSACTION_shareData:I = 0x5

.field static final blacklist TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/contentcapture/IContentCaptureManager;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/view/contentcapture/IContentCaptureManager;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 124
    packed-switch p0, :pswitch_data_34

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 176
    :pswitch_5
    const-string v0, "onLoginDetected"

    return-object v0

    .line 172
    :pswitch_8
    const-string/jumbo v0, "registerContentCaptureOptionsCallback"

    return-object v0

    .line 168
    :pswitch_c
    const-string/jumbo v0, "setDefaultServiceEnabled"

    return-object v0

    .line 164
    :pswitch_10
    const-string/jumbo v0, "setTemporaryService"

    return-object v0

    .line 160
    :pswitch_14
    const-string/jumbo v0, "resetTemporaryService"

    return-object v0

    .line 156
    :pswitch_18
    const-string v0, "getContentCaptureConditions"

    return-object v0

    .line 152
    :pswitch_1b
    const-string v0, "getServiceSettingsActivity"

    return-object v0

    .line 148
    :pswitch_1e
    const-string v0, "isContentCaptureFeatureEnabled"

    return-object v0

    .line 144
    :pswitch_21
    const-string/jumbo v0, "shareData"

    return-object v0

    .line 140
    :pswitch_25
    const-string/jumbo v0, "removeData"

    return-object v0

    .line 136
    :pswitch_29
    const-string v0, "getServiceComponentName"

    return-object v0

    .line 132
    :pswitch_2c
    const-string v0, "finishSession"

    return-object v0

    .line 128
    :pswitch_2f
    const-string/jumbo v0, "startSession"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
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

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 561
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 187
    invoke-static {p1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    .line 192
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 193
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v1

    .line 199
    :cond_16
    packed-switch p1, :pswitch_data_110

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 322
    :pswitch_1e
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 323
    .local v2, "_arg0":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->onLoginDetected(Landroid/content/pm/ParceledListSlice;)V

    .line 325
    goto/16 :goto_10e

    .line 312
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/contentcapture/ContentCaptureEvent;>;"
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureOptionsCallback;

    move-result-object v3

    .line 315
    .local v3, "_arg1":Landroid/view/contentcapture/IContentCaptureOptionsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V

    .line 317
    goto/16 :goto_10e

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/view/contentcapture/IContentCaptureOptionsCallback;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 305
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setDefaultServiceEnabled(IZ)V

    .line 307
    goto/16 :goto_10e

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 295
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    .line 297
    goto/16 :goto_10e

    .line 282
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->resetTemporaryService(I)V

    .line 285
    goto/16 :goto_10e

    .line 272
    .end local v2    # "_arg0":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 275
    .local v3, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 277
    goto/16 :goto_10e

    .line 264
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 265
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    .line 267
    goto/16 :goto_10e

    .line 256
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 257
    .restart local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 259
    goto :goto_10e

    .line 246
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_a5
    sget-object v2, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/DataShareRequest;

    .line 248
    .local v2, "_arg0":Landroid/view/contentcapture/DataShareRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;

    move-result-object v3

    .line 249
    .local v3, "_arg1":Landroid/view/contentcapture/IDataShareWriteAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V

    .line 251
    goto :goto_10e

    .line 238
    .end local v2    # "_arg0":Landroid/view/contentcapture/DataShareRequest;
    .end local v3    # "_arg1":Landroid/view/contentcapture/IDataShareWriteAdapter;
    :pswitch_bc
    sget-object v2, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/contentcapture/DataRemovalRequest;

    .line 239
    .local v2, "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 241
    goto :goto_10e

    .line 230
    .end local v2    # "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 233
    goto :goto_10e

    .line 222
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->finishSession(I)V

    .line 225
    goto :goto_10e

    .line 204
    .end local v2    # "_arg0":I
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 206
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 208
    .local v5, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/ComponentName;

    .line 210
    .local v6, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 212
    .local v7, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 214
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v9

    .line 215
    .local v9, "_arg5":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V

    .line 217
    nop

    .line 332
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/content/ComponentName;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Lcom/android/internal/os/IResultReceiver;
    :goto_10e
    return v1

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_da
        :pswitch_cb
        :pswitch_bc
        :pswitch_a5
        :pswitch_96
        :pswitch_86
        :pswitch_72
        :pswitch_66
        :pswitch_52
        :pswitch_42
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
