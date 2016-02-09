.class public abstract Landroid/app/IUiModeManager$Stub;
.super Landroid/os/Binder;
.source "IUiModeManager.java"

# interfaces
.implements Landroid/app/IUiModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManager"

.field static final TRANSACTION_disableCarMode:I = 0x2

.field static final TRANSACTION_enableCarMode:I = 0x1

.field static final TRANSACTION_getCurrentModeType:I = 0x3

.field static final TRANSACTION_getNightMode:I = 0x5

.field static final TRANSACTION_setNightMode:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.app.IUiModeManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;
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
    const-string/jumbo v1, "android.app.IUiModeManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IUiModeManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/app/IUiModeManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IUiModeManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IUiModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v3

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->enableCarMode(I)V

    #@1d
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 56
    return v3

    #@21
    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    #@2e
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@31
    .line 65
    return v3

    #@32
    .line 69
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 70
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    #@3b
    move-result v1

    #@3c
    .line 71
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 73
    return v3

    #@43
    .line 77
    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    #@50
    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 82
    return v3

    #@54
    .line 86
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v2, "android.app.IUiModeManager"

    #@57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 87
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    #@5d
    move-result v1

    #@5e
    .line 88
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    .line 89
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 90
    return v3

    #@65
    .line 42
    nop

    #@66
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
