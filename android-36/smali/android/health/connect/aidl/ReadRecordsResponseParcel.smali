.class public Landroid/health/connect/aidl/ReadRecordsResponseParcel;
.super Ljava/lang/Object;
.source "ReadRecordsResponseParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/ReadRecordsResponseParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPageToken:J

.field private final blacklist mRecordsParcel:Landroid/health/connect/aidl/RecordsParcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/health/connect/aidl/ReadRecordsResponseParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/ReadRecordsResponseParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/aidl/RecordsParcel;J)V
    .registers 4
    .param p1, "recordsParcel"    # Landroid/health/connect/aidl/RecordsParcel;
    .param p2, "pageToken"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mRecordsParcel:Landroid/health/connect/aidl/RecordsParcel;

    .line 38
    iput-wide p2, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mPageToken:J

    .line 39
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Landroid/health/connect/aidl/RecordsParcel;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/aidl/RecordsParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/aidl/RecordsParcel;

    iput-object v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mRecordsParcel:Landroid/health/connect/aidl/RecordsParcel;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mPageToken:J

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPageToken()J
    .registers 3

    .line 53
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mPageToken:J

    return-wide v0
.end method

.method public blacklist getRecordsParcel()Landroid/health/connect/aidl/RecordsParcel;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mRecordsParcel:Landroid/health/connect/aidl/RecordsParcel;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mRecordsParcel:Landroid/health/connect/aidl/RecordsParcel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-wide v0, p0, Landroid/health/connect/aidl/ReadRecordsResponseParcel;->mPageToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    return-void
.end method
