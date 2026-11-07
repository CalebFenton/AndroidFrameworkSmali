.class public abstract Landroid/view/IWindowId$Stub;
.super Landroid/os/Binder;
.source "IWindowId.java"

# interfaces
.implements Landroid/view/IWindowId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowId$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowId"

.field static final greylist-max-o TRANSACTION_isFocused:I = 0x3

.field static final greylist-max-o TRANSACTION_registerFocusObserver:I = 0x1

.field static final greylist-max-o TRANSACTION_unregisterFocusObserver:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.view.IWindowId"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowId$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.view.IWindowId"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowId;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowId;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/view/IWindowId$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowId$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_10

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "isFocused"

    return-object v0

    .line 70
    :pswitch_8
    const-string/jumbo v0, "unregisterFocusObserver"

    return-object v0

    .line 66
    :pswitch_c
    const-string/jumbo v0, "registerFocusObserver"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 202
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/view/IWindowId$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 89
    const-string v0, "android.view.IWindowId"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 97
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_1e
    invoke-virtual {p0}, Landroid/view/IWindowId$Stub;->isFocused()Z

    move-result v2

    .line 120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    goto :goto_4d

    .line 111
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowFocusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowFocusObserver;

    move-result-object v2

    .line 112
    .local v2, "_arg0":Landroid/view/IWindowFocusObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Landroid/view/IWindowId$Stub;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    goto :goto_4d

    .line 102
    .end local v2    # "_arg0":Landroid/view/IWindowFocusObserver;
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowFocusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowFocusObserver;

    move-result-object v2

    .line 103
    .restart local v2    # "_arg0":Landroid/view/IWindowFocusObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Landroid/view/IWindowId$Stub;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    nop

    .line 129
    .end local v2    # "_arg0":Landroid/view/IWindowFocusObserver;
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
