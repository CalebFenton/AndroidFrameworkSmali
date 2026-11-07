.class public abstract Landroid/print/ILayoutResultCallback$Stub;
.super Landroid/os/Binder;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/print/ILayoutResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/ILayoutResultCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.ILayoutResultCallback"

.field static final greylist-max-o TRANSACTION_onLayoutCanceled:I = 0x4

.field static final greylist-max-o TRANSACTION_onLayoutFailed:I = 0x3

.field static final greylist-max-o TRANSACTION_onLayoutFinished:I = 0x2

.field static final greylist-max-o TRANSACTION_onLayoutStarted:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.print.ILayoutResultCallback"

    invoke-virtual {p0, p0, v0}, Landroid/print/ILayoutResultCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/ILayoutResultCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.print.ILayoutResultCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/ILayoutResultCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/print/ILayoutResultCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/print/ILayoutResultCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/ILayoutResultCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_16

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "onLayoutCanceled"

    return-object v0

    .line 80
    :pswitch_9
    const-string/jumbo v0, "onLayoutFailed"

    return-object v0

    .line 76
    :pswitch_d
    const-string/jumbo v0, "onLayoutFinished"

    return-object v0

    .line 72
    :pswitch_11
    const-string/jumbo v0, "onLayoutStarted"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 239
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/print/ILayoutResultCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.print.ILayoutResultCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_68

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 144
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, v2}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutCanceled(I)V

    .line 147
    goto :goto_66

    .line 134
    .end local v2    # "_arg0":I
    :pswitch_29
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 136
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFailed(Ljava/lang/CharSequence;I)V

    .line 139
    goto :goto_66

    .line 122
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_3c
    sget-object v2, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentInfo;

    .line 124
    .local v2, "_arg0":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 126
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3, v4}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V

    .line 129
    goto :goto_66

    .line 112
    .end local v2    # "_arg0":Landroid/print/PrintDocumentInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 114
    .local v2, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/print/ILayoutResultCallback$Stub;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V

    .line 117
    nop

    .line 154
    .end local v2    # "_arg0":Landroid/os/ICancellationSignal;
    .end local v3    # "_arg1":I
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_53
        :pswitch_3c
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
