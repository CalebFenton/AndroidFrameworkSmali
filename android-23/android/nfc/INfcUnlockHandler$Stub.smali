.class public abstract Landroid/nfc/INfcUnlockHandler$Stub;
.super Landroid/os/Binder;
.source "INfcUnlockHandler.java"

# interfaces
.implements Landroid/nfc/INfcUnlockHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcUnlockHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcUnlockHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcUnlockHandler"

.field static final TRANSACTION_onUnlockAttempted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.INfcUnlockHandler"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcUnlockHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;
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
    const-string/jumbo v1, "android.nfc.INfcUnlockHandler"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/INfcUnlockHandler;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/INfcUnlockHandler;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/INfcUnlockHandler$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/INfcUnlockHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v2, "android.nfc.INfcUnlockHandler"

    #@d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v3

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.nfc.INfcUnlockHandler"

    #@14
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 53
    sget-object v4, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/nfc/Tag;

    #@25
    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroid/nfc/INfcUnlockHandler$Stub;->onUnlockAttempted(Landroid/nfc/Tag;)Z

    #@28
    move-result v1

    #@29
    .line 59
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 60
    if-eqz v1, :cond_0

    #@2e
    move v2, v3

    #@2f
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 61
    return v3

    #@33
    .line 56
    .end local v1    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    #@34
    .local v0, "_arg0":Landroid/nfc/Tag;
    goto :goto_0

    #@35
    .line 41
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
