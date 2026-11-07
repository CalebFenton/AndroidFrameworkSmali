.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final greylist-max-o TRANSACTION_containsCaAlias:I = 0x11

.field static final blacklist TRANSACTION_containsKeyPair:I = 0xb

.field static final greylist-max-o TRANSACTION_deleteCaCertificate:I = 0xd

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6

.field static final greylist-max-o TRANSACTION_getCaCertificateChainAliases:I = 0x13

.field static final greylist-max-o TRANSACTION_getCaCertificates:I = 0x3

.field static final greylist-max-o TRANSACTION_getCertificate:I = 0x2

.field static final blacklist TRANSACTION_getCredentialManagementAppPackageName:I = 0x16

.field static final blacklist TRANSACTION_getCredentialManagementAppPolicy:I = 0x17

.field static final greylist-max-o TRANSACTION_getEncodedCaCertificate:I = 0x12

.field static final blacklist TRANSACTION_getGrants:I = 0xc

.field static final blacklist TRANSACTION_getPredefinedAliasForPackageAndUri:I = 0x18

.field static final greylist-max-o TRANSACTION_getSystemCaAliases:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserCaAliases:I = 0xf

.field static final blacklist TRANSACTION_getWifiKeyGrantAsUser:I = 0x1d

.field static final blacklist TRANSACTION_hasCredentialManagementApp:I = 0x15

.field static final greylist-max-o TRANSACTION_hasGrant:I = 0x1c

.field static final greylist-max-o TRANSACTION_installCaCertificate:I = 0x8

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x9

.field static final blacklist TRANSACTION_isCredentialManagementApp:I = 0x1a

.field static final greylist-max-o TRANSACTION_isUserSelectable:I = 0x4

.field static final blacklist TRANSACTION_removeCredentialManagementApp:I = 0x19

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0xa

.field static final greylist-max-o TRANSACTION_requestPrivateKey:I = 0x1

.field static final greylist-max-o TRANSACTION_reset:I = 0xe

.field static final blacklist TRANSACTION_setCredentialManagementApp:I = 0x14

.field static final greylist-max-o TRANSACTION_setGrant:I = 0x1b

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x7

