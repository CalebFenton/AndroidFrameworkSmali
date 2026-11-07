.class public abstract Landroid/print/IPrintManager$Stub;
.super Landroid/os/Binder;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintManager"

.field static final greylist-max-o TRANSACTION_addPrintJobStateChangeListener:I = 0x6

.field static final greylist-max-o TRANSACTION_addPrintServiceRecommendationsChangeListener:I = 0xd

.field static final greylist-max-o TRANSACTION_addPrintServicesChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelPrintJob:I = 0x4

.field static final greylist-max-o TRANSACTION_createPrinterDiscoverySession:I = 0x10

.field static final greylist-max-o TRANSACTION_destroyPrinterDiscoverySession:I = 0x17

.field static final greylist-max-o TRANSACTION_getBindInstantServiceAllowed:I = 0x18

.field static final greylist-max-o TRANSACTION_getCustomPrinterIcon:I = 0x15

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x1

.field static final greylist-max-o TRANSACTION_getPrintServiceRecommendations:I = 0xf

.field static final greylist-max-o TRANSACTION_getPrintServices:I = 0xa

.field static final blacklist TRANSACTION_isPrintServiceEnabled:I = 0xc

.field static final greylist-max-o TRANSACTION_print:I = 0x3

.field static final greylist-max-o TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_removePrintServiceRecommendationsChangeListener:I = 0xe

.field static final greylist-max-o TRANSACTION_removePrintServicesChangeListener:I = 0x9

.field static final greylist-max-o TRANSACTION_restartPrintJob:I = 0x5

.field static final greylist-max-o TRANSACTION_setBindInstantServiceAllowed:I = 0x19

.field static final greylist-max-o TRANSACTION_setPrintServiceEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_startPrinterDiscovery:I = 0x11

.field static final greylist-max-o TRANSACTION_startPrinterStateTracking:I = 0x14

.field static final greylist-max-o TRANSACTION_stopPrinterDiscovery:I = 0x12

