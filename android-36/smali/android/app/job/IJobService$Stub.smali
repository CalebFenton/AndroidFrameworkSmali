.class public abstract Landroid/app/job/IJobService$Stub;
.super Landroid/os/Binder;
.source "IJobService.java"

# interfaces
.implements Landroid/app/job/IJobService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.job.IJobService"

.field static final blacklist TRANSACTION_getTransferredDownloadBytes:I = 0x4

.field static final blacklist TRANSACTION_getTransferredUploadBytes:I = 0x5

.field static final blacklist TRANSACTION_onNetworkChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_startJob:I = 0x1

.field static final greylist-max-o TRANSACTION_stopJob:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.app.job.IJobService"

    invoke-virtual {p0, p0, v0}, Landroid/app/job/IJobService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.app.job.IJobService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/job/IJobService;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/app/job/IJobService;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/app/job/IJobService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/job/IJobService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_1a

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string/jumbo v0, "getTransferredUploadBytes"

    return-object v0

    .line 93
    :pswitch_9
    const-string/jumbo v0, "getTransferredDownloadBytes"

    return-object v0

    .line 89
    :pswitch_d
    const-string/jumbo v0, "onNetworkChanged"

    return-object v0

    .line 85
    :pswitch_11
    const-string/jumbo v0, "stopJob"

    return-object v0

    .line 81
    :pswitch_15
    const-string/jumbo v0, "startJob"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 266
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/app/job/IJobService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    const-string v0, "android.app.job.IJobService"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_7a

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_1e
    sget-object v2, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 161
    .local v2, "_arg0":Landroid/app/job/JobParameters;
    sget-object v3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 162
    .local v3, "_arg1":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobService$Stub;->getTransferredUploadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 164
    goto :goto_79

    .line 149
    .end local v2    # "_arg0":Landroid/app/job/JobParameters;
    .end local v3    # "_arg1":Landroid/app/job/JobWorkItem;
    :pswitch_35
    sget-object v2, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 151
    .restart local v2    # "_arg0":Landroid/app/job/JobParameters;
    sget-object v3, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 152
    .restart local v3    # "_arg1":Landroid/app/job/JobWorkItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/app/job/IJobService$Stub;->getTransferredDownloadBytes(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 154
    goto :goto_79

    .line 141
    .end local v2    # "_arg0":Landroid/app/job/JobParameters;
    .end local v3    # "_arg1":Landroid/app/job/JobWorkItem;
    :pswitch_4c
    sget-object v2, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 142
    .restart local v2    # "_arg0":Landroid/app/job/JobParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/job/IJobService$Stub;->onNetworkChanged(Landroid/app/job/JobParameters;)V

    .line 144
    goto :goto_79

    .line 133
    .end local v2    # "_arg0":Landroid/app/job/JobParameters;
    :pswitch_5b
    sget-object v2, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 134
    .restart local v2    # "_arg0":Landroid/app/job/JobParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/app/job/IJobService$Stub;->stopJob(Landroid/app/job/JobParameters;)V

    .line 136
    goto :goto_79

    .line 125
    .end local v2    # "_arg0":Landroid/app/job/JobParameters;
    :pswitch_6a
    sget-object v2, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobParameters;

    .line 126
    .restart local v2    # "_arg0":Landroid/app/job/JobParameters;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/app/job/IJobService$Stub;->startJob(Landroid/app/job/JobParameters;)V

    .line 128
    nop

    .line 171
    .end local v2    # "_arg0":Landroid/app/job/JobParameters;
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_5b
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
