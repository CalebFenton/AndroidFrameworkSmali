.class public abstract Landroid/app/backup/IRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreObserver"

.field static final TRANSACTION_onUpdate:I = 0x3

.field static final TRANSACTION_restoreFinished:I = 0x4

.field static final TRANSACTION_restoreSetsAvailable:I = 0x1

.field static final TRANSACTION_restoreStarting:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.app.backup.IRestoreObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.app.backup.IRestoreObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/backup/IRestoreObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/app/backup/IRestoreObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/backup/IRestoreObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v4

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    sget-object v3, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, [Landroid/app/backup/RestoreSet;

    #@1e
    .line 55
    .local v1, "_arg0":[Landroid/app/backup/RestoreSet;
    invoke-virtual {p0, v1}, Landroid/app/backup/IRestoreObserver$Stub;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V

    #@21
    .line 56
    return v4

    #@22
    .line 60
    .end local v1    # "_arg0":[Landroid/app/backup/RestoreSet;
    :sswitch_2
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    #@25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v0

    #@2c
    .line 63
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreStarting(I)V

    #@2f
    .line 64
    return v4

    #@30
    .line 68
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    #@33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 73
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/backup/IRestoreObserver$Stub;->onUpdate(ILjava/lang/String;)V

    #@41
    .line 74
    return v4

    #@42
    .line 78
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "android.app.backup.IRestoreObserver"

    #@45
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/backup/IRestoreObserver$Stub;->restoreFinished(I)V

    #@4f
    .line 82
    return v4

    #@50
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
