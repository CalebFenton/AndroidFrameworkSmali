.class public abstract Landroid/content/IIntentSender$Stub;
.super Landroid/os/Binder;
.source "IIntentSender.java"

# interfaces
.implements Landroid/content/IIntentSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IIntentSender$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IIntentSender"

.field static final TRANSACTION_send:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.content.IIntentSender"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/IIntentSender$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;
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
    const-string/jumbo v1, "android.content.IIntentSender"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/IIntentSender;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/content/IIntentSender;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/IIntentSender$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/IIntentSender$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v8, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v0, "android.content.IIntentSender"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v8

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v0, "android.content.IIntentSender"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 53
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/content/Intent;

    #@28
    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 61
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    #@33
    move-result-object v4

    #@34
    .line 63
    .local v4, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    .line 65
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 66
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v6

    #@44
    check-cast v6, Landroid/os/Bundle;

    #@46
    :goto_1
    move-object v0, p0

    #@47
    .line 71
    invoke-virtual/range {v0 .. v6}, Landroid/content/IIntentSender$Stub;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    #@4a
    move-result v7

    #@4b
    .line 72
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e
    .line 73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 74
    return v8

    #@52
    .line 56
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/IIntentReceiver;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v7    # "_result":I
    :cond_0
    const/4 v2, 0x0

    #@53
    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_0

    #@54
    .line 69
    .end local v2    # "_arg1":Landroid/content/Intent;
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Landroid/content/IIntentReceiver;
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    #@55
    .local v6, "_arg5":Landroid/os/Bundle;
    goto :goto_1

    #@56
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
