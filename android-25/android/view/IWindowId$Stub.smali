.class public abstract Landroid/view/IWindowId$Stub;
.super Landroid/os/Binder;
.source "IWindowId.java"

# interfaces
.implements Landroid/view/IWindowId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowId$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowId"

.field static final TRANSACTION_isFocused:I = 0x3

.field static final TRANSACTION_registerFocusObserver:I = 0x1

.field static final TRANSACTION_unregisterFocusObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.view.IWindowId"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowId$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;
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
    const-string/jumbo v1, "android.view.IWindowId"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IWindowId;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/view/IWindowId;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowId$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IWindowId$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.view.IWindowId"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v3

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.view.IWindowId"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Landroid/view/IWindowFocusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowFocusObserver;

    #@1d
    move-result-object v0

    #@1e
    .line 51
    .local v0, "_arg0":Landroid/view/IWindowFocusObserver;
    invoke-virtual {p0, v0}, Landroid/view/IWindowId$Stub;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V

    #@21
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 53
    return v3

    #@25
    .line 57
    .end local v0    # "_arg0":Landroid/view/IWindowFocusObserver;
    :sswitch_2
    const-string/jumbo v2, "android.view.IWindowId"

    #@28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v2}, Landroid/view/IWindowFocusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowFocusObserver;

    #@32
    move-result-object v0

    #@33
    .line 60
    .restart local v0    # "_arg0":Landroid/view/IWindowFocusObserver;
    invoke-virtual {p0, v0}, Landroid/view/IWindowId$Stub;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V

    #@36
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 62
    return v3

    #@3a
    .line 66
    .end local v0    # "_arg0":Landroid/view/IWindowFocusObserver;
    :sswitch_3
    const-string/jumbo v2, "android.view.IWindowId"

    #@3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 67
    invoke-virtual {p0}, Landroid/view/IWindowId$Stub;->isFocused()Z

    #@43
    move-result v1

    #@44
    .line 68
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    .line 69
    if-eqz v1, :cond_0

    #@49
    move v2, v3

    #@4a
    :goto_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    .line 70
    return v3

    #@4e
    .line 69
    :cond_0
    const/4 v2, 0x0

    #@4f
    goto :goto_0

    #@50
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
