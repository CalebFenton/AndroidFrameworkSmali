.class public abstract Landroid/app/job/IJobScheduler$Stub;
.super Landroid/os/Binder;
.source "IJobScheduler.java"

# interfaces
.implements Landroid/app/job/IJobScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobScheduler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobScheduler"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_cancelAll:I = 0x4

.field static final TRANSACTION_getAllPendingJobs:I = 0x5

.field static final TRANSACTION_getPendingJob:I = 0x6

.field static final TRANSACTION_schedule:I = 0x1

.field static final TRANSACTION_scheduleAsPackage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.app.job.IJobScheduler"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobScheduler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;
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
    const-string/jumbo v1, "android.app.job.IJobScheduler"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/job/IJobScheduler;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/app/job/IJobScheduler;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/job/IJobScheduler$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/job/IJobScheduler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v8

    #@9
    return v8

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v9

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@14
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_0

    #@1d
    .line 54
    sget-object v8, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/app/job/JobInfo;

    #@25
    .line 59
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/job/IJobScheduler$Stub;->schedule(Landroid/app/job/JobInfo;)I

    #@28
    move-result v5

    #@29
    .line 60
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 62
    return v9

    #@30
    .line 57
    .end local v5    # "_result":I
    :cond_0
    const/4 v1, 0x0

    #@31
    .local v1, "_arg0":Landroid/app/job/JobInfo;
    goto :goto_0

    #@32
    .line 66
    .end local v1    # "_arg0":Landroid/app/job/JobInfo;
    :sswitch_2
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@35
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_1

    #@3e
    .line 69
    sget-object v8, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/app/job/JobInfo;

    #@46
    .line 75
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v3

    #@4e
    .line 79
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 80
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/job/IJobScheduler$Stub;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    #@55
    move-result v5

    #@56
    .line 81
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@59
    .line 82
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 83
    return v9

    #@5d
    .line 72
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :cond_1
    const/4 v1, 0x0

    #@5e
    .restart local v1    # "_arg0":Landroid/app/job/JobInfo;
    goto :goto_1

    #@5f
    .line 87
    .end local v1    # "_arg0":Landroid/app/job/JobInfo;
    :sswitch_3
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@62
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/job/IJobScheduler$Stub;->cancel(I)V

    #@6c
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f
    .line 92
    return v9

    #@70
    .line 96
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@73
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 97
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->cancelAll()V

    #@79
    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 99
    return v9

    #@7d
    .line 103
    :sswitch_5
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@80
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 104
    invoke-virtual {p0}, Landroid/app/job/IJobScheduler$Stub;->getAllPendingJobs()Ljava/util/List;

    #@86
    move-result-object v7

    #@87
    .line 105
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 106
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@8d
    .line 107
    return v9

    #@8e
    .line 111
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :sswitch_6
    const-string/jumbo v8, "android.app.job.IJobScheduler"

    #@91
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v0

    #@98
    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/job/IJobScheduler$Stub;->getPendingJob(I)Landroid/app/job/JobInfo;

    #@9b
    move-result-object v6

    #@9c
    .line 115
    .local v6, "_result":Landroid/app/job/JobInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f
    .line 116
    if-eqz v6, :cond_2

    #@a1
    .line 117
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@a4
    .line 118
    invoke-virtual {v6, p3, v9}, Landroid/app/job/JobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a7
    .line 123
    :goto_2
    return v9

    #@a8
    .line 121
    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@ab
    goto :goto_2

    #@ac
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
