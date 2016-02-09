.class public abstract Landroid/service/chooser/IChooserTargetService$Stub;
.super Landroid/os/Binder;
.source "IChooserTargetService.java"

# interfaces
.implements Landroid/service/chooser/IChooserTargetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/IChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/IChooserTargetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.chooser.IChooserTargetService"

.field static final TRANSACTION_getChooserTargets:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.service.chooser.IChooserTargetService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/chooser/IChooserTargetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.service.chooser.IChooserTargetService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/chooser/IChooserTargetService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/service/chooser/IChooserTargetService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/chooser/IChooserTargetService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/chooser/IChooserTargetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v3, "android.service.chooser.IChooserTargetService"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v4

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v3, "android.service.chooser.IChooserTargetService"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 53
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/ComponentName;

    #@24
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 60
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroid/content/IntentFilter;

    #@32
    .line 66
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@35
    move-result-object v3

    #@36
    invoke-static {v3}, Landroid/service/chooser/IChooserTargetResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetResult;

    #@39
    move-result-object v2

    #@3a
    .line 67
    .local v2, "_arg2":Landroid/service/chooser/IChooserTargetResult;
    invoke-virtual {p0, v0, v1, v2}, Landroid/service/chooser/IChooserTargetService$Stub;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V

    #@3d
    .line 68
    return v4

    #@3e
    .line 56
    .end local v2    # "_arg2":Landroid/service/chooser/IChooserTargetResult;
    :cond_0
    const/4 v0, 0x0

    #@3f
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@40
    .line 63
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_1
    const/4 v1, 0x0

    #@41
    .local v1, "_arg1":Landroid/content/IntentFilter;
    goto :goto_1

    #@42
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
