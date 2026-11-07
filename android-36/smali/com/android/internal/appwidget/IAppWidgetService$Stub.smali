.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final greylist-max-o TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final greylist-max-r TRANSACTION_bindAppWidgetId:I = 0x16

.field static final greylist-max-o TRANSACTION_bindRemoteViewsService:I = 0x17

.field static final greylist-max-o TRANSACTION_createAppWidgetConfigIntentSender:I = 0xa

.field static final greylist-max-o TRANSACTION_deleteAllHosts:I = 0x6

.field static final greylist-max-o TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final greylist-max-o TRANSACTION_deleteHost:I = 0x5

.field static final greylist-max-o TRANSACTION_getAppWidgetIds:I = 0x1a

.field static final greylist-max-o TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final greylist-max-o TRANSACTION_getAppWidgetInfo:I = 0x13

.field static final greylist-max-o TRANSACTION_getAppWidgetOptions:I = 0xd

.field static final greylist-max-o TRANSACTION_getAppWidgetViews:I = 0x7

.field static final greylist-max-o TRANSACTION_getInstalledProvidersForProfile:I = 0x12

.field static final blacklist TRANSACTION_getMaxBitmapMemory:I = 0x19

.field static final blacklist TRANSACTION_getWidgetPreview:I = 0x20

.field static final greylist-max-o TRANSACTION_hasBindAppWidgetPermission:I = 0x14

.field static final greylist-max-o TRANSACTION_isBoundWidgetPackage:I = 0x1b

.field static final greylist-max-o TRANSACTION_isRequestPinAppWidgetSupported:I = 0x1d

.field static final blacklist TRANSACTION_noteAppWidgetTapped:I = 0x1e

.field static final greylist-max-o TRANSACTION_notifyAppWidgetViewDataChanged:I = 0x11

.field static final blacklist TRANSACTION_notifyProviderInheritance:I = 0x18

.field static final greylist-max-o TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xe

.field static final blacklist TRANSACTION_removeWidgetPreview:I = 0x21

.field static final greylist-max-o TRANSACTION_requestPinAppWidget:I = 0x1c

.field static final blacklist TRANSACTION_setAppWidgetHidden:I = 0x9

.field static final greylist-max-o TRANSACTION_setBindAppWidgetPermission:I = 0x15

.field static final blacklist TRANSACTION_setWidgetPreview:I = 0x1f

.field static final greylist-max-o TRANSACTION_startListening:I = 0x1

.field static final greylist-max-o TRANSACTION_stopListening:I = 0x2

.field static final greylist-max-o TRANSACTION_updateAppWidgetIds:I = 0xb

.field static final greylist-max-o TRANSACTION_updateAppWidgetOptions:I = 0xc

.field static final greylist-max-o TRANSACTION_updateAppWidgetProvider:I = 0xf

