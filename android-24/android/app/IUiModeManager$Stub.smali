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

.field static final TRANSACTION_isNightModeLocked:I = 0x7

.field static final TRANSACTION_isUiModeLocked:I = 0x6

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
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v3

    #@9
    return v3

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v4

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->enableCarMode(I)V

    #@1e
    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@21
    .line 56
    return v4

    #@22
    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->disableCarMode(I)V

    #@2f
    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 65
    return v4

    #@33
    .line 69
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 70
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getCurrentModeType()I

    #@3c
    move-result v1

    #@3d
    .line 71
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43
    .line 73
    return v4

    #@44
    .line 77
    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@47
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v0

    #@4e
    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IUiModeManager$Stub;->setNightMode(I)V

    #@51
    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 82
    return v4

    #@55
    .line 86
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v3, "android.app.IUiModeManager"

    #@58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 87
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->getNightMode()I

    #@5e
    move-result v1

    #@5f
    .line 88
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 89
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 90
    return v4

    #@66
    .line 94
    .end local v1    # "_result":I
    :sswitch_6
    const-string/jumbo v5, "android.app.IUiModeManager"

    #@69
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 95
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isUiModeLocked()Z

    #@6f
    move-result v2

    #@70
    .line 96
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 97
    if-eqz v2, :cond_0

    #@75
    move v3, v4

    #@76
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 98
    return v4

    #@7a
    .line 102
    .end local v2    # "_result":Z
    :sswitch_7
    const-string/jumbo v5, "android.app.IUiModeManager"

    #@7d
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 103
    invoke-virtual {p0}, Landroid/app/IUiModeManager$Stub;->isNightModeLocked()Z

    #@83
    move-result v2

    #@84
    .line 104
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 105
    if-eqz v2, :cond_1

    #@89
    move v3, v4

    #@8a
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@8d
    .line 106
    return v4

    #@8e
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
