.class public abstract Landroid/app/IActivityPendingResult$Stub;
.super Landroid/os/Binder;
.source "IActivityPendingResult.java"

# interfaces
.implements Landroid/app/IActivityPendingResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityPendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityPendingResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityPendingResult"

.field static final TRANSACTION_sendResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IActivityPendingResult"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityPendingResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityPendingResult;
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
    const-string/jumbo v1, "android.app.IActivityPendingResult"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IActivityPendingResult;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IActivityPendingResult;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IActivityPendingResult$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IActivityPendingResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.app.IActivityPendingResult"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v5

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v6, "android.app.IActivityPendingResult"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 54
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_1

    #@25
    .line 55
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/os/Bundle;

    #@2d
    .line 60
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IActivityPendingResult$Stub;->sendResult(ILjava/lang/String;Landroid/os/Bundle;)Z

    #@30
    move-result v3

    #@31
    .line 61
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@34
    .line 62
    if-eqz v3, :cond_0

    #@36
    move v4, v5

    #@37
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 63
    return v5

    #@3b
    .line 58
    .end local v3    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@3c
    .local v2, "_arg2":Landroid/os/Bundle;
    goto :goto_0

    #@3d
    .line 39
    nop

    #@3e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
