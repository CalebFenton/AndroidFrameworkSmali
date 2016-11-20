.class public abstract Landroid/os/IProgressListener$Stub;
.super Landroid/os/Binder;
.source "IProgressListener.java"

# interfaces
.implements Landroid/os/IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProgressListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IProgressListener"

.field static final TRANSACTION_onFinished:I = 0x3

.field static final TRANSACTION_onProgress:I = 0x2

.field static final TRANSACTION_onStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.os.IProgressListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IProgressListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;
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
    const-string/jumbo v1, "android.os.IProgressListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IProgressListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/os/IProgressListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IProgressListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IProgressListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.os.IProgressListener"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.os.IProgressListener"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 53
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/os/Bundle;

    #@28
    .line 58
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/os/IProgressListener$Stub;->onStarted(ILandroid/os/Bundle;)V

    #@2b
    .line 59
    return v5

    #@2c
    .line 56
    :cond_0
    const/4 v2, 0x0

    #@2d
    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@2e
    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v4, "android.os.IProgressListener"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v1

    #@3c
    .line 69
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_1

    #@42
    .line 70
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@44
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Landroid/os/Bundle;

    #@4a
    .line 75
    :goto_1
    invoke-virtual {p0, v0, v1, v3}, Landroid/os/IProgressListener$Stub;->onProgress(IILandroid/os/Bundle;)V

    #@4d
    .line 76
    return v5

    #@4e
    .line 73
    :cond_1
    const/4 v3, 0x0

    #@4f
    .local v3, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    #@50
    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v4, "android.os.IProgressListener"

    #@53
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v0

    #@5a
    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_2

    #@60
    .line 85
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@65
    move-result-object v2

    #@66
    check-cast v2, Landroid/os/Bundle;

    #@68
    .line 90
    :goto_2
    invoke-virtual {p0, v0, v2}, Landroid/os/IProgressListener$Stub;->onFinished(ILandroid/os/Bundle;)V

    #@6b
    .line 91
    return v5

    #@6c
    .line 88
    :cond_2
    const/4 v2, 0x0

    #@6d
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    #@6e
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
