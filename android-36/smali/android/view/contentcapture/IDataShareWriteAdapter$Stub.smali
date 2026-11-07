.class public abstract Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;
.super Landroid/os/Binder;
.source "IDataShareWriteAdapter.java"

# interfaces
.implements Landroid/view/contentcapture/IDataShareWriteAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IDataShareWriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_error:I = 0x2

.field static final blacklist TRANSACTION_finish:I = 0x4

.field static final blacklist TRANSACTION_rejected:I = 0x3

.field static final blacklist TRANSACTION_write:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/contentcapture/IDataShareWriteAdapter;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/view/contentcapture/IDataShareWriteAdapter;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_14

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "finish"

    return-object v0

    .line 76
    :pswitch_8
    const-string/jumbo v0, "rejected"

    return-object v0

    .line 72
    :pswitch_c
    const-string v0, "error"

    return-object v0

    .line 68
    :pswitch_f
    const-string/jumbo v0, "write"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.view.contentcapture.IDataShareWriteAdapter"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_42

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_1e
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->finish()V

    .line 129
    goto :goto_40

    .line 123
    :pswitch_22
    invoke-virtual {p0}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->rejected()V

    .line 124
    goto :goto_40

    .line 116
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->error(I)V

    .line 119
    goto :goto_40

    .line 108
    .end local v2    # "_arg0":I
    :pswitch_31
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 109
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->write(Landroid/os/ParcelFileDescriptor;)V

    .line 111
    nop

    .line 136
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
