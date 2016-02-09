.class public abstract Landroid/os/storage/IMountShutdownObserver$Stub;
.super Landroid/os/Binder;
.source "IMountShutdownObserver.java"

# interfaces
.implements Landroid/os/storage/IMountShutdownObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountShutdownObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountShutdownObserver"

.field static final TRANSACTION_onShutDownComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 37
    const-string/jumbo v0, "IMountShutdownObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountShutdownObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    if-nez p0, :cond_0

    #@3
    .line 46
    return-object v1

    #@4
    .line 48
    :cond_0
    const-string/jumbo v1, "IMountShutdownObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/storage/IMountShutdownObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 50
    check-cast v0, Landroid/os/storage/IMountShutdownObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 52
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/storage/IMountShutdownObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 62
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 64
    :sswitch_0
    const-string/jumbo v1, "IMountShutdownObserver"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 65
    return v2

    #@10
    .line 68
    :sswitch_1
    const-string/jumbo v1, "IMountShutdownObserver"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 71
    .local v0, "statusCode":I
    invoke-virtual {p0, v0}, Landroid/os/storage/IMountShutdownObserver$Stub;->onShutDownComplete(I)V

    #@1d
    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 73
    return v2

    #@21
    .line 62
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