.field static final greylist-max-o TRANSACTION_updateAppWidgetProviderInfo:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 159
    if-nez p0, :cond_4

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_4
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 163
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_14

    .line 164
    move-object v1, v0

    check-cast v1, Lcom/android/internal/appwidget/IAppWidgetService;

    return-object v1

    .line 166
    :cond_14
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 175
    packed-switch p0, :pswitch_data_74

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_5
    const-string/jumbo v0, "removeWidgetPreview"

    return-object v0

    .line 303
    :pswitch_9
    const-string v0, "getWidgetPreview"

    return-object v0

    .line 299
    :pswitch_c
    const-string/jumbo v0, "setWidgetPreview"

    return-object v0

    .line 295
    :pswitch_10
    const-string v0, "noteAppWidgetTapped"

    return-object v0

    .line 291
    :pswitch_13
    const-string v0, "isRequestPinAppWidgetSupported"

    return-object v0

    .line 287
    :pswitch_16
    const-string/jumbo v0, "requestPinAppWidget"

    return-object v0

    .line 283
    :pswitch_1a
    const-string v0, "isBoundWidgetPackage"

    return-object v0

    .line 279
    :pswitch_1d
    const-string v0, "getAppWidgetIds"

    return-object v0

    .line 275
    :pswitch_20
    const-string v0, "getMaxBitmapMemory"

    return-object v0

    .line 271
    :pswitch_23
    const-string v0, "notifyProviderInheritance"

    return-object v0

    .line 267
    :pswitch_26
    const-string v0, "bindRemoteViewsService"

    return-object v0

    .line 263
    :pswitch_29
    const-string v0, "bindAppWidgetId"

    return-object v0

    .line 259
    :pswitch_2c
    const-string/jumbo v0, "setBindAppWidgetPermission"

    return-object v0

    .line 255
    :pswitch_30
    const-string v0, "hasBindAppWidgetPermission"

    return-object v0

    .line 251
    :pswitch_33
    const-string v0, "getAppWidgetInfo"

    return-object v0

    .line 247
    :pswitch_36
    const-string v0, "getInstalledProvidersForProfile"

    return-object v0

    .line 243
    :pswitch_39
    const-string v0, "notifyAppWidgetViewDataChanged"

    return-object v0

    .line 239
    :pswitch_3c
    const-string/jumbo v0, "updateAppWidgetProviderInfo"

    return-object v0

    .line 235
    :pswitch_40
    const-string/jumbo v0, "updateAppWidgetProvider"

    return-object v0

    .line 231
    :pswitch_44
    const-string v0, "partiallyUpdateAppWidgetIds"

    return-object v0

    .line 227
    :pswitch_47
    const-string v0, "getAppWidgetOptions"

    return-object v0

    .line 223
    :pswitch_4a
    const-string/jumbo v0, "updateAppWidgetOptions"

    return-object v0

    .line 219
    :pswitch_4e
    const-string/jumbo v0, "updateAppWidgetIds"

    return-object v0

    .line 215
    :pswitch_52
    const-string v0, "createAppWidgetConfigIntentSender"

    return-object v0

    .line 211
    :pswitch_55
    const-string/jumbo v0, "setAppWidgetHidden"

    return-object v0

    .line 207
    :pswitch_59
    const-string v0, "getAppWidgetIdsForHost"

    return-object v0

    .line 203
    :pswitch_5c
    const-string v0, "getAppWidgetViews"

    return-object v0

    .line 199
    :pswitch_5f
    const-string v0, "deleteAllHosts"

    return-object v0

    .line 195
    :pswitch_62
    const-string v0, "deleteHost"

    return-object v0

    .line 191
    :pswitch_65
    const-string v0, "deleteAppWidgetId"

    return-object v0

    .line 187
    :pswitch_68
    const-string v0, "allocateAppWidgetId"

    return-object v0

    .line 183
    :pswitch_6b
    const-string/jumbo v0, "stopListening"

    return-object v0

    .line 179
    :pswitch_6f
    const-string/jumbo v0, "startListening"

    return-object v0

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 170
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1397
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.appwidget.IAppWidgetService"

    .line 323
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    const v1, 0xffffff

    if-gt v9, v1, :cond_13

    .line 324
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_13
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1c

    .line 327
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    return v13

    .line 330
    :cond_1c
    packed-switch v9, :pswitch_data_35e

    .line 739
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 729
    :pswitch_24
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 731
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->removeWidgetPreview(Landroid/content/ComponentName;I)V

    .line 734
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_35d

    .line 713
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_3b
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 717
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 719
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 720
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 722
    .local v5, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 724
    goto/16 :goto_35d

    .line 699
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/widget/RemoteViews;
    :pswitch_5e
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 701
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 703
    .local v2, "_arg1":I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 704
    .local v3, "_arg2":Landroid/widget/RemoteViews;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result v4

    .line 706
    .local v4, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    goto/16 :goto_35d

    .line 689
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    .end local v4    # "_result":Z
    :pswitch_81
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->noteAppWidgetTapped(Ljava/lang/String;I)V

    .line 694
    goto/16 :goto_35d

    .line 681
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isRequestPinAppWidgetSupported()Z

    move-result v1

    .line 682
    .local v1, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 684
    goto/16 :goto_35d

    .line 666
    .end local v1    # "_result":Z
    :pswitch_9d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 670
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 672
    .local v3, "_arg2":Landroid/os/Bundle;
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 673
    .local v4, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v5

    .line 675
    .local v5, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 677
    goto/16 :goto_35d

    .line 654
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/Bundle;
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_result":Z
    :pswitch_c8
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v3

    .line 659
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    goto/16 :goto_35d

    .line 644
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_df
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 645
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 647
    .local v2, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 649
    goto/16 :goto_35d

    .line 636
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":[I
    :pswitch_f6
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getMaxBitmapMemory()I

    move-result v1

    .line 637
    .local v1, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    goto/16 :goto_35d

    .line 628
    .end local v1    # "_result":I
    :pswitch_102
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 629
    .local v1, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyProviderInheritance([Landroid/content/ComponentName;)V

    .line 631
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_35d

    .line 606
    .end local v1    # "_arg0":[Landroid/content/ComponentName;
    :pswitch_115
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 610
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 612
    .local v3, "_arg2":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v4

    .line 614
    .local v4, "_arg3":Landroid/app/IApplicationThread;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 616
    .local v5, "_arg4":Landroid/os/IBinder;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v6

    .line 618
    .local v6, "_arg5":Landroid/app/IServiceConnection;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 619
    .local v7, "_arg6":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result v14

    .line 621
    .local v14, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 623
    goto/16 :goto_35d

    .line 588
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Landroid/app/IApplicationThread;
    .end local v5    # "_arg4":Landroid/os/IBinder;
    .end local v6    # "_arg5":Landroid/app/IServiceConnection;
    .end local v7    # "_arg6":J
    .end local v14    # "_result":Z
    :pswitch_14d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 594
    .local v3, "_arg2":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 596
    .local v4, "_arg3":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 597
    .local v5, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v6

    .line 599
    .local v6, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    goto/16 :goto_35d

    .line 575
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_result":Z
    :pswitch_17b
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 579
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 580
    .local v3, "_arg2":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 582
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    goto/16 :goto_35d

    .line 563
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    :pswitch_192
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v3

    .line 568
    .local v3, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    goto/16 :goto_35d

    .line 551
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_1a9
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 556
    .local v3, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 558
    goto/16 :goto_35d

    .line 537
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_1c0
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 544
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 546
    goto/16 :goto_35d

    .line 524
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1db
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 528
    .local v2, "_arg1":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    .line 531
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto/16 :goto_35d

    .line 513
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":I
    :pswitch_1f2
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 515
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    goto/16 :goto_35d

    .line 502
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_209
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 504
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 505
    .local v2, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 507
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_35d

    .line 489
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    :pswitch_224
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 493
    .local v2, "_arg1":[I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 494
    .local v3, "_arg2":Landroid/widget/RemoteViews;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 496
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto/16 :goto_35d

    .line 477
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :pswitch_23f
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 482
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 484
    goto/16 :goto_35d

    .line 464
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_256
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 468
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 469
    .local v3, "_arg2":Landroid/os/Bundle;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 471
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_35d

    .line 451
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :pswitch_271
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 455
    .local v2, "_arg1":[I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 456
    .local v3, "_arg2":Landroid/widget/RemoteViews;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 458
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_35d

    .line 437
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :pswitch_28c
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 441
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 442
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v4

    .line 444
    .local v4, "_result":Landroid/content/IntentSender;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 446
    goto/16 :goto_35d

    .line 426
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/IntentSender;
    :pswitch_2a7
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 428
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 429
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setAppWidgetHidden(Ljava/lang/String;I)V

    .line 431
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_35d

    .line 414
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_2ba
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v3

    .line 419
    .local v3, "_result":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    goto/16 :goto_35d

    .line 402
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[I
    :pswitch_2d1
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 407
    .local v3, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 409
    goto/16 :goto_35d

    .line 395
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/widget/RemoteViews;
    :pswitch_2e8
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    .line 396
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto :goto_35d

    .line 385
    :pswitch_2ef
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 387
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto :goto_35d

    .line 374
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_301
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 376
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    .line 379
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto :goto_35d

    .line 362
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_313
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v3

    .line 367
    .local v3, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    goto :goto_35d

    .line 351
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_329
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .restart local v2    # "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    .line 356
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto :goto_35d

    .line 335
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_33b
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v1

    .line 337
    .local v1, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 341
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 342
    .local v4, "_arg3":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 344
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 346
    nop

    .line 742
    .end local v1    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_35d
    return v13

    :pswitch_data_35e
    .packed-switch 0x1
        :pswitch_33b
        :pswitch_329
        :pswitch_313
        :pswitch_301
        :pswitch_2ef
        :pswitch_2e8
        :pswitch_2d1
        :pswitch_2ba
        :pswitch_2a7
        :pswitch_28c
        :pswitch_271
        :pswitch_256
        :pswitch_23f
        :pswitch_224
        :pswitch_209
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1c0
        :pswitch_1a9
        :pswitch_192
        :pswitch_17b
        :pswitch_14d
        :pswitch_115
        :pswitch_102
        :pswitch_f6
        :pswitch_df
        :pswitch_c8
        :pswitch_9d
        :pswitch_91
        :pswitch_81
        :pswitch_5e
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
