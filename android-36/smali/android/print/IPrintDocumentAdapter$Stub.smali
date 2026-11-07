.class public abstract Landroid/print/IPrintDocumentAdapter$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapter.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapter"

.field static final greylist-max-o TRANSACTION_finish:I = 0x5

.field static final greylist-max-o TRANSACTION_layout:I = 0x3

.field static final greylist-max-o TRANSACTION_setObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_start:I = 0x2

.field static final greylist-max-o TRANSACTION_write:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.print.IPrintDocumentAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/IPrintDocumentAdapter;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintDocumentAdapter;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintDocumentAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_18

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string v0, "finish"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "write"

    return-object v0

    .line 83
    :pswitch_c
    const-string/jumbo v0, "layout"

    return-object v0

    .line 79
    :pswitch_10
    const-string/jumbo v0, "start"

    return-object v0

    .line 75
    :pswitch_14
    const-string/jumbo v0, "setObserver"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 262
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/print/IPrintDocumentAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "android.print.IPrintDocumentAdapter"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_8e

    .line 166
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_1f
    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->finish()V

    .line 162
    move-object v3, p0

    goto :goto_8c

    .line 148
    :pswitch_24
    sget-object v2, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/print/PageRange;

    .line 150
    .local v2, "_arg0":[Landroid/print/PageRange;
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 152
    .local v3, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/print/IWriteResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IWriteResultCallback;

    move-result-object v4

    .line 154
    .local v4, "_arg2":Landroid/print/IWriteResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 155
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/print/IPrintDocumentAdapter$Stub;->write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V

    .line 157
    move-object v3, p0

    goto :goto_8c

    .line 132
    .end local v2    # "_arg0":[Landroid/print/PageRange;
    .end local v3    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg2":Landroid/print/IWriteResultCallback;
    .end local v5    # "_arg3":I
    :pswitch_48
    sget-object v2, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/print/PrintAttributes;

    .line 134
    .local v4, "_arg0":Landroid/print/PrintAttributes;
    sget-object v2, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/print/PrintAttributes;

    .line 136
    .local v5, "_arg1":Landroid/print/PrintAttributes;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/ILayoutResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;

    move-result-object v6

    .line 138
    .local v6, "_arg2":Landroid/print/ILayoutResultCallback;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/os/Bundle;

    .line 140
    .local v7, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 141
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/print/IPrintDocumentAdapter$Stub;->layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V

    .line 143
    goto :goto_8c

    .line 126
    .end local v4    # "_arg0":Landroid/print/PrintAttributes;
    .end local v5    # "_arg1":Landroid/print/PrintAttributes;
    .end local v6    # "_arg2":Landroid/print/ILayoutResultCallback;
    .end local v7    # "_arg3":Landroid/os/Bundle;
    .end local v8    # "_arg4":I
    :pswitch_77
    move-object v3, p0

    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapter$Stub;->start()V

    .line 127
    goto :goto_8c

    .line 119
    :pswitch_7c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/print/IPrintDocumentAdapter$Stub;->setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V

    .line 122
    nop

    .line 169
    .end local v2    # "_arg0":Landroid/print/IPrintDocumentAdapterObserver;
    :goto_8c
    return v1

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_77
        :pswitch_48
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