.field static final greylist-max-o TRANSACTION_setUserSelectable:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 152
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 153
    const-string v0, "android.security.IKeyChainService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 161
    if-nez p0, :cond_4

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_4
    const-string v0, "android.security.IKeyChainService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 165
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/IKeyChainService;

    if-eqz v1, :cond_14

    .line 166
    move-object v1, v0

    check-cast v1, Landroid/security/IKeyChainService;

    return-object v1

    .line 168
    :cond_14
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 177
    packed-switch p0, :pswitch_data_6e

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 293
    :pswitch_5
    const-string/jumbo v0, "getWifiKeyGrantAsUser"

    return-object v0

    .line 289
    :pswitch_9
    const-string/jumbo v0, "hasGrant"

    return-object v0

    .line 285
    :pswitch_d
    const-string/jumbo v0, "setGrant"

    return-object v0

    .line 281
    :pswitch_11
    const-string/jumbo v0, "isCredentialManagementApp"

    return-object v0

    .line 277
    :pswitch_15
    const-string/jumbo v0, "removeCredentialManagementApp"

    return-object v0

    .line 273
    :pswitch_19
    const-string v0, "getPredefinedAliasForPackageAndUri"

    return-object v0

    .line 269
    :pswitch_1c
    const-string v0, "getCredentialManagementAppPolicy"

    return-object v0

    .line 265
    :pswitch_1f
    const-string v0, "getCredentialManagementAppPackageName"

    return-object v0

    .line 261
    :pswitch_22
    const-string/jumbo v0, "hasCredentialManagementApp"

    return-object v0

    .line 257
    :pswitch_26
    const-string/jumbo v0, "setCredentialManagementApp"

    return-object v0

    .line 253
    :pswitch_2a
    const-string v0, "getCaCertificateChainAliases"

    return-object v0

    .line 249
    :pswitch_2d
    const-string v0, "getEncodedCaCertificate"

    return-object v0

    .line 245
    :pswitch_30
    const-string v0, "containsCaAlias"

    return-object v0

    .line 241
    :pswitch_33
    const-string/jumbo v0, "getSystemCaAliases"

    return-object v0

    .line 237
    :pswitch_37
    const-string/jumbo v0, "getUserCaAliases"

    return-object v0

    .line 233
    :pswitch_3b
    const-string/jumbo v0, "reset"

    return-object v0

    .line 229
    :pswitch_3f
    const-string v0, "deleteCaCertificate"

    return-object v0

    .line 225
    :pswitch_42
    const-string v0, "getGrants"

    return-object v0

    .line 221
    :pswitch_45
    const-string v0, "containsKeyPair"

    return-object v0

    .line 217
    :pswitch_48
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 213
    :pswitch_4c
    const-string/jumbo v0, "installKeyPair"

    return-object v0

    .line 209
    :pswitch_50
    const-string/jumbo v0, "installCaCertificate"

    return-object v0

    .line 205
    :pswitch_54
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 201
    :pswitch_58
    const-string v0, "generateKeyPair"

    return-object v0

    .line 197
    :pswitch_5b
    const-string/jumbo v0, "setUserSelectable"

    return-object v0

    .line 193
    :pswitch_5f
    const-string/jumbo v0, "isUserSelectable"

    return-object v0

    .line 189
    :pswitch_63
    const-string v0, "getCaCertificates"

    return-object v0

    .line 185
    :pswitch_66
    const-string v0, "getCertificate"

    return-object v0

    .line 181
    :pswitch_69
    const-string/jumbo v0, "requestPrivateKey"

    return-object v0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
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

    .line 172
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1199
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 304
    invoke-static {p1}, Landroid/security/IKeyChainService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 308
    const-string v0, "android.security.IKeyChainService"

    .line 309
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 310
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 313
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    return v1

    .line 316
    :cond_16
    packed-switch p1, :pswitch_data_26a

    .line 616
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 607
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getWifiKeyGrantAsUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    move-object v4, p0

    goto/16 :goto_268

    .line 595
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 597
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    move-result v4

    .line 600
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    move-object v4, p0

    goto/16 :goto_268

    .line 581
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 586
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)Z

    move-result v5

    .line 588
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    move-object v4, p0

    goto/16 :goto_268

    .line 571
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->isCredentialManagementApp(Ljava/lang/String;)Z

    move-result v3

    .line 574
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 576
    move-object v4, p0

    goto/16 :goto_268

    .line 564
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7b
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->removeCredentialManagementApp()V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    move-object v4, p0

    goto/16 :goto_268

    .line 553
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 556
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->getPredefinedAliasForPackageAndUri(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    move-object v4, p0

    goto/16 :goto_268

    .line 545
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_a0
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2

    .line 546
    .local v2, "_result":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 548
    move-object v4, p0

    goto/16 :goto_268

    .line 538
    .end local v2    # "_result":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_ad
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    move-object v4, p0

    goto/16 :goto_268

    .line 531
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_ba
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->hasCredentialManagementApp()Z

    move-result v2

    .line 532
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 534
    move-object v4, p0

    goto/16 :goto_268

    .line 521
    .end local v2    # "_result":Z
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/security/AppUriAuthenticationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/AppUriAuthenticationPolicy;

    .line 524
    .local v3, "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object v4, p0

    goto/16 :goto_268

    .line 509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 512
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 514
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 516
    move-object v4, p0

    goto/16 :goto_268

    .line 497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 500
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 502
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 504
    move-object v4, p0

    goto/16 :goto_268

    .line 487
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":[B
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    move-result v3

    .line 490
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    move-object v4, p0

    goto/16 :goto_268

    .line 479
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_123
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 480
    .local v2, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 482
    move-object v4, p0

    goto/16 :goto_268

    .line 472
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_130
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    .line 473
    .restart local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 475
    move-object v4, p0

    goto/16 :goto_268

    .line 465
    .end local v2    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_13d
    invoke-virtual {p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    move-result v2

    .line 466
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    move-object v4, p0

    goto/16 :goto_268

    .line 456
    .end local v2    # "_result":Z
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v3

    .line 459
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 461
    move-object v4, p0

    goto/16 :goto_268

    .line 446
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_15e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getGrants(Ljava/lang/String;)[I

    move-result-object v3

    .line 449
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 451
    move-object v4, p0

    goto/16 :goto_268

    .line 436
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->containsKeyPair(Ljava/lang/String;)Z

    move-result v3

    .line 439
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    move-object v4, p0

    goto/16 :goto_268

    .line 426
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 427
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->removeKeyPair(Ljava/lang/String;)Z

    move-result v3

    .line 429
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    move-object v4, p0

    goto/16 :goto_268

    .line 408
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 410
    .local v5, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 412
    .local v6, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 414
    .local v7, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 417
    .local v9, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result v2

    .line 419
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_268

    .line 398
    .end local v2    # "_result":Z
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":[B
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":I
    :pswitch_1be
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 399
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    goto/16 :goto_268

    .line 384
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d2
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 388
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 389
    .local v5, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3, v5}, Landroid/security/IKeyChainService$Stub;->setKeyPairCertificate(Ljava/lang/String;[B[B)Z

    move-result v6

    .line 391
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_268

    .line 372
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v5    # "_arg2":[B
    .end local v6    # "_result":Z
    :pswitch_1ee
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 375
    .local v3, "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->generateKeyPair(Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;)I

    move-result v5

    .line 377
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    goto :goto_268

    .line 361
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v5    # "_result":I
    :pswitch_209
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 364
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, v2, v3}, Landroid/security/IKeyChainService$Stub;->setUserSelectable(Ljava/lang/String;Z)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto :goto_268

    .line 351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_21c
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->isUserSelectable(Ljava/lang/String;)Z

    move-result v3

    .line 354
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 356
    goto :goto_268

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22f
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v3

    .line 344
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 346
    goto :goto_268

    .line 331
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_242
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    move-result-object v3

    .line 334
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 336
    goto :goto_268

    .line 321
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_255
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v2}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    nop

    .line 619
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :goto_268
    return v1

    nop

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_255
        :pswitch_242
        :pswitch_22f
        :pswitch_21c
        :pswitch_209
        :pswitch_1ee
        :pswitch_1d2
        :pswitch_1be
        :pswitch_19a
        :pswitch_186
        :pswitch_172
        :pswitch_15e
        :pswitch_14a
        :pswitch_13d
        :pswitch_130
        :pswitch_123
        :pswitch_10f
        :pswitch_f7
        :pswitch_df
        :pswitch_c7
        :pswitch_ba
        :pswitch_ad
        :pswitch_a0
        :pswitch_84
        :pswitch_7b
        :pswitch_67
        :pswitch_4b
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
