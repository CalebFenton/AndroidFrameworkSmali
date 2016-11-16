.class public abstract Landroid/location/IGnssStatusListener$Stub;
.super Landroid/os/Binder;
.source "IGnssStatusListener.java"

# interfaces
.implements Landroid/location/IGnssStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGnssStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGnssStarted:I = 0x1

.field static final TRANSACTION_onGnssStopped:I = 0x2

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
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/IGnssStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;
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
    const-string/jumbo v1, "android.location.IGnssStatusListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/IGnssStatusListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/location/IGnssStatusListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGnssStatusListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/IGnssStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v9

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 51
    invoke-virtual {p0}, Landroid/location/IGnssStatusListener$Stub;->onGnssStarted()V

    #@19
    .line 52
    return v9

    #@1a
    .line 56
    :sswitch_2
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20
    .line 57
    invoke-virtual {p0}, Landroid/location/IGnssStatusListener$Stub;->onGnssStopped()V

    #@23
    .line 58
    return v9

    #@24
    .line 62
    :sswitch_3
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v1

    #@2e
    .line 65
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/location/IGnssStatusListener$Stub;->onFirstFix(I)V

    #@31
    .line 66
    return v9

    #@32
    .line 70
    .end local v1    # "_arg0":I
    :sswitch_4
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@35
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v1

    #@3c
    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@3f
    move-result-object v2

    #@40
    .line 76
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@43
    move-result-object v3

    #@44
    .line 78
    .local v3, "_arg2":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@47
    move-result-object v4

    #@48
    .line 80
    .local v4, "_arg3":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@4b
    move-result-object v5

    #@4c
    .local v5, "_arg4":[F
    move-object v0, p0

    #@4d
    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/location/IGnssStatusListener$Stub;->onSvStatusChanged(I[I[F[F[F)V

    #@50
    .line 82
    return v9

    #@51
    .line 86
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":[F
    .end local v4    # "_arg3":[F
    .end local v5    # "_arg4":[F
    :sswitch_5
    const-string/jumbo v0, "android.location.IGnssStatusListener"

    #@54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@57
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@5a
    move-result-wide v6

    #@5b
    .line 90
    .local v6, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e
    move-result-object v8

    #@5f
    .line 91
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v6, v7, v8}, Landroid/location/IGnssStatusListener$Stub;->onNmeaReceived(JLjava/lang/String;)V

    #@62
    .line 92
    return v9

    #@63
    .line 41
    nop

    #@64
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
