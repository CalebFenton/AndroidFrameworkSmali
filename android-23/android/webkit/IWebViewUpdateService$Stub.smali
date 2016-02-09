.class public abstract Landroid/webkit/IWebViewUpdateService$Stub;
.super Landroid/os/Binder;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.webkit.IWebViewUpdateService"

.field static final TRANSACTION_notifyRelroCreationCompleted:I = 0x1

.field static final TRANSACTION_waitForRelroCreationCompleted:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.webkit.IWebViewUpdateService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;
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
    const-string/jumbo v1, "android.webkit.IWebViewUpdateService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/webkit/IWebViewUpdateService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/webkit/IWebViewUpdateService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v2, "android.webkit.IWebViewUpdateService"

    #@c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v3

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v2, "android.webkit.IWebViewUpdateService"

    #@13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 55
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    const/4 v1, 0x1

    #@24
    .line 56
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/webkit/IWebViewUpdateService$Stub;->notifyRelroCreationCompleted(ZZ)V

    #@27
    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a
    .line 58
    return v3

    #@2b
    .line 53
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_0
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "_arg0":Z
    goto :goto_0

    #@2d
    .line 55
    :cond_1
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "_arg1":Z
    goto :goto_1

    #@2f
    .line 62
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v2, "android.webkit.IWebViewUpdateService"

    #@32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    const/4 v0, 0x1

    #@3c
    .line 65
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/webkit/IWebViewUpdateService$Stub;->waitForRelroCreationCompleted(Z)V

    #@3f
    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 67
    return v3

    #@43
    .line 64
    .end local v0    # "_arg0":Z
    :cond_2
    const/4 v0, 0x0

    #@44
    .restart local v0    # "_arg0":Z
    goto :goto_2

    #@45
    .line 42
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
