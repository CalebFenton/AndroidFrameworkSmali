.class public abstract Lcom/android/internal/app/IProcessStats$Stub;
.super Landroid/os/Binder;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IProcessStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IProcessStats"

.field static final TRANSACTION_getCurrentMemoryState:I = 0x3

.field static final TRANSACTION_getCurrentStats:I = 0x1

.field static final TRANSACTION_getStatsOverTime:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.app.IProcessStats"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IProcessStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.app.IProcessStats"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/app/IProcessStats;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/app/IProcessStats;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/app/IProcessStats$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/app/IProcessStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 42
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.app.IProcessStats"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 43
    return v7

    #@10
    .line 47
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.app.IProcessStats"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 50
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IProcessStats$Stub;->getCurrentStats(Ljava/util/List;)[B

    #@1e
    move-result-object v5

    #@1f
    .line 51
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 52
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    #@25
    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@28
    .line 54
    return v7

    #@29
    .line 58
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v5    # "_result":[B
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.app.IProcessStats"

    #@2c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@32
    move-result-wide v0

    #@33
    .line 61
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IProcessStats$Stub;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    #@36
    move-result-object v4

    #@37
    .line 62
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 63
    if-eqz v4, :cond_0

    #@3c
    .line 64
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 65
    invoke-virtual {v4, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@42
    .line 70
    :goto_0
    return v7

    #@43
    .line 68
    :cond_0
    const/4 v6, 0x0

    #@44
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    goto :goto_0

    #@48
    .line 74
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.app.IProcessStats"

    #@4b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/IProcessStats$Stub;->getCurrentMemoryState()I

    #@51
    move-result v3

    #@52
    .line 76
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 78
    return v7

    #@59
    .line 38
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
