.class public abstract Landroid/view/IApplicationToken$Stub;
.super Landroid/os/Binder;
.source "IApplicationToken.java"

# interfaces
.implements Landroid/view/IApplicationToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IApplicationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IApplicationToken$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IApplicationToken"

.field static final TRANSACTION_getKeyDispatchingTimeout:I = 0x5

.field static final TRANSACTION_keyDispatchingTimedOut:I = 0x4

.field static final TRANSACTION_windowsDrawn:I = 0x1

.field static final TRANSACTION_windowsGone:I = 0x3

.field static final TRANSACTION_windowsVisible:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.view.IApplicationToken"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IApplicationToken$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;
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
    const-string/jumbo v1, "android.view.IApplicationToken"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IApplicationToken;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/view/IApplicationToken;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IApplicationToken$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IApplicationToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->windowsDrawn()V

    #@19
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 51
    return v5

    #@1d
    .line 55
    :sswitch_2
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@20
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    .line 56
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->windowsVisible()V

    #@26
    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 58
    return v5

    #@2a
    .line 62
    :sswitch_3
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@2d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 63
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->windowsGone()V

    #@33
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@36
    .line 65
    return v5

    #@37
    .line 69
    :sswitch_4
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@3a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 72
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/view/IApplicationToken$Stub;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    #@44
    move-result v1

    #@45
    .line 73
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 74
    if-eqz v1, :cond_0

    #@4a
    move v4, v5

    #@4b
    :goto_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 75
    return v5

    #@4f
    .line 74
    :cond_0
    const/4 v4, 0x0

    #@50
    goto :goto_0

    #@51
    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.view.IApplicationToken"

    #@54
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 80
    invoke-virtual {p0}, Landroid/view/IApplicationToken$Stub;->getKeyDispatchingTimeout()J

    #@5a
    move-result-wide v2

    #@5b
    .line 81
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    .line 82
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@61
    .line 83
    return v5

    #@62
    .line 39
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
