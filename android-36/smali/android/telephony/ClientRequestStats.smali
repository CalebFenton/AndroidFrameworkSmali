.class public final Landroid/telephony/ClientRequestStats;
.super Ljava/lang/Object;
.source "ClientRequestStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o REQUEST_HISTOGRAM_BUCKET_COUNT:I = 0x5


# instance fields
.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCompletedRequestsCount:J

.field private greylist-max-o mCompletedRequestsWakelockTime:J

.field private greylist-max-o mPendingRequestsCount:J

.field private greylist-max-o mPendingRequestsWakelockTime:J

.field private greylist-max-o mRequestHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/telephony/ClientRequestStats$1;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats$1;-><init>()V

    sput-object v0, Landroid/telephony/ClientRequestStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 47
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 48
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 49
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 58
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 47
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 48
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 49
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p0, p1}, Landroid/telephony/ClientRequestStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/ClientRequestStats;)V
    .registers 7
    .param p1, "clientRequestStats"    # Landroid/telephony/ClientRequestStats;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 47
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 48
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 49
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 63
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 64
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 65
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 67
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    .line 69
    .local v2, "entry":Landroid/telephony/TelephonyHistogram;
    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .end local v2    # "entry":Landroid/telephony/TelephonyHistogram;
    goto :goto_3a

    .line 71
    :cond_50
    return-void
.end method


# virtual methods
.method public greylist-max-o addCompletedWakelockTime(J)V
    .registers 5
    .param p1, "completedRequestsWakelockTime"    # J

    .line 86
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 87
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCompletedRequestsCount()J
    .registers 3

    .line 98
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    return-wide v0
.end method

.method public greylist-max-o getCompletedRequestsWakelockTime()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    return-wide v0
.end method

.method public greylist-max-o getPendingRequestsCount()J
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    return-wide v0
.end method

.method public greylist-max-o getPendingRequestsWakelockTime()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    return-wide v0
.end method

.method public greylist-max-o getRequestHistograms()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 116
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 118
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    iget-object v4, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 119
    .local v3, "entry":Landroid/telephony/TelephonyHistogram;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v3    # "entry":Landroid/telephony/TelephonyHistogram;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 121
    .end local v2    # "i":I
    :cond_2b
    monitor-exit v0

    .line 122
    return-object v1

    .line 121
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public greylist-max-o incrementCompletedRequestsCount()V
    .registers 5

    .line 102
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 103
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "requestHistograms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/TelephonyHistogram;>;"
    sget-object v1, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyHistogram;

    .line 162
    .local v2, "h":Landroid/telephony/TelephonyHistogram;
    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    .end local v2    # "h":Landroid/telephony/TelephonyHistogram;
    goto :goto_2c

    .line 164
    :cond_42
    return-void
.end method

.method public greylist-max-o setCallingPackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCallingPackage"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public greylist-max-o setPendingRequestsCount(J)V
    .registers 3
    .param p1, "pendingRequestsCount"    # J

    .line 110
    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 111
    return-void
.end method

.method public greylist-max-o setPendingRequestsWakelockTime(J)V
    .registers 3
    .param p1, "pendingRequestsWakelockTime"    # J

    .line 94
    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 95
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientRequestStats{mCallingPackage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompletedRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompletedRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o updateRequestHistograms(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "time"    # I

    .line 126
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    .line 128
    .local v1, "entry":Landroid/telephony/TelephonyHistogram;
    if-nez v1, :cond_1a

    .line 129
    new-instance v2, Landroid/telephony/TelephonyHistogram;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-direct {v2, v3, p1, v4}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    move-object v1, v2

    .line 131
    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    :cond_1a
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 134
    .end local v1    # "entry":Landroid/telephony/TelephonyHistogram;
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    invoke-virtual {p0}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 174
    return-void
.end method
