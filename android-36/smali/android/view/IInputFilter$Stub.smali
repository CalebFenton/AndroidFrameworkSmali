.class public abstract Landroid/view/IInputFilter$Stub;
.super Landroid/os/Binder;
.source "IInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IInputFilter"

.field static final greylist-max-o TRANSACTION_filterInputEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_install:I = 0x1

.field static final greylist-max-o TRANSACTION_uninstall:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.view.IInputFilter"

    invoke-virtual {p0, p0, v0}, Landroid/view/IInputFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.view.IInputFilter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IInputFilter;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/view/IInputFilter;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/view/IInputFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IInputFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_10

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "filterInputEvent"

    return-object v0

    .line 74
    :pswitch_8
    const-string/jumbo v0, "uninstall"

    return-object v0

    .line 70
    :pswitch_c
    const-string v0, "install"

    return-object v0

    nop

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

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 193
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/view/IInputFilter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "android.view.IInputFilter"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_16
    packed-switch p1, :pswitch_data_46

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 119
    :pswitch_1e
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputEvent;

    .line 121
    .local v2, "_arg0":Landroid/view/InputEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3}, Landroid/view/IInputFilter$Stub;->filterInputEvent(Landroid/view/InputEvent;I)V

    .line 124
    goto :goto_44

    .line 113
    .end local v2    # "_arg0":Landroid/view/InputEvent;
    .end local v3    # "_arg1":I
    :pswitch_31
    invoke-virtual {p0}, Landroid/view/IInputFilter$Stub;->uninstall()V

    .line 114
    goto :goto_44

    .line 106
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilterHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilterHost;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Landroid/view/IInputFilterHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Landroid/view/IInputFilter$Stub;->install(Landroid/view/IInputFilterHost;)V

    .line 109
    nop

    .line 131
    .end local v2    # "_arg0":Landroid/view/IInputFilterHost;
    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
