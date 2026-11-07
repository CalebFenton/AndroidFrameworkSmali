.class public abstract Landroid/view/ISurfaceControlViewHost$Stub;
.super Landroid/os/Binder;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachParentInterface:I = 0x5

.field static final blacklist TRANSACTION_getSurfaceSyncGroup:I = 0x4

.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onDispatchDetachedFromWindow:I = 0x2

.field static final blacklist TRANSACTION_onInsetsChanged:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISurfaceControlViewHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_4
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/ISurfaceControlViewHost;

    if-eqz v1, :cond_14

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/view/ISurfaceControlViewHost;

    return-object v1

    .line 70
    :cond_14
    new-instance v1, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_14

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_5
    const-string v0, "attachParentInterface"

    return-object v0

    .line 95
    :pswitch_8
    const-string v0, "getSurfaceSyncGroup"

    return-object v0

    .line 91
    :pswitch_b
    const-string v0, "onInsetsChanged"

    return-object v0

    .line 87
    :pswitch_e
    const-string v0, "onDispatchDetachedFromWindow"

    return-object v0

    .line 83
    :pswitch_11
    const-string v0, "onConfigurationChanged"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 266
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 110
    invoke-static {p1}, Landroid/view/ISurfaceControlViewHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 114
    const-string v0, "android.view.ISurfaceControlViewHost"

    .line 115
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return v1

    .line 122
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISurfaceControlViewHostParent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHostParent;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Landroid/view/ISurfaceControlViewHostParent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHost$Stub;->attachParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V

    .line 160
    goto :goto_62

    .line 149
    .end local v2    # "_arg0":Landroid/view/ISurfaceControlViewHostParent;
    :pswitch_2d
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object v2

    .line 150
    .local v2, "_result":Landroid/window/ISurfaceSyncGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 152
    goto :goto_62

    .line 140
    .end local v2    # "_result":Landroid/window/ISurfaceSyncGroup;
    :pswitch_38
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 142
    .local v2, "_arg0":Landroid/view/InsetsState;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 143
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/view/ISurfaceControlViewHost$Stub;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    .line 145
    goto :goto_62

    .line 134
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_4f
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->onDispatchDetachedFromWindow()V

    .line 135
    goto :goto_62

    .line 127
    :pswitch_53
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 128
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHost$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    nop

    .line 167
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4f
        :pswitch_38
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
