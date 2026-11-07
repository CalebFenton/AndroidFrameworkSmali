.class public abstract Landroid/view/ISurfaceControlViewHostParent$Stub;
.super Landroid/os/Binder;
.source "ISurfaceControlViewHostParent.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHostParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHostParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHostParent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_forwardBackKeyToParent:I = 0x2

.field static final blacklist TRANSACTION_updateParams:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.view.ISurfaceControlViewHostParent"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISurfaceControlViewHostParent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHostParent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.view.ISurfaceControlViewHostParent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/ISurfaceControlViewHostParent;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/view/ISurfaceControlViewHostParent;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/view/ISurfaceControlViewHostParent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/ISurfaceControlViewHostParent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_c

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_5
    const-string v0, "forwardBackKeyToParent"

    return-object v0

    .line 66
    :pswitch_8
    const-string/jumbo v0, "updateParams"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
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

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/view/ISurfaceControlViewHostParent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    const-string v0, "android.view.ISurfaceControlViewHostParent"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 93
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 106
    :pswitch_1e
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 107
    .local v2, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHostParent$Stub;->forwardBackKeyToParent(Landroid/view/KeyEvent;)V

    .line 109
    goto :goto_3c

    .line 98
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :pswitch_2d
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/WindowManager$LayoutParams;

    .line 99
    .local v2, "_arg0":[Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHostParent$Stub;->updateParams([Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    nop

    .line 116
    .end local v2    # "_arg0":[Landroid/view/WindowManager$LayoutParams;
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
