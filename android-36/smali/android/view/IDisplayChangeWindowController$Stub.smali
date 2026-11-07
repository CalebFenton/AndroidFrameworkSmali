.class public abstract Landroid/view/IDisplayChangeWindowController$Stub;
.super Landroid/os/Binder;
.source "IDisplayChangeWindowController.java"

# interfaces
.implements Landroid/view/IDisplayChangeWindowController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayChangeWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayChangeWindowController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDisplayChange:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.view.IDisplayChangeWindowController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IDisplayChangeWindowController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.view.IDisplayChangeWindowController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IDisplayChangeWindowController;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/view/IDisplayChangeWindowController;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IDisplayChangeWindowController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_8

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string v0, "onDisplayChange"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/view/IDisplayChangeWindowController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.view.IDisplayChangeWindowController"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 119
    .local v6, "_arg2":I
    sget-object v2, Landroid/window/DisplayAreaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/window/DisplayAreaInfo;

    .line 121
    .local v7, "_arg3":Landroid/window/DisplayAreaInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayChangeWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayChangeWindowCallback;

    move-result-object v8

    .line 122
    .local v8, "_arg4":Landroid/view/IDisplayChangeWindowCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/IDisplayChangeWindowController$Stub;->onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V

    .line 124
    nop

    .line 131
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/window/DisplayAreaInfo;
    .end local v8    # "_arg4":Landroid/view/IDisplayChangeWindowCallback;
    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
