.class public abstract Landroid/content/ISyncContext$Stub;
.super Landroid/os/Binder;
.source "ISyncContext.java"

# interfaces
.implements Landroid/content/ISyncContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncContext"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_sendHeartbeat:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.content.ISyncContext"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;
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
    const-string/jumbo v1, "android.content.ISyncContext"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/ISyncContext;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/content/ISyncContext;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/ISyncContext$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/ISyncContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v1, "android.content.ISyncContext"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v2

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v1, "android.content.ISyncContext"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p0}, Landroid/content/ISyncContext$Stub;->sendHeartbeat()V

    #@19
    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c
    .line 54
    return v2

    #@1d
    .line 58
    :sswitch_2
    const-string/jumbo v1, "android.content.ISyncContext"

    #@20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 61
    sget-object v1, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/content/SyncResult;

    #@31
    .line 66
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/ISyncContext$Stub;->onFinished(Landroid/content/SyncResult;)V

    #@34
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    .line 68
    return v2

    #@38
    .line 64
    :cond_0
    const/4 v0, 0x0

    #@39
    .local v0, "_arg0":Landroid/content/SyncResult;
    goto :goto_0

    #@3a
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
