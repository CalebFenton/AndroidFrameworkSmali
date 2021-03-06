.class public abstract Landroid/app/IUidObserver$Stub;
.super Landroid/os/Binder;
.source "IUidObserver.java"

# interfaces
.implements Landroid/app/IUidObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUidObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUidObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUidObserver"

.field static final TRANSACTION_onUidActive:I = 0x3

.field static final TRANSACTION_onUidGone:I = 0x2

.field static final TRANSACTION_onUidIdle:I = 0x4

.field static final TRANSACTION_onUidStateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IUidObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IUidObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IUidObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IUidObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IUidObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IUidObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IUidObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.app.IUidObserver"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v3

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.app.IUidObserver"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IUidObserver$Stub;->onUidStateChanged(II)V

    #@21
    .line 54
    return v3

    #@22
    .line 58
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string/jumbo v2, "android.app.IUidObserver"

    #@25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    .line 61
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUidObserver$Stub;->onUidGone(I)V

    #@2f
    .line 62
    return v3

    #@30
    .line 66
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.app.IUidObserver"

    #@33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    .line 69
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUidObserver$Stub;->onUidActive(I)V

    #@3d
    .line 70
    return v3

    #@3e
    .line 74
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v2, "android.app.IUidObserver"

    #@41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v0

    #@48
    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUidObserver$Stub;->onUidIdle(I)V

    #@4b
    .line 78
    return v3

    #@4c
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
