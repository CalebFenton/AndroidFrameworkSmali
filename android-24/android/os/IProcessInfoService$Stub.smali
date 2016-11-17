.class public abstract Landroid/os/IProcessInfoService$Stub;
.super Landroid/os/Binder;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IProcessInfoService"

.field static final TRANSACTION_getProcessStatesAndOomScoresFromPids:I = 0x2

.field static final TRANSACTION_getProcessStatesFromPids:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IProcessInfoService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IProcessInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IProcessInfoService;
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
    const-string/jumbo v1, "android.os.IProcessInfoService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IProcessInfoService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IProcessInfoService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IProcessInfoService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IProcessInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v5, "android.os.IProcessInfoService"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v6

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v5, "android.os.IProcessInfoService"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@19
    move-result-object v0

    #@1a
    .line 52
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 53
    .local v2, "_arg1_length":I
    if-gez v2, :cond_0

    #@20
    .line 54
    const/4 v1, 0x0

    #@21
    .line 59
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesFromPids([I[I)V

    #@24
    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 61
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@2a
    .line 62
    return v6

    #@2b
    .line 57
    :cond_0
    new-array v1, v2, [I

    #@2d
    .local v1, "_arg1":[I
    goto :goto_0

    #@2e
    .line 66
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg1_length":I
    :sswitch_2
    const-string/jumbo v5, "android.os.IProcessInfoService"

    #@31
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@37
    move-result-object v0

    #@38
    .line 70
    .restart local v0    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v2

    #@3c
    .line 71
    .restart local v2    # "_arg1_length":I
    if-gez v2, :cond_1

    #@3e
    .line 72
    const/4 v1, 0x0

    #@3f
    .line 78
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v4

    #@43
    .line 79
    .local v4, "_arg2_length":I
    if-gez v4, :cond_2

    #@45
    .line 80
    const/4 v3, 0x0

    #@46
    .line 85
    :goto_2
    invoke-virtual {p0, v0, v1, v3}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesAndOomScoresFromPids([I[I[I)V

    #@49
    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c
    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@4f
    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    #@52
    .line 89
    return v6

    #@53
    .line 75
    .end local v4    # "_arg2_length":I
    :cond_1
    new-array v1, v2, [I

    #@55
    .restart local v1    # "_arg1":[I
    goto :goto_1

    #@56
    .line 83
    .end local v1    # "_arg1":[I
    .restart local v4    # "_arg2_length":I
    :cond_2
    new-array v3, v4, [I

    #@58
    .local v3, "_arg2":[I
    goto :goto_2

    #@59
    .line 39
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
