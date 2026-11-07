.class public final Landroid/app/appsearch/ReportSystemUsageRequest$Builder;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/ReportSystemUsageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDatabase:Ljava/lang/String;

.field private final blacklist mDocumentId:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUsageTimestampMillis:Ljava/lang/Long;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mDatabase:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object p4, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mDocumentId:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/appsearch/ReportSystemUsageRequest;
    .registers 9

    .line 1
    iget-object v0, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mUsageTimestampMillis:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mUsageTimestampMillis:Ljava/lang/Long;

    .line 14
    .line 15
    :cond_e
    new-instance v1, Landroid/app/appsearch/ReportSystemUsageRequest;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mDatabase:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mNamespace:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mDocumentId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mUsageTimestampMillis:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-direct/range {v1 .. v7}, Landroid/app/appsearch/ReportSystemUsageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public whitelist setUsageTimestampMillis(J)Landroid/app/appsearch/ReportSystemUsageRequest$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroid/app/appsearch/ReportSystemUsageRequest$Builder;->mUsageTimestampMillis:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method
