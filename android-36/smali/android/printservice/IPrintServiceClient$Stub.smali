.class public abstract Landroid/printservice/IPrintServiceClient$Stub;
.super Landroid/os/Binder;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintServiceClient"

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x1

.field static final greylist-max-o TRANSACTION_onCustomPrinterIconLoaded:I = 0xb

.field static final greylist-max-o TRANSACTION_onPrintersAdded:I = 0x9

.field static final greylist-max-o TRANSACTION_onPrintersRemoved:I = 0xa

.field static final greylist-max-o TRANSACTION_setPrintJobState:I = 0x3

.field static final greylist-max-o TRANSACTION_setPrintJobTag:I = 0x4

.field static final greylist-max-o TRANSACTION_setProgress:I = 0x6

.field static final greylist-max-o TRANSACTION_setStatus:I = 0x7

.field static final greylist-max-o TRANSACTION_setStatusRes:I = 0x8

.field static final greylist-max-o TRANSACTION_writePrintJobData:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.printservice.IPrintServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_4

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_4
    const-string v0, "android.printservice.IPrintServiceClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/printservice/IPrintServiceClient;

    if-eqz v1, :cond_14

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/printservice/IPrintServiceClient;

    return-object v1

    .line 110
    :cond_14
    new-instance v1, Landroid/printservice/IPrintServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 119
    packed-switch p0, :pswitch_data_30

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 163
    :pswitch_5
    const-string/jumbo v0, "onCustomPrinterIconLoaded"

    return-object v0

    .line 159
    :pswitch_9
    const-string/jumbo v0, "onPrintersRemoved"

    return-object v0

    .line 155
    :pswitch_d
    const-string/jumbo v0, "onPrintersAdded"

    return-object v0

    .line 151
    :pswitch_11
    const-string/jumbo v0, "setStatusRes"

    return-object v0

    .line 147
    :pswitch_15
    const-string/jumbo v0, "setStatus"

    return-object v0

    .line 143
    :pswitch_19
    const-string/jumbo v0, "setProgress"

    return-object v0

    .line 139
    :pswitch_1d
    const-string/jumbo v0, "writePrintJobData"

    return-object v0

    .line 135
    :pswitch_21
    const-string/jumbo v0, "setPrintJobTag"

    return-object v0

    .line 131
    :pswitch_25
    const-string/jumbo v0, "setPrintJobState"

    return-object v0

    .line 127
    :pswitch_29
    const-string v0, "getPrintJobInfo"

    return-object v0

    .line 123
    :pswitch_2c
    const-string v0, "getPrintJobInfos"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 564
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 174
    invoke-static {p1}, Landroid/printservice/IPrintServiceClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const-string v0, "android.printservice.IPrintServiceClient"

    .line 179
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 183
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v1

    .line 186
    :cond_16
    packed-switch p1, :pswitch_data_120

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 297
    :pswitch_1e
    sget-object v2, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 299
    .local v2, "_arg0":Landroid/print/PrinterId;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 300
    .local v3, "_arg1":Landroid/graphics/drawable/Icon;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2, v3}, Landroid/printservice/IPrintServiceClient$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_11f

    .line 288
    .end local v2    # "_arg0":Landroid/print/PrinterId;
    .end local v3    # "_arg1":Landroid/graphics/drawable/Icon;
    :pswitch_39
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 289
    .local v2, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_11f

    .line 279
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_4c
    sget-object v2, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 280
    .restart local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    goto/16 :goto_11f

    .line 266
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :pswitch_5f
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 268
    .local v2, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .local v3, "_arg1":I
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 271
    .local v4, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3, v4}, Landroid/printservice/IPrintServiceClient$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    goto/16 :goto_11f

    .line 255
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/CharSequence;
    :pswitch_7e
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 257
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 258
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/printservice/IPrintServiceClient$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    goto/16 :goto_11f

    .line 244
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_99
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 246
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 247
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/printservice/IPrintServiceClient$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_11f

    .line 234
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_arg1":F
    :pswitch_af
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 236
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJobId;

    .line 237
    .local v3, "_arg1":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3}, Landroid/printservice/IPrintServiceClient$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    .line 239
    goto :goto_11f

    .line 222
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/print/PrintJobId;
    :pswitch_c6
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 224
    .local v2, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v4

    .line 227
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 229
    goto :goto_11f

    .line 208
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_e0
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 210
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3, v4}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v5

    .line 215
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_11f

    .line 198
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_fe
    sget-object v2, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    .line 199
    .restart local v2    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v3

    .line 201
    .local v3, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_11f

    .line 190
    .end local v2    # "_arg0":Landroid/print/PrintJobId;
    .end local v3    # "_result":Landroid/print/PrintJobInfo;
    :pswitch_114
    invoke-virtual {p0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfos()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 193
    nop

    .line 310
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_11f
    return v1

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_114
        :pswitch_fe
        :pswitch_e0
        :pswitch_c6
        :pswitch_af
        :pswitch_99
        :pswitch_7e
        :pswitch_5f
        :pswitch_4c
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
