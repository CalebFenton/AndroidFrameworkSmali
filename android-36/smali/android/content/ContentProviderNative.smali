.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    nop

    .line 63
    const-string v0, "android.content.IContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 64
    .local v0, "in":Landroid/content/IContentProvider;
    if-eqz v0, :cond_10

    .line 65
    return-object v0

    .line 68
    :cond_10
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 449
    return-object p0
.end method

.method public abstract greylist-max-o getProviderName()Ljava/lang/String;
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    const-string v2, "android.content.IContentProvider"

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_388

    .line 441
    :pswitch_b
    goto/16 :goto_383

    .line 164
    :pswitch_d
    :try_start_d
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 166
    .local v0, "url":Landroid/net/Uri;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 167
    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentProviderNative;->getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 168
    return v9

    .line 400
    .end local v0    # "url":Landroid/net/Uri;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    :pswitch_24
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 402
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 403
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 404
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 405
    .local v3, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 406
    return v9

    .line 377
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "callback":Landroid/os/RemoteCallback;
    :pswitch_43
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 379
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 380
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 381
    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 382
    .restart local v3    # "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 383
    return v9

    .line 154
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "callback":Landroid/os/RemoteCallback;
    :pswitch_62
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 157
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 158
    .local v2, "url":Landroid/net/Uri;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 159
    .restart local v3    # "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 160
    return v9

    .line 425
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "callback":Landroid/os/RemoteCallback;
    :pswitch_81
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 427
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 428
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 429
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 430
    .local v3, "uid":I
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 432
    .local v4, "modeFlags":I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentProviderNative;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v5

    .line 433
    .local v5, "out":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    return v9

    .line 410
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "uid":I
    .end local v4    # "modeFlags":I
    .end local v5    # "out":I
    :pswitch_a7
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 412
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 413
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 414
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 415
    .local v4, "extras":Landroid/os/Bundle;
    nop

    .line 416
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 415
    invoke-static {v5}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 418
    .local v5, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/ContentProviderNative;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v6

    .line 419
    .local v6, "out":Z
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v6, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v0, -0x1

    :goto_d2
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    return v9

    .line 388
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "signal":Landroid/os/ICancellationSignal;
    .end local v6    # "out":Z
    :pswitch_d6
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 390
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 391
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 393
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentProviderNative;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 394
    .local v3, "out":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-static {v8, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 396
    return v9

    .line 365
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "out":Landroid/net/Uri;
    :pswitch_f4
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 367
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 368
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 370
    .restart local v2    # "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentProviderNative;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 371
    .restart local v3    # "out":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-static {v8, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 373
    return v9

    .line 355
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "out":Landroid/net/Uri;
    :pswitch_112
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 358
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 360
    return v9

    .line 331
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_124
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 333
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 334
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 335
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 337
    .local v5, "opts":Landroid/os/Bundle;
    nop

    .line 338
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 337
    invoke-static {v6}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 341
    .local v6, "signal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    .line 342
    .local v10, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v10, :cond_159

    .line 344
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {v10, v8, v9}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15c

    .line 348
    :cond_159
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    :goto_15c
    return v9

    .line 317
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .end local v6    # "signal":Landroid/os/ICancellationSignal;
    .end local v10    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_15d
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 320
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 321
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "mimeTypeFilter":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "types":[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    return v9

    .line 298
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mimeTypeFilter":Ljava/lang/String;
    .end local v4    # "types":[Ljava/lang/String;
    :pswitch_17f
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 301
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/AttributionSource;

    .line 302
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "authority":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "method":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "stringArg":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 307
    .local v6, "extras":Landroid/os/Bundle;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 310
    .local v0, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 312
    return v9

    .line 202
    .end local v0    # "responseBundle":Landroid/os/Bundle;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "stringArg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    :pswitch_1a7
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 205
    .restart local v2    # "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3    # "authority":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .local v4, "numOperations":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c0
    if-ge v6, v4, :cond_1d0

    .line 210
    sget-object v10, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5, v6, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c0

    .line 212
    .end local v6    # "i":I
    :cond_1d0
    invoke-virtual {p0, v2, v3, v5}, Landroid/content/ContentProviderNative;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 214
    .local v6, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v8, v6, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 216
    return v9

    .line 275
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "numOperations":I
    .end local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_1db
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 278
    .restart local v2    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 279
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "mode":Ljava/lang/String;
    nop

    .line 281
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 280
    invoke-static {v5}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 284
    .local v5, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 285
    .local v6, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v6, :cond_20b

    .line 287
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {v6, v8, v9}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20e

    .line 291
    :cond_20b
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_20e
    return v9

    .line 252
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mode":Ljava/lang/String;
    .end local v5    # "signal":Landroid/os/ICancellationSignal;
    .end local v6    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_20f
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 254
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 255
    .restart local v2    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 256
    .restart local v3    # "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4    # "mode":Ljava/lang/String;
    nop

    .line 258
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 257
    invoke-static {v5}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 261
    .restart local v5    # "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/ContentProviderNative;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 262
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v6, :cond_23f

    .line 264
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {v6, v8, v9}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_242

    .line 268
    :cond_23f
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    :goto_242
    return v9

    .line 188
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mode":Ljava/lang/String;
    .end local v5    # "signal":Landroid/os/ICancellationSignal;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_243
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 191
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 192
    .local v2, "url":Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    .line 194
    .local v3, "values":[Landroid/content/ContentValues;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    .line 195
    .local v4, "count":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v9

    .line 236
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "values":[Landroid/content/ContentValues;
    .end local v4    # "count":I
    :pswitch_269
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 239
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 240
    .restart local v2    # "url":Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 241
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 243
    .local v4, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentProviderNative;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v5

    .line 245
    .local v5, "count":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    return v9

    .line 221
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "count":I
    :pswitch_293
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 223
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 224
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 225
    .restart local v2    # "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 227
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/ContentProviderNative;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v4

    .line 229
    .local v4, "count":I
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v9

    .line 173
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "count":I
    :pswitch_2b5
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 176
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 177
    .restart local v2    # "url":Landroid/net/Uri;
    sget-object v3, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 178
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 180
    .local v4, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentProviderNative;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v5

    .line 181
    .local v5, "out":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-static {v8, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 183
    return v9

    .line 142
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "out":Landroid/net/Uri;
    :pswitch_2df
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 145
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 146
    .restart local v2    # "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentProviderNative;->getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v9

    .line 85
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "type":Ljava/lang/String;
    :pswitch_2fd
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 89
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 92
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v10, v4

    .line 93
    .local v10, "num":I
    const/4 v4, 0x0

    .line 94
    .local v4, "projection":[Ljava/lang/String;
    if-lez v10, :cond_327

    .line 95
    new-array v5, v10, [Ljava/lang/String;

    move-object v4, v5

    .line 96
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31c
    if-ge v5, v10, :cond_327

    .line 97
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 96
    add-int/lit8 v5, v5, 0x1

    goto :goto_31c

    .line 101
    .end local v5    # "i":I
    :cond_327
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 102
    .local v5, "queryArgs":Landroid/os/Bundle;
    nop

    .line 103
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 102
    invoke-static {v6}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v6

    move-object v11, v6

    .line 104
    .local v11, "observer":Landroid/database/IContentObserver;
    nop

    .line 105
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 104
    invoke-static {v6}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 107
    .local v6, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_343} :catch_37e

    .line 109
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_377

    .line 110
    const/4 v1, 0x0

    .line 113
    .local v1, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_346
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    .line 114
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v11, v13}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    move-object v1, v0

    .line 115
    const/4 v12, 0x0

    .line 117
    invoke-virtual {v1}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    .line 118
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, v8, v9}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_35f
    .catchall {:try_start_346 .. :try_end_35f} :catchall_36a

    .line 125
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    if-eqz v1, :cond_364

    .line 126
    :try_start_361
    invoke-virtual {v1}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 128
    :cond_364
    if-eqz v12, :cond_369

    .line 129
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v1    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :cond_369
    goto :goto_37d

    .line 125
    .restart local v1    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_36a
    move-exception v0

    if-eqz v1, :cond_370

    .line 126
    invoke-virtual {v1}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 128
    :cond_370
    if-eqz v12, :cond_375

    .line 129
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_375
    nop

    .end local p0    # "this":Landroid/content/ContentProviderNative;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    throw v0

    .line 133
    .end local v1    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local p0    # "this":Landroid/content/ContentProviderNative;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :cond_377
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_37d} :catch_37e

    .line 137
    :goto_37d
    return v9

    .line 438
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .end local v6    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v10    # "num":I
    .end local v11    # "observer":Landroid/database/IContentObserver;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catch_37e
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 440
    return v9

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_383
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_2fd
        :pswitch_2df
        :pswitch_2b5
        :pswitch_293
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_269
        :pswitch_b
        :pswitch_b
        :pswitch_243
        :pswitch_20f
        :pswitch_1db
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1a7
        :pswitch_17f
        :pswitch_15d
        :pswitch_124
        :pswitch_112
        :pswitch_f4
        :pswitch_d6
        :pswitch_a7
        :pswitch_81
        :pswitch_62
        :pswitch_43
        :pswitch_24
        :pswitch_d
    .end packed-switch
.end method
