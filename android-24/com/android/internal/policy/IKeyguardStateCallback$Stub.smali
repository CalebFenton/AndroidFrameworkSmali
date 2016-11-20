.class public abstract Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardStateCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardStateCallback"

.field static final TRANSACTION_onInputRestrictedStateChanged:I = 0x3

.field static final TRANSACTION_onShowingStateChanged:I = 0x1

.field static final TRANSACTION_onSimSecureStateChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardStateCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardStateCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
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
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 42
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardStateCallback"

    #@d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 43
    return v1

    #@11
    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardStateCallback"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move v0, v1

    #@1e
    .line 50
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onShowingStateChanged(Z)V

    #@21
    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 52
    return v1

    #@25
    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardStateCallback"

    #@28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_1

    #@31
    move v0, v1

    #@32
    .line 59
    .restart local v0    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSimSecureStateChanged(Z)V

    #@35
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 61
    return v1

    #@39
    .line 65
    .end local v0    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.policy.IKeyguardStateCallback"

    #@3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_2

    #@45
    move v0, v1

    #@46
    .line 68
    .restart local v0    # "_arg0":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onInputRestrictedStateChanged(Z)V

    #@49
    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    .line 70
    return v1

    #@4d
    .line 38
    nop

    #@4e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
