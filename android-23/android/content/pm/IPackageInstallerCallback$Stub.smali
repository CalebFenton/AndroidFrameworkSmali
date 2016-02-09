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
    const/4 v4, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v4

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionCreated(I)V

    #@1d
    .line 52
    return v4

    #@1e
    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    .line 59
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionBadgingChanged(I)V

    #@2b
    .line 60
    return v4

    #@2c
    .line 64
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@32
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_0

    #@3c
    const/4 v2, 0x1

    #@3d
    .line 69
    .local v2, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionActiveChanged(IZ)V

    #@40
    .line 70
    return v4

    #@41
    .line 68
    .end local v2    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    #@42
    .restart local v2    # "_arg1":Z
    goto :goto_0

    #@43
    .line 74
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@46
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v0

    #@4d
    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@50
    move-result v1

    #@51
    .line 79
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionProgressChanged(IF)V

    #@54
    .line 80
    return v4

    #@55
    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :sswitch_5
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    #@58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_1

    #@65
    const/4 v2, 0x1

    #@66
    .line 89
    .restart local v2    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionFinished(IZ)V

    #@69
    .line 90
    return v4

    #@6a
    .line 88
    .end local v2    # "_arg1":Z
    :cond_1
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "_arg1":Z
    goto :goto_1

    #@6c
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
