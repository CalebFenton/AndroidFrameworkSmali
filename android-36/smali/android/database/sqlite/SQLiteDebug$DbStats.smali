.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public final blacklist arePoolStats:Z

.field public final blacklist cacheHits:I

.field public final blacklist cacheMisses:I

.field public final blacklist cacheSize:I

.field public greylist dbName:Ljava/lang/String;

.field public greylist dbSize:J

.field public greylist lookaside:I

.field public greylist pageSize:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;JJIIIIZ)V
    .registers 15
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J
    .param p6, "lookaside"    # I
    .param p7, "hits"    # I
    .param p8, "misses"    # I
    .param p9, "cachesize"    # I
    .param p10, "arePoolStats"    # Z

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 197
    const-wide/16 v0, 0x400

    div-long v2, p4, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 198
    mul-long v2, p2, p4

    div-long/2addr v2, v0

    iput-wide v2, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    .line 199
    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    .line 200
    iput p7, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 201
    iput p8, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    .line 202
    iput p9, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 203
    iput-boolean p10, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    .line 204
    return-void
.end method
