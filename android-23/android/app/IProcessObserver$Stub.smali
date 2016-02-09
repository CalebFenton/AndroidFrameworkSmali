.class public abstract Landroid/app/IProcessObserver$Stub;
.super Landroid/os/Binder;
.source "IProcessObserver.java"

# interfaces
.implements Landroid/app/IProcessObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IProcessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IProcessObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IProcessObserver"

.field static final TRANSACTION_onForegroundActivitiesChanged:I = 0x1

.field static final TRANSACTION_onProcessDied:I = 0x3

.field static final TRANSACTION_onProcessStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IProcessObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IProcessObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;
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
    const-string/jumbo v1, "android.app.IProcessObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IProcessObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IProcessObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IProcessObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IProcessObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.app.IProcessObserver"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.app.IProcessObserver"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    .line 54
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    const/4 v3, 0x1

    #@25
    .line 55
    .local v3, "_arg2":Z
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Landroid/app/IProcessObserver$Stub;->onForegroundActivitiesChanged(IIZ)V

    #@28
    .line 56
    return v5

    #@29
    .line 54
    .end local v3    # "_arg2":Z
    :cond_0
    const/4 v3, 0x0

    #@2a
    .restart local v3    # "_arg2":Z
    goto :goto_0

    #@2b
    .line 60
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Z
    :sswitch_2
    const-string/jumbo v4, "android.app.IProcessObserver"

    #@2e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    .line 66
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v2

    #@3d
    .line 67
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IProcessObserver$Stub;->onProcessStateChanged(III)V

    #@40
    .line 68
    return v5

    #@41
    .line 72
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3
    const-string/jumbo v4, "android.app.IProcessObserver"

    #@44
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v1

    #@4f
    .line 77
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IProcessObserver$Stub;->onProcessDied(II)V

    #@52
    .line 78
    return v5

    #@53
    .line 39
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
