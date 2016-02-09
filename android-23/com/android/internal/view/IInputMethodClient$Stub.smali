.class public abstract Lcom/android/internal/view/IInputMethodClient$Stub;
.super Landroid/os/Binder;
.source "IInputMethodClient.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodClient"

.field static final TRANSACTION_onBindMethod:I = 0x2

.field static final TRANSACTION_onUnbindMethod:I = 0x3

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setUserActionNotificationSequenceNumber:I = 0x5

.field static final TRANSACTION_setUsingInputMethod:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "com.android.internal.view.IInputMethodClient"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;
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
    const-string/jumbo v1, "com.android.internal.view.IInputMethodClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/view/IInputMethodClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v4

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

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
    const/4 v2, 0x1

    #@1d
    .line 54
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->setUsingInputMethod(Z)V

    #@20
    .line 55
    return v4

    #@21
    .line 53
    .end local v2    # "_arg0":Z
    :cond_0
    const/4 v2, 0x0

    #@22
    .restart local v2    # "_arg0":Z
    goto :goto_0

    #@23
    .line 59
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

    #@26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 62
    sget-object v3, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/internal/view/InputBindResult;

    #@37
    .line 67
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V

    #@3a
    .line 68
    return v4

    #@3b
    .line 65
    :cond_1
    const/4 v1, 0x0

    #@3c
    .local v1, "_arg0":Lcom/android/internal/view/InputBindResult;
    goto :goto_1

    #@3d
    .line 72
    .end local v1    # "_arg0":Lcom/android/internal/view/InputBindResult;
    :sswitch_3
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

    #@40
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->onUnbindMethod(I)V

    #@4a
    .line 76
    return v4

    #@4b
    .line 80
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

    #@4e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_2

    #@57
    const/4 v2, 0x1

    #@58
    .line 83
    .restart local v2    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputMethodClient$Stub;->setActive(Z)V

    #@5b
    .line 84
    return v4

    #@5c
    .line 82
    .end local v2    # "_arg0":Z
    :cond_2
    const/4 v2, 0x0

    #@5d
    .restart local v2    # "_arg0":Z
    goto :goto_2

    #@5e
    .line 88
    .end local v2    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v3, "com.android.internal.view.IInputMethodClient"

    #@61
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v0

    #@68
    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->setUserActionNotificationSequenceNumber(I)V

    #@6b
    .line 92
    return v4

    #@6c
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
