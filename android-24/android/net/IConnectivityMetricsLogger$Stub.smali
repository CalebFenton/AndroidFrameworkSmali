.class public abstract Landroid/net/IConnectivityMetricsLogger$Stub;
.super Landroid/os/Binder;
.source "IConnectivityMetricsLogger.java"

# interfaces
.implements Landroid/net/IConnectivityMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityMetricsLogger"

.field static final TRANSACTION_getEvents:I = 0x3

.field static final TRANSACTION_logEvent:I = 0x1

.field static final TRANSACTION_logEvents:I = 0x2

.field static final TRANSACTION_register:I = 0x4

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.net.IConnectivityMetricsLogger"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityMetricsLogger;
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
    const-string/jumbo v1, "android.net.IConnectivityMetricsLogger"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/IConnectivityMetricsLogger;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/net/IConnectivityMetricsLogger;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/IConnectivityMetricsLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v8

    #@9
    return v8

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    #@d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v9

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_0

    #@1d
    .line 51
    sget-object v8, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Landroid/net/ConnectivityMetricsEvent;

    #@25
    .line 56
    :goto_0
    invoke-virtual {p0, v2}, Landroid/net/IConnectivityMetricsLogger$Stub;->logEvent(Landroid/net/ConnectivityMetricsEvent;)J

    #@28
    move-result-wide v4

    #@29
    .line 57
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 58
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2f
    .line 59
    return v9

    #@30
    .line 54
    .end local v4    # "_result":J
    :cond_0
    const/4 v2, 0x0

    #@31
    .local v2, "_arg0":Landroid/net/ConnectivityMetricsEvent;
    goto :goto_0

    #@32
    .line 63
    .end local v2    # "_arg0":Landroid/net/ConnectivityMetricsEvent;
    :sswitch_2
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    #@35
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 65
    sget-object v8, Landroid/net/ConnectivityMetricsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, [Landroid/net/ConnectivityMetricsEvent;

    #@40
    .line 66
    .local v3, "_arg0":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p0, v3}, Landroid/net/IConnectivityMetricsLogger$Stub;->logEvents([Landroid/net/ConnectivityMetricsEvent;)J

    #@43
    move-result-wide v4

    #@44
    .line 67
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@47
    .line 68
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@4a
    .line 69
    return v9

    #@4b
    .line 73
    .end local v3    # "_arg0":[Landroid/net/ConnectivityMetricsEvent;
    .end local v4    # "_result":J
    :sswitch_3
    const-string/jumbo v10, "android.net.IConnectivityMetricsLogger"

    #@4e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@54
    move-result v10

    #@55
    if-eqz v10, :cond_1

    #@57
    .line 76
    sget-object v10, Landroid/net/ConnectivityMetricsEvent$Reference;->CREATOR:Landroid/os/Parcelable$Creator;

    #@59
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Landroid/net/ConnectivityMetricsEvent$Reference;

    #@5f
    .line 81
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/IConnectivityMetricsLogger$Stub;->getEvents(Landroid/net/ConnectivityMetricsEvent$Reference;)[Landroid/net/ConnectivityMetricsEvent;

    #@62
    move-result-object v7

    #@63
    .line 82
    .local v7, "_result":[Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 83
    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@69
    .line 84
    if-eqz v1, :cond_2

    #@6b
    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 86
    invoke-virtual {v1, p3, v9}, Landroid/net/ConnectivityMetricsEvent$Reference;->writeToParcel(Landroid/os/Parcel;I)V

    #@71
    .line 91
    :goto_2
    return v9

    #@72
    .line 79
    .end local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_1
    const/4 v1, 0x0

    #@73
    .local v1, "_arg0":Landroid/net/ConnectivityMetricsEvent$Reference;
    goto :goto_1

    #@74
    .line 89
    .end local v1    # "_arg0":Landroid/net/ConnectivityMetricsEvent$Reference;
    .restart local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    goto :goto_2

    #@78
    .line 95
    .end local v7    # "_result":[Landroid/net/ConnectivityMetricsEvent;
    :sswitch_4
    const-string/jumbo v10, "android.net.IConnectivityMetricsLogger"

    #@7b
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v10

    #@82
    if-eqz v10, :cond_4

    #@84
    .line 98
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@86
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Landroid/app/PendingIntent;

    #@8c
    .line 103
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->register(Landroid/app/PendingIntent;)Z

    #@8f
    move-result v6

    #@90
    .line 104
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@93
    .line 105
    if-eqz v6, :cond_3

    #@95
    move v8, v9

    #@96
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@99
    .line 106
    return v9

    #@9a
    .line 101
    .end local v6    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@9b
    .local v0, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3

    #@9c
    .line 110
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v8, "android.net.IConnectivityMetricsLogger"

    #@9f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v8

    #@a6
    if-eqz v8, :cond_5

    #@a8
    .line 113
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@aa
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ad
    move-result-object v0

    #@ae
    check-cast v0, Landroid/app/PendingIntent;

    #@b0
    .line 118
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityMetricsLogger$Stub;->unregister(Landroid/app/PendingIntent;)V

    #@b3
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6
    .line 120
    return v9

    #@b7
    .line 116
    :cond_5
    const/4 v0, 0x0

    #@b8
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_4

    #@b9
    .line 39
    nop

    #@ba
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
