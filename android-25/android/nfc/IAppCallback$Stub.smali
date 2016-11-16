.class public abstract Landroid/nfc/IAppCallback$Stub;
.super Landroid/os/Binder;
.source "IAppCallback.java"

# interfaces
.implements Landroid/nfc/IAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IAppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.IAppCallback"

.field static final TRANSACTION_createBeamShareData:I = 0x1

.field static final TRANSACTION_onNdefPushComplete:I = 0x2

.field static final TRANSACTION_onTagDiscovered:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.nfc.IAppCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/nfc/IAppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;
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
    const-string/jumbo v1, "android.nfc.IAppCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/nfc/IAppCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/nfc/IAppCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/nfc/IAppCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/nfc/IAppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v3

    #@9
    return v3

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v3, "android.nfc.IAppCallback"

    #@d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v4

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v3, "android.nfc.IAppCallback"

    #@14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@1a
    move-result v0

    #@1b
    .line 53
    .local v0, "_arg0":B
    invoke-virtual {p0, v0}, Landroid/nfc/IAppCallback$Stub;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    #@1e
    move-result-object v2

    #@1f
    .line 54
    .local v2, "_result":Landroid/nfc/BeamShareData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 55
    if-eqz v2, :cond_0

    #@24
    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 57
    invoke-virtual {v2, p3, v4}, Landroid/nfc/BeamShareData;->writeToParcel(Landroid/os/Parcel;I)V

    #@2a
    .line 62
    :goto_0
    return v4

    #@2b
    .line 60
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 66
    .end local v0    # "_arg0":B
    .end local v2    # "_result":Landroid/nfc/BeamShareData;
    :sswitch_2
    const-string/jumbo v3, "android.nfc.IAppCallback"

    #@32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    #@38
    move-result v0

    #@39
    .line 69
    .restart local v0    # "_arg0":B
    invoke-virtual {p0, v0}, Landroid/nfc/IAppCallback$Stub;->onNdefPushComplete(B)V

    #@3c
    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 71
    return v4

    #@40
    .line 75
    .end local v0    # "_arg0":B
    :sswitch_3
    const-string/jumbo v3, "android.nfc.IAppCallback"

    #@43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46
    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v3

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 78
    sget-object v3, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Landroid/nfc/Tag;

    #@54
    .line 83
    :goto_1
    invoke-virtual {p0, v1}, Landroid/nfc/IAppCallback$Stub;->onTagDiscovered(Landroid/nfc/Tag;)V

    #@57
    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a
    .line 85
    return v4

    #@5b
    .line 81
    :cond_1
    const/4 v1, 0x0

    #@5c
    .local v1, "_arg0":Landroid/nfc/Tag;
    goto :goto_1

    #@5d
    .line 41
    nop

    #@5e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
