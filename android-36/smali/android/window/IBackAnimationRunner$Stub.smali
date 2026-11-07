.class public abstract Landroid/window/IBackAnimationRunner$Stub;
.super Landroid/os/Binder;
.source "IBackAnimationRunner.java"

# interfaces
.implements Landroid/window/IBackAnimationRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IBackAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IBackAnimationRunner$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAnimationCancelled:I = 0x2

.field static final blacklist TRANSACTION_onAnimationStart:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.window.IBackAnimationRunner"

    invoke-virtual {p0, p0, v0}, Landroid/window/IBackAnimationRunner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationRunner;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.window.IBackAnimationRunner"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/window/IBackAnimationRunner;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/window/IBackAnimationRunner;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/window/IBackAnimationRunner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/window/IBackAnimationRunner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_c

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onAnimationStart"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onAnimationCancelled"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 192
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/window/IBackAnimationRunner$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.window.IBackAnimationRunner"

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
    packed-switch p1, :pswitch_data_3e

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_1e
    sget-object v2, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 119
    .local v2, "_arg0":[Landroid/view/RemoteAnimationTarget;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 121
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/window/IBackAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IBackAnimationFinishedCallback;

    move-result-object v4

    .line 122
    .local v4, "_arg2":Landroid/window/IBackAnimationFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Landroid/window/IBackAnimationRunner$Stub;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/os/IBinder;Landroid/window/IBackAnimationFinishedCallback;)V

    .line 124
    goto :goto_3d

    .line 111
    .end local v2    # "_arg0":[Landroid/view/RemoteAnimationTarget;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":Landroid/window/IBackAnimationFinishedCallback;
    :pswitch_39
    invoke-virtual {p0}, Landroid/window/IBackAnimationRunner$Stub;->onAnimationCancelled()V

    .line 112
    nop

    .line 131
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
