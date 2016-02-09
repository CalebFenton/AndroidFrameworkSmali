.class public abstract Landroid/content/ISyncServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncServiceAdapter.java"

# interfaces
.implements Landroid/content/ISyncServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncServiceAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_startSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.content.ISyncServiceAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncServiceAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.content.ISyncServiceAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/ISyncServiceAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/content/ISyncServiceAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/ISyncServiceAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/ISyncServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    #@1
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 48
    :sswitch_0
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 49
    return v3

    #@10
    .line 53
    :sswitch_1
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    #@1d
    move-result-object v0

    #@1e
    .line 57
    .local v0, "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 58
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid/os/Bundle;

    #@2c
    .line 63
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/content/ISyncServiceAdapter$Stub;->startSync(Landroid/content/ISyncContext;Landroid/os/Bundle;)V

    #@2f
    .line 64
    return v3

    #@30
    .line 61
    :cond_0
    const/4 v1, 0x0

    #@31
    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@32
    .line 68
    .end local v0    # "_arg0":Landroid/content/ISyncContext;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v2, "android.content.ISyncServiceAdapter"

    #@35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v2}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    #@3f
    move-result-object v0

    #@40
    .line 71
    .restart local v0    # "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p0, v0}, Landroid/content/ISyncServiceAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    #@43
    .line 72
    return v3

    #@44
    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
