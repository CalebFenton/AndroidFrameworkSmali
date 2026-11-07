.class public final Landroid/app/appsearch/ReportSystemUsageRequest;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/ReportSystemUsageRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDatabase:Ljava/lang/String;

.field private final blacklist mDocumentId:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mUsageTimestampMillis:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mDatabase:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mDocumentId:Ljava/lang/String;

    .line 23
    .line 24
    iput-wide p5, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mUsageTimestampMillis:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public whitelist getDatabaseName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mDatabase:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getDocumentId()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mDocumentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getNamespace()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mNamespace:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public whitelist getUsageTimestampMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroid/app/appsearch/ReportSystemUsageRequest;->mUsageTimestampMillis:J

    .line 2
    .line 3
    return-wide v0
.end method
