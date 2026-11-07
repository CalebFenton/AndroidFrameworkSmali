.class public final Landroid/app/appsearch/StorageInfo$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/StorageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAliveDocumentsCount:I

.field private blacklist mAliveNamespacesCount:I

.field private blacklist mBlobsCount:I

.field private blacklist mBlobsSizeBytes:J

.field private blacklist mSizeBytes:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/StorageInfo;
    .registers 9

    .line 1
    new-instance v0, Landroid/app/appsearch/StorageInfo;

    .line 2
    .line 3
    iget-wide v1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mSizeBytes:J

    .line 4
    .line 5
    iget v3, p0, Landroid/app/appsearch/StorageInfo$Builder;->mAliveDocumentsCount:I

    .line 6
    .line 7
    iget v4, p0, Landroid/app/appsearch/StorageInfo$Builder;->mAliveNamespacesCount:I

    .line 8
    .line 9
    iget-wide v5, p0, Landroid/app/appsearch/StorageInfo$Builder;->mBlobsSizeBytes:J

    .line 10
    .line 11
    iget v7, p0, Landroid/app/appsearch/StorageInfo$Builder;->mBlobsCount:I

    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Landroid/app/appsearch/StorageInfo;-><init>(JIIJI)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public whitelist setAliveDocumentsCount(I)Landroid/app/appsearch/StorageInfo$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mAliveDocumentsCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist setAliveNamespacesCount(I)Landroid/app/appsearch/StorageInfo$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mAliveNamespacesCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist setBlobsCount(I)Landroid/app/appsearch/StorageInfo$Builder;
    .registers 2

    .line 1
    iput p1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mBlobsCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist setBlobsSizeBytes(J)Landroid/app/appsearch/StorageInfo$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mBlobsSizeBytes:J

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist setSizeBytes(J)Landroid/app/appsearch/StorageInfo$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Landroid/app/appsearch/StorageInfo$Builder;->mSizeBytes:J

    .line 2
    .line 3
    return-object p0
.end method
