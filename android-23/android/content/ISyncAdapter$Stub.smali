.class public abstract Landroid/content/ISyncAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncAdapter.java"

# interfaces
.implements Landroid/content/ISyncAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_initialize:I = 0x3

.field static final TRANSACTION_startSync:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.content.ISyncAdapter"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;
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
    const-string/jumbo v1, "android.content.ISyncAdapter"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/ISyncAdapter;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/content/ISyncAdapter;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/ISyncAdapter$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/ISyncAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v5

    #@8
    return v5

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.content.ISyncAdapter"

    #@c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v6

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v5, "android.content.ISyncAdapter"

    #@13
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v5

    #@1a
    invoke-static {v5}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    #@1d
    move-result-object v1

    #@1e
    .line 55
    .local v1, "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 57
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_0

    #@28
    .line 58
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/accounts/Account;

    #@30
    .line 64
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 65
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Landroid/os/Bundle;

    #@3e
    .line 70
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ISyncAdapter$Stub;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    #@41
    .line 71
    return v6

    #@42
    .line 61
    :cond_0
    const/4 v3, 0x0

    #@43
    .local v3, "_arg2":Landroid/accounts/Account;
    goto :goto_0

    #@44
    .line 68
    .end local v3    # "_arg2":Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    #@45
    .local v4, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    #@46
    .line 75
    .end local v1    # "_arg0":Landroid/content/ISyncContext;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v5, "android.content.ISyncAdapter"

    #@49
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f
    move-result-object v5

    #@50
    invoke-static {v5}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    #@53
    move-result-object v1

    #@54
    .line 78
    .restart local v1    # "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p0, v1}, Landroid/content/ISyncAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    #@57
    .line 79
    return v6

    #@58
    .line 83
    .end local v1    # "_arg0":Landroid/content/ISyncContext;
    :sswitch_3
    const-string/jumbo v5, "android.content.ISyncAdapter"

    #@5b
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v5

    #@62
    if-eqz v5, :cond_2

    #@64
    .line 86
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@66
    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Landroid/accounts/Account;

    #@6c
    .line 92
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 93
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/content/ISyncAdapter$Stub;->initialize(Landroid/accounts/Account;Ljava/lang/String;)V

    #@73
    .line 94
    return v6

    #@74
    .line 89
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@75
    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_2

    #@76
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
