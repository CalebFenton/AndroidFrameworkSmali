.class public abstract Landroid/content/pm/IStagedApexObserver$Stub;
.super Landroid/os/Binder;
.source "IStagedApexObserver.java"

# interfaces
.implements Landroid/content/pm/IStagedApexObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IStagedApexObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IStagedApexObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onApexStaged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.content.pm.IStagedApexObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IStagedApexObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IStagedApexObserver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.content.pm.IStagedApexObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IStagedApexObserver;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IStagedApexObserver;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/content/pm/IStagedApexObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IStagedApexObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "android.content.pm.IStagedApexObserver"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 60
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 66
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_1e
    sget-object v2, Landroid/content/pm/ApexStagedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApexStagedEvent;

    .line 72
    .local v2, "_arg0":Landroid/content/pm/ApexStagedEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, v2}, Landroid/content/pm/IStagedApexObserver$Stub;->onApexStaged(Landroid/content/pm/ApexStagedEvent;)V

    .line 74
    nop

    .line 81
    .end local v2    # "_arg0":Landroid/content/pm/ApexStagedEvent;
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
