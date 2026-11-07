.class public abstract Landroid/window/IWindowOrganizerController$Stub;
.super Landroid/os/Binder;
.source "IWindowOrganizerController.java"

# interfaces
.implements Landroid/window/IWindowOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IWindowOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IWindowOrganizerController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applySyncTransaction:I = 0x2

.field static final blacklist TRANSACTION_applyTransaction:I = 0x1

.field static final blacklist TRANSACTION_finishTransition:I = 0x5

.field static final blacklist TRANSACTION_getApplyToken:I = 0xc

.field static final blacklist TRANSACTION_getDisplayAreaOrganizerController:I = 0x7

.field static final blacklist TRANSACTION_getTaskFragmentOrganizerController:I = 0x8

.field static final blacklist TRANSACTION_getTaskOrganizerController:I = 0x6

.field static final blacklist TRANSACTION_getTransitionMetricsReporter:I = 0xb

.field static final blacklist TRANSACTION_registerTransitionPlayer:I = 0x9

.field static final blacklist TRANSACTION_startNewTransition:I = 0x3

.field static final blacklist TRANSACTION_startTransition:I = 0x4

.field static final blacklist TRANSACTION_unregisterTransitionPlayer:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-virtual {p0, p0, v0}, Landroid/window/IWindowOrganizerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IWindowOrganizerController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_4
    const-string v0, "android.window.IWindowOrganizerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IWindowOrganizerController;

    if-eqz v1, :cond_14

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/window/IWindowOrganizerController;

    return-object v1

    .line 128
    :cond_14
    new-instance v1, Landroid/window/IWindowOrganizerController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IWindowOrganizerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 137
    packed-switch p0, :pswitch_data_2e

    .line 189
    const/4 v0, 0x0

    return-object v0

    .line 185
    :pswitch_5
    const-string v0, "getApplyToken"

    return-object v0

    .line 181
    :pswitch_8
    const-string v0, "getTransitionMetricsReporter"

    return-object v0

    .line 177
    :pswitch_b
    const-string/jumbo v0, "unregisterTransitionPlayer"

    return-object v0

    .line 173
    :pswitch_f
    const-string/jumbo v0, "registerTransitionPlayer"

    return-object v0

    .line 169
    :pswitch_13
    const-string v0, "getTaskFragmentOrganizerController"

    return-object v0

    .line 165
    :pswitch_16
    const-string v0, "getDisplayAreaOrganizerController"

    return-object v0

    .line 161
    :pswitch_19
    const-string v0, "getTaskOrganizerController"

    return-object v0

    .line 157
    :pswitch_1c
    const-string v0, "finishTransition"

    return-object v0

    .line 153
    :pswitch_1f
    const-string/jumbo v0, "startTransition"

    return-object v0

    .line 149
    :pswitch_23
    const-string/jumbo v0, "startNewTransition"

    return-object v0

    .line 145
    :pswitch_27
    const-string v0, "applySyncTransaction"

    return-object v0

    .line 141
    :pswitch_2a
    const-string v0, "applyTransaction"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
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

    .line 132
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 598
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 196
    invoke-static {p1}, Landroid/window/IWindowOrganizerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 200
    const-string v0, "android.window.IWindowOrganizerController"

    .line 201
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 202
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 205
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    return v1

    .line 208
    :cond_16
    packed-switch p1, :pswitch_data_f8

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 313
    :pswitch_1e
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getApplyToken()Landroid/os/IBinder;

    move-result-object v2

    .line 314
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 316
    goto/16 :goto_f6

    .line 306
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_2a
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;

    move-result-object v2

    .line 307
    .local v2, "_result":Landroid/window/ITransitionMetricsReporter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 309
    goto/16 :goto_f6

    .line 298
    .end local v2    # "_result":Landroid/window/ITransitionMetricsReporter;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object v2

    .line 299
    .local v2, "_arg0":Landroid/window/ITransitionPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_f6

    .line 289
    .end local v2    # "_arg0":Landroid/window/ITransitionPlayer;
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITransitionPlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITransitionPlayer;

    move-result-object v2

    .line 290
    .restart local v2    # "_arg0":Landroid/window/ITransitionPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_f6

    .line 281
    .end local v2    # "_arg0":Landroid/window/ITransitionPlayer;
    :pswitch_5c
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v2

    .line 282
    .local v2, "_result":Landroid/window/ITaskFragmentOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 284
    goto/16 :goto_f6

    .line 274
    .end local v2    # "_result":Landroid/window/ITaskFragmentOrganizerController;
    :pswitch_68
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;

    move-result-object v2

    .line 275
    .local v2, "_result":Landroid/window/IDisplayAreaOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    goto/16 :goto_f6

    .line 267
    .end local v2    # "_result":Landroid/window/IDisplayAreaOrganizerController;
    :pswitch_74
    invoke-virtual {p0}, Landroid/window/IWindowOrganizerController$Stub;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v2

    .line 268
    .local v2, "_result":Landroid/window/ITaskOrganizerController;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 270
    goto/16 :goto_f6

    .line 257
    .end local v2    # "_result":Landroid/window/ITaskOrganizerController;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 259
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 260
    .local v3, "_arg1":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto :goto_f6

    .line 246
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 249
    .restart local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    goto :goto_f6

    .line 234
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    sget-object v3, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 237
    .restart local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;

    move-result-object v4

    .line 239
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    goto :goto_f6

    .line 222
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/WindowContainerTransaction;
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_c6
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    .line 224
    .local v2, "_arg0":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/IWindowContainerTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerTransactionCallback;

    move-result-object v3

    .line 225
    .local v3, "_arg1":Landroid/window/IWindowContainerTransactionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/window/IWindowOrganizerController$Stub;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v4

    .line 227
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    goto :goto_f6

    .line 213
    .end local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    .end local v3    # "_arg1":Landroid/window/IWindowContainerTransactionCallback;
    .end local v4    # "_result":I
    :pswitch_e4
    sget-object v2, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction;

    .line 214
    .restart local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/window/IWindowOrganizerController$Stub;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    nop

    .line 323
    .end local v2    # "_arg0":Landroid/window/WindowContainerTransaction;
    :goto_f6
    return v1

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_c6
        :pswitch_ac
        :pswitch_96
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_49
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
