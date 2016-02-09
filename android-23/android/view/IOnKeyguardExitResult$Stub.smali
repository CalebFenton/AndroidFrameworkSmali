.class public abstract Landroid/view/IOnKeyguardExitResult$Stub;
.super Landroid/os/Binder;
.source "IOnKeyguardExitResult.java"

# interfaces
.implements Landroid/view/IOnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IOnKeyguardExitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOnKeyguardExitResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IOnKeyguardExitResult"

.field static final TRANSACTION_onKeyguardExitResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.view.IOnKeyguardExitResult"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IOnKeyguardExitResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;
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
    const-string/jumbo v1, "android.view.IOnKeyguardExitResult"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IOnKeyguardExitResult;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/view/IOnKeyguardExitResult;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IOnKeyguardExitResult$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IOnKeyguardExitResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.view.IOnKeyguardExitResult"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v2

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.view.IOnKeyguardExitResult"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 51
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/IOnKeyguardExitResult$Stub;->onKeyguardExitResult(Z)V

    #@20
    .line 52
    return v2

    #@21
    .line 50
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    #@22
    .restart local v0    # "_arg0":Z
    goto :goto_0

    #@23
    .line 39
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
