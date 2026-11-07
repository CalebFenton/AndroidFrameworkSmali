.class public abstract Landroid/view/ISystemGestureExclusionListener$Stub;
.super Landroid/os/Binder;
.source "ISystemGestureExclusionListener.java"

# interfaces
.implements Landroid/view/ISystemGestureExclusionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISystemGestureExclusionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSystemGestureExclusionChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.view.ISystemGestureExclusionListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISystemGestureExclusionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.view.ISystemGestureExclusionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/ISystemGestureExclusionListener;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/view/ISystemGestureExclusionListener;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/ISystemGestureExclusionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_8

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string v0, "onSystemGestureExclusionChanged"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
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

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/view/ISystemGestureExclusionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "android.view.ISystemGestureExclusionListener"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 98
    :cond_16
    packed-switch p1, :pswitch_data_3a

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    .line 107
    .local v3, "_arg1":Landroid/graphics/Region;
    sget-object v4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    .line 108
    .local v4, "_arg2":Landroid/graphics/Region;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ISystemGestureExclusionListener$Stub;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V

    .line 110
    nop

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Region;
    .end local v4    # "_arg2":Landroid/graphics/Region;
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
