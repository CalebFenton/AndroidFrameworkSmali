.class public final Landroid/app/job/PendingJobReasonsInfo;
.super Ljava/lang/Object;
.source "PendingJobReasonsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/PendingJobReasonsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPendingJobReasons:[I

.field private final blacklist mTimestampMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/app/job/PendingJobReasonsInfo$1;

    invoke-direct {v0}, Landroid/app/job/PendingJobReasonsInfo$1;-><init>()V

    sput-object v0, Landroid/app/job/PendingJobReasonsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(J[I)V
    .registers 4
    .param p1, "timestampMillis"    # J
    .param p3, "reasons"    # [I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Landroid/app/job/PendingJobReasonsInfo;->mTimestampMillis:J

    .line 43
    iput-object p3, p0, Landroid/app/job/PendingJobReasonsInfo;->mPendingJobReasons:[I

    .line 44
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mTimestampMillis:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mPendingJobReasons:[I

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/job/PendingJobReasonsInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/PendingJobReasonsInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPendingJobReasons()[I
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mPendingJobReasons:[I

    return-object v0
.end method

.method public whitelist getTimestampMillis()J
    .registers 3

    .line 51
    iget-wide v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mTimestampMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-wide v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-object v0, p0, Landroid/app/job/PendingJobReasonsInfo;->mPendingJobReasons:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    return-void
.end method