.field static final greylist-max-o TRANSACTION_stopPrinterStateTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_validatePrinters:I = 0x13


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 199
    const-string v0, "android.print.IPrintManager"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 207
    if-nez p0, :cond_4

    .line 208
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_4
    const-string v0, "android.print.IPrintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 211
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/IPrintManager;

    if-eqz v1, :cond_14

    .line 212
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintManager;

    return-object v1

    .line 214
    :cond_14
    new-instance v1, Landroid/print/IPrintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 223
    packed-switch p0, :pswitch_data_5e

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 323
    :pswitch_5
    const-string/jumbo v0, "setBindInstantServiceAllowed"

    return-object v0

    .line 319
    :pswitch_9
    const-string v0, "getBindInstantServiceAllowed"

    return-object v0

    .line 315
    :pswitch_c
    const-string v0, "destroyPrinterDiscoverySession"

    return-object v0

    .line 311
    :pswitch_f
    const-string/jumbo v0, "stopPrinterStateTracking"

    return-object v0

    .line 307
    :pswitch_13
    const-string v0, "getCustomPrinterIcon"

    return-object v0

    .line 303
    :pswitch_16
    const-string/jumbo v0, "startPrinterStateTracking"

    return-object v0

    .line 299
    :pswitch_1a
    const-string/jumbo v0, "validatePrinters"

    return-object v0

    .line 295
    :pswitch_1e
    const-string/jumbo v0, "stopPrinterDiscovery"

    return-object v0

    .line 291
    :pswitch_22
    const-string/jumbo v0, "startPrinterDiscovery"

    return-object v0

    .line 287
    :pswitch_26
    const-string v0, "createPrinterDiscoverySession"

    return-object v0

    .line 283
    :pswitch_29
    const-string v0, "getPrintServiceRecommendations"

    return-object v0

    .line 279
    :pswitch_2c
    const-string/jumbo v0, "removePrintServiceRecommendationsChangeListener"

    return-object v0

    .line 275
    :pswitch_30
    const-string v0, "addPrintServiceRecommendationsChangeListener"

    return-object v0

    .line 271
    :pswitch_33
    const-string/jumbo v0, "isPrintServiceEnabled"

    return-object v0

    .line 267
    :pswitch_37
    const-string/jumbo v0, "setPrintServiceEnabled"

    return-object v0

    .line 263
    :pswitch_3b
    const-string v0, "getPrintServices"

    return-object v0

    .line 259
    :pswitch_3e
    const-string/jumbo v0, "removePrintServicesChangeListener"

    return-object v0

    .line 255
    :pswitch_42
    const-string v0, "addPrintServicesChangeListener"

    return-object v0

    .line 251
    :pswitch_45
    const-string/jumbo v0, "removePrintJobStateChangeListener"

    return-object v0

    .line 247
    :pswitch_49
    const-string v0, "addPrintJobStateChangeListener"

    return-object v0

    .line 243
    :pswitch_4c
    const-string/jumbo v0, "restartPrintJob"

    return-object v0

    .line 239
    :pswitch_50
    const-string v0, "cancelPrintJob"

    return-object v0

    .line 235
    :pswitch_53
    const-string/jumbo v0, "print"

    return-object v0

    .line 231
    :pswitch_57
    const-string v0, "getPrintJobInfo"

    return-object v0

    .line 227
    :pswitch_5a
    const-string v0, "getPrintJobInfos"

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
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

    .line 218
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1216
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 334
    invoke-static {p1}, Landroid/print/IPrintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 338
    move-object v7, p3

    const-string v8, "android.print.IPrintManager"

    .line 339
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v1, 0xffffff

    if-gt p1, v1, :cond_e

    .line 340
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    :cond_e
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_17

    .line 343
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    return v9

    .line 346
    :cond_17
    packed-switch p1, :pswitch_data_28c

    .line 649
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 639
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 641
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 642
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->setBindInstantServiceAllowed(IZ)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_28b

    .line 629
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v1}, Landroid/print/IPrintManager$Stub;->getBindInstantServiceAllowed(I)Z

    move-result v2

    .line 632
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 634
    goto/16 :goto_28b

    .line 618
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v1

    .line 620
    .local v1, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_28b

    .line 607
    .end local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v2    # "_arg1":I
    :pswitch_5c
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 609
    .local v1, "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 610
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_28b

    .line 595
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    .end local v2    # "_arg1":I
    :pswitch_73
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 597
    .restart local v1    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 600
    .local v3, "_result":Landroid/graphics/drawable/Icon;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 602
    goto/16 :goto_28b

    .line 584
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/graphics/drawable/Icon;
    :pswitch_8e
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 586
    .restart local v1    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto/16 :goto_28b

    .line 573
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    .end local v2    # "_arg1":I
    :pswitch_a5
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 575
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    goto/16 :goto_28b

    .line 562
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v2    # "_arg1":I
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v1

    .line 564
    .local v1, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    goto/16 :goto_28b

    .line 549
    .end local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v2    # "_arg1":I
    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v1

    .line 551
    .restart local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 553
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto/16 :goto_28b

    .line 538
    .end local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v3    # "_arg2":I
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    goto/16 :goto_28b

    .line 528
    .end local v1    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v2    # "_arg1":I
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1}, Landroid/print/IPrintManager$Stub;->getPrintServiceRecommendations(I)Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v2, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 533
    goto/16 :goto_28b

    .line 517
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object v1

    .line 519
    .local v1, "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_28b

    .line 506
    .end local v1    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v2    # "_arg1":I
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object v1

    .line 508
    .restart local v1    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_28b

    .line 494
    .end local v1    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v2    # "_arg1":I
    :pswitch_146
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 496
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->isPrintServiceEnabled(Landroid/content/ComponentName;I)Z

    move-result v3

    .line 499
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 501
    goto/16 :goto_28b

    .line 481
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_161
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 483
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 485
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 486
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_28b

    .line 469
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintServices(II)Ljava/util/List;

    move-result-object v3

    .line 474
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 476
    goto/16 :goto_28b

    .line 458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :pswitch_193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object v1

    .line 460
    .local v1, "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_28b

    .line 447
    .end local v1    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v2    # "_arg1":I
    :pswitch_1aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object v1

    .line 449
    .restart local v1    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_28b

    .line 436
    .end local v1    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v2    # "_arg1":I
    :pswitch_1c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v1

    .line 438
    .local v1, "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_28b

    .line 423
    .end local v1    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v2    # "_arg1":I
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v1

    .line 425
    .restart local v1    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 428
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    goto/16 :goto_28b

    .line 410
    .end local v1    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_1f3
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 412
    .local v1, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 415
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

    .line 417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    goto/16 :goto_28b

    .line 397
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_20e
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 399
    .restart local v1    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 402
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto :goto_28b

    .line 377
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintDocumentAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;

    move-result-object v2

    .line 381
    .local v2, "_arg1":Landroid/print/IPrintDocumentAdapter;
    sget-object v3, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintAttributes;

    .line 383
    .local v3, "_arg2":Landroid/print/PrintAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 387
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 388
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/print/IPrintManager$Stub;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    .line 390
    .local v10, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v10, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 392
    goto :goto_28b

    .line 363
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/print/IPrintDocumentAdapter;
    .end local v3    # "_arg2":Landroid/print/PrintAttributes;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v10    # "_result":Landroid/os/Bundle;
    :pswitch_257
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 365
    .local v1, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1, v2, v3}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v4

    .line 370
    .local v4, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 372
    goto :goto_28b

    .line 351
    .end local v1    # "_arg0":Landroid/print/PrintJobId;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/print/PrintJobInfo;
    :pswitch_275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object v3

    .line 356
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 358
    nop

    .line 652
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_28b
    return v9

    :pswitch_data_28c
    .packed-switch 0x1
        :pswitch_275
        :pswitch_257
        :pswitch_228
        :pswitch_20e
        :pswitch_1f3
        :pswitch_1d8
        :pswitch_1c1
        :pswitch_1aa
        :pswitch_193
        :pswitch_17c
        :pswitch_161
        :pswitch_146
        :pswitch_12f
        :pswitch_118
        :pswitch_105
        :pswitch_ee
        :pswitch_d1
        :pswitch_ba
        :pswitch_a5
        :pswitch_8e
        :pswitch_73
        :pswitch_5c
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method
