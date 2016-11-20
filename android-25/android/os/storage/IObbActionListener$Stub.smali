.class public abstract Landroid/os/storage/IObbActionListener$Stub;
.super Landroid/os/Binder;
.source "IObbActionListener.java"

# interfaces
.implements Landroid/os/storage/IObbActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IObbActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IObbActionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IObbActionListener"

.field static final TRANSACTION_onObbResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 38
    const-string/jumbo v0, "IObbActionListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IObbActionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    if-nez p0, :cond_0

    #@3
    .line 47
    return-object v1

    #@4
    .line 49
    :cond_0
    const-string/jumbo v1, "IObbActionListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/storage/IObbActionListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 51
    check-cast v0, Landroid/os/storage/IObbActionListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 53
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IObbActionListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/storage/IObbActionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 63
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 65
    :sswitch_0
    const-string/jumbo v3, "IObbActionListener"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 66
    return v4

    #@10
    .line 69
    :sswitch_1
    const-string/jumbo v3, "IObbActionListener"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 73
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 75
    .local v1, "nonce":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    .line 76
    .local v2, "status":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/storage/IObbActionListener$Stub;->onObbResult(Ljava/lang/String;II)V

    #@25
    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@28
    .line 78
    return v4

    #@29
    .line 63
    nop

    #@2a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
