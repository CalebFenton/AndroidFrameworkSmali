.class public abstract Landroid/view/IInputFilter$Stub;
.super Landroid/os/Binder;
.source "IInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IInputFilter"

.field static final TRANSACTION_filterInputEvent:I = 0x3

.field static final TRANSACTION_install:I = 0x1

.field static final TRANSACTION_uninstall:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.view.IInputFilter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IInputFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.view.IInputFilter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IInputFilter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/view/IInputFilter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IInputFilter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IInputFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v3, "android.view.IInputFilter"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v4

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v3, "android.view.IInputFilter"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v3}, Landroid/view/IInputFilterHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilterHost;

    #@1d
    move-result-object v0

    #@1e
    .line 56
    .local v0, "_arg0":Landroid/view/IInputFilterHost;
    invoke-virtual {p0, v0}, Landroid/view/IInputFilter$Stub;->install(Landroid/view/IInputFilterHost;)V

    #@21
    .line 57
    return v4

    #@22
    .line 61
    .end local v0    # "_arg0":Landroid/view/IInputFilterHost;
    :sswitch_2
    const-string/jumbo v3, "android.view.IInputFilter"

    #@25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 62
    invoke-virtual {p0}, Landroid/view/IInputFilter$Stub;->uninstall()V

    #@2b
    .line 63
    return v4

    #@2c
    .line 67
    :sswitch_3
    const-string/jumbo v3, "android.view.IInputFilter"

    #@2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 70
    sget-object v3, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d
    move-result-object v1

    #@3e
    check-cast v1, Landroid/view/InputEvent;

    #@40
    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v2

    #@44
    .line 77
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/view/IInputFilter$Stub;->filterInputEvent(Landroid/view/InputEvent;I)V

    #@47
    .line 78
    return v4

    #@48
    .line 73
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v1, 0x0

    #@49
    .local v1, "_arg0":Landroid/view/InputEvent;
    goto :goto_0

    #@4a
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
