.class public abstract Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardDrawnCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardDrawnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardDrawnCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardDrawnCallback"

.field static final TRANSACTION_onDrawn:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;
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
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardDrawnCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 2
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
    const/4 v1, 0x1

    #@1
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 43
    return v1

    #@10
    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 48
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->onDrawn()V

    #@19
    .line 49
    return v1

    #@1a
    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
