.class public final Landroid/app/appsearch/StorageInfo;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/StorageInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAliveDocumentsCount:I

.field private blacklist mAliveNamespacesCount:I

.field private blacklist mBlobsCount:I

.field private blacklist mBlobsSizeBytes:J

.field private blacklist mSizeBytes:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/StorageInfoCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/StorageInfoCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/StorageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor blacklist <init>(JIIJI)V
    .registers 8

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/app/appsearch/StorageInfo;->mSizeBytes:J

    .line 5
    .line 6
    iput p3, p0, Landroid/app/appsearch/StorageInfo;->mAliveDocumentsCount:I

    .line 7
    .line 8
    iput p4, p0, Landroid/app/appsearch/StorageInfo;->mAliveNamespacesCount:I

    .line 9
    .line 10
    iput-wide p5, p0, Landroid/app/appsearch/StorageInfo;->mBlobsSizeBytes:J

    .line 11
    .line 12
    iput p7, p0, Landroid/app/appsearch/StorageInfo;->mBlobsCount:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public whitelist getAliveDocumentsCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/StorageInfo;->mAliveDocumentsCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getAliveNamespacesCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/StorageInfo;->mAliveNamespacesCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getBlobsCount()I
    .registers 1

    .line 1
    iget p0, p0, Landroid/app/appsearch/StorageInfo;->mBlobsCount:I

    .line 2
    .line 3
    return p0
.end method

.method public whitelist getBlobsSizeBytes()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/StorageInfo;->mBlobsSizeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist getSizeBytes()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/StorageInfo;->mSizeBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/StorageInfoCreator;->writeToParcel(Landroid/app/appsearch/StorageInfo;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
