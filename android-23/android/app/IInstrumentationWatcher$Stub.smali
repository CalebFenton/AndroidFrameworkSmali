.class public abstract Landroid/app/IInstrumentationWatcher$Stub;
.super Landroid/os/Binder;
.source "IInstrumentationWatcher.java"

# interfaces
.implements Landroid/app/IInstrumentationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IInstrumentationWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstrumentationWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IInstrumentationWatcher"

.field static final TRANSACTION_instrumentationFinished:I = 0x2

.field static final TRANSACTION_instrumentationStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IInstrumentationWatcher"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IInstrumentationWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;
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
    const-string/jumbo v1, "android.app.IInstrumentationWatcher"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IInstrumentationWatcher;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IInstrumentationWatcher;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IInstrumentationWatcher$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IInstrumentationWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v4

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 51
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/ComponentName;

    #@24
    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v1

    #@28
    .line 59
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 60
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    check-cast v2, Landroid/os/Bundle;

    #@36
    .line 65
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    #@39
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 67
    return v4

    #@3d
    .line 54
    .end local v1    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    #@3e
    .local v0, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@3f
    .line 63
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .restart local v1    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    #@40
    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@41
    .line 71
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v3, "android.app.IInstrumentationWatcher"

    #@44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_2

    #@4d
    .line 74
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4f
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/content/ComponentName;

    #@55
    .line 80
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v1

    #@59
    .line 82
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_3

    #@5f
    .line 83
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@61
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    check-cast v2, Landroid/os/Bundle;

    #@67
    .line 88
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IInstrumentationWatcher$Stub;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    #@6a
    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d
    .line 90
    return v4

    #@6e
    .line 77
    .end local v1    # "_arg1":I
    :cond_2
    const/4 v0, 0x0

    #@6f
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    #@70
    .line 86
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .restart local v1    # "_arg1":I
    :cond_3
    const/4 v2, 0x0

    #@71
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    goto :goto_3

    #@72
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
