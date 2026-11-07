.class public abstract Landroid/view/IScrollCaptureConnection$Stub;
.super Landroid/os/Binder;
.source "IScrollCaptureConnection.java"

# interfaces
.implements Landroid/view/IScrollCaptureConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x4

.field static final blacklist TRANSACTION_endCapture:I = 0x3

.field static final blacklist TRANSACTION_requestImage:I = 0x2

.field static final blacklist TRANSACTION_startCapture:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/IScrollCaptureConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "android.view.IScrollCaptureConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IScrollCaptureConnection;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/view/IScrollCaptureConnection;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Landroid/view/IScrollCaptureConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IScrollCaptureConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_14

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "close"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "endCapture"

    return-object v0

    .line 101
    :pswitch_b
    const-string/jumbo v0, "requestImage"

    return-object v0

    .line 97
    :pswitch_f
    const-string/jumbo v0, "startCapture"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 285
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/view/IScrollCaptureConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 124
    const-string v0, "android.view.IScrollCaptureConnection"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_16
    packed-switch p1, :pswitch_data_62

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_1e
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->close()V

    .line 166
    goto :goto_61

    .line 158
    :pswitch_22
    invoke-virtual {p0}, Landroid/view/IScrollCaptureConnection$Stub;->endCapture()Landroid/os/ICancellationSignal;

    move-result-object v2

    .line 159
    .local v2, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 161
    goto :goto_61

    .line 149
    .end local v2    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_2d
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 150
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2}, Landroid/view/IScrollCaptureConnection$Stub;->requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;

    move-result-object v3

    .line 152
    .local v3, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 154
    goto :goto_61

    .line 137
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    .end local v3    # "_result":Landroid/os/ICancellationSignal;
    :pswitch_43
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 139
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IScrollCaptureCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureCallbacks;

    move-result-object v3

    .line 140
    .local v3, "_arg1":Landroid/view/IScrollCaptureCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/view/IScrollCaptureConnection$Stub;->startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 142
    .local v4, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 144
    nop

    .line 173
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v3    # "_arg1":Landroid/view/IScrollCaptureCallbacks;
    .end local v4    # "_result":Landroid/os/ICancellationSignal;
    :goto_61
    return v1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_43
        :pswitch_2d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
