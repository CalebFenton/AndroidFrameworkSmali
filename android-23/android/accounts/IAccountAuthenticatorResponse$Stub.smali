.class public abstract Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthenticatorResponse.java"

# interfaces
.implements Landroid/accounts/IAccountAuthenticatorResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticatorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountAuthenticatorResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticatorResponse"

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onRequestContinued:I = 0x2

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.accounts.IAccountAuthenticatorResponse"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.accounts.IAccountAuthenticatorResponse"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/accounts/IAccountAuthenticatorResponse;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/accounts/IAccountAuthenticatorResponse;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/accounts/IAccountAuthenticatorResponse$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v3, "android.accounts.IAccountAuthenticatorResponse"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v4

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v3, "android.accounts.IAccountAuthenticatorResponse"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 54
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/os/Bundle;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->onResult(Landroid/os/Bundle;)V

    #@27
    .line 60
    return v4

    #@28
    .line 57
    :cond_0
    const/4 v1, 0x0

    #@29
    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    #@2a
    .line 64
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v3, "android.accounts.IAccountAuthenticatorResponse"

    #@2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 65
    invoke-virtual {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->onRequestContinued()V

    #@33
    .line 66
    return v4

    #@34
    .line 70
    :sswitch_3
    const-string/jumbo v3, "android.accounts.IAccountAuthenticatorResponse"

    #@37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v0

    #@3e
    .line 74
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 75
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->onError(ILjava/lang/String;)V

    #@45
    .line 76
    return v4

    #@46
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
