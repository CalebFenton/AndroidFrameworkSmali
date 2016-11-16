.class public abstract Landroid/content/pm/IOtaDexopt$Stub;
.super Landroid/os/Binder;
.source "IOtaDexopt.java"

# interfaces
.implements Landroid/content/pm/IOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOtaDexopt"

.field static final TRANSACTION_cleanup:I = 0x2

.field static final TRANSACTION_dexoptNextPackage:I = 0x5

.field static final TRANSACTION_getProgress:I = 0x4

.field static final TRANSACTION_isDone:I = 0x3

.field static final TRANSACTION_nextDexoptCommand:I = 0x6

.field static final TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.content.pm.IOtaDexopt"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOtaDexopt;
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
    const-string/jumbo v1, "android.content.pm.IOtaDexopt"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IOtaDexopt;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/content/pm/IOtaDexopt;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IOtaDexopt$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v4

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->prepare()V

    #@19
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 55
    return v4

    #@1d
    .line 59
    :sswitch_2
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    .line 60
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->cleanup()V

    #@26
    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@29
    .line 62
    return v4

    #@2a
    .line 66
    :sswitch_3
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 67
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->isDone()Z

    #@33
    move-result v2

    #@34
    .line 68
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    .line 69
    if-eqz v2, :cond_0

    #@39
    move v3, v4

    #@3a
    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 70
    return v4

    #@3e
    .line 69
    :cond_0
    const/4 v3, 0x0

    #@3f
    goto :goto_0

    #@40
    .line 74
    .end local v2    # "_result":Z
    :sswitch_4
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 75
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->getProgress()F

    #@49
    move-result v0

    #@4a
    .line 76
    .local v0, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@50
    .line 78
    return v4

    #@51
    .line 82
    .end local v0    # "_result":F
    :sswitch_5
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@54
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 83
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->dexoptNextPackage()V

    #@5a
    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    .line 85
    return v4

    #@5e
    .line 89
    :sswitch_6
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    #@61
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 90
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 91
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b
    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6e
    .line 93
    return v4

    #@6f
    .line 43
    nop

    #@70
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
