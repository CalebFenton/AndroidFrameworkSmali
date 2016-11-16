.class public abstract Landroid/content/pm/IPackageInstallerCallback$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerCallback.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerCallback"

.field static final TRANSACTION_onSessionActiveChanged:I = 0x3

.field static final TRANSACTION_onSessionBadgingChanged:I = 0x2

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionFinished:I = 0x5

.field static final TRANSACTION_onSessionProgressChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.content.pm.IPackageInstallerCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;
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
    const-string/jumbo v1, "android.content.pm.IPackageInstallerCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IPackageInstallerCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v3

    #@9
    return v3

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v3

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@14
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionCreated(I)V

    #@1e
    .line 52
    return v3

    #@1f
    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@22
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionBadgingChanged(I)V

    #@2c
    .line 60
    return v3

    #@2d
    .line 64
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@30
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_0

    #@3d
    move v2, v3

    #@3e
    .line 69
    .local v2, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionActiveChanged(IZ)V

    #@41
    .line 70
    return v3

    #@42
    .line 74
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@45
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@4f
    move-result v1

    #@50
    .line 79
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionProgressChanged(IF)V

    #@53
    .line 80
    return v3

    #@54
    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :sswitch_5
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    #@57
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_1

    #@64
    move v2, v3

    #@65
    .line 89
    .restart local v2    # "_arg1":Z
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionFinished(IZ)V

    #@68
    .line 90
    return v3

    #@69
    .line 39
    nop

    #@6a
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
