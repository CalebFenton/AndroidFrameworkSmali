.class public abstract Landroid/location/IGpsStatusListener$Stub;
.super Landroid/os/Binder;
.source "IGpsStatusListener.java"

# interfaces
.implements Landroid/location/IGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGpsStarted:I = 0x1

.field static final TRANSACTION_onGpsStopped:I = 0x2

.field static final TRANSACTION_onNmeaReceived:I = 0x5

.field static final TRANSACTION_onSvStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;
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
    const-string/jumbo v1, "android.location.IGpsStatusListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/IGpsStatusListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/location/IGpsStatusListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGpsStatusListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/IGpsStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 101
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 51
    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStarted()V

    #@19
    .line 52
    const/4 v0, 0x1

    #@1a
    return v0

    #@1b
    .line 56
    :sswitch_2
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21
    .line 57
    invoke-virtual {p0}, Landroid/location/IGpsStatusListener$Stub;->onGpsStopped()V

    #@24
    .line 58
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 62
    :sswitch_3
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    .line 65
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/location/IGpsStatusListener$Stub;->onFirstFix(I)V

    #@33
    .line 66
    const/4 v0, 0x1

    #@34
    return v0

    #@35
    .line 70
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@42
    move-result-object v2

    #@43
    .line 76
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@46
    move-result-object v3

    #@47
    .line 78
    .local v3, "_arg2":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@4a
    move-result-object v4

    #@4b
    .line 80
    .local v4, "_arg3":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@4e
    move-result-object v5

    #@4f
    .line 82
    .local v5, "_arg4":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v6

    #@53
    .line 84
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v7

    #@57
    .line 86
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v8

    #@5b
    .local v8, "_arg7":I
    move-object v0, p0

    #@5c
    .line 87
    invoke-virtual/range {v0 .. v8}, Landroid/location/IGpsStatusListener$Stub;->onSvStatusChanged(I[I[F[F[FIII)V

    #@5f
    .line 88
    const/4 v0, 0x1

    #@60
    return v0

    #@61
    .line 92
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":[F
    .end local v4    # "_arg3":[F
    .end local v5    # "_arg4":[F
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    :sswitch_5
    const-string/jumbo v0, "android.location.IGpsStatusListener"

    #@64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@6a
    move-result-wide v10

    #@6b
    .line 96
    .local v10, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    .line 97
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v10, v11, v9}, Landroid/location/IGpsStatusListener$Stub;->onNmeaReceived(JLjava/lang/String;)V

    #@72
    .line 98
    const/4 v0, 0x1

    #@73
    return v0

    #@74
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
