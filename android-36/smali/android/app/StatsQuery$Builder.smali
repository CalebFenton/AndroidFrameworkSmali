.class public final Landroid/app/StatsQuery$Builder;
.super Ljava/lang/Object;
.source "StatsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist minSqlClientVersion:I

.field private blacklist policyConfig:[B

.field private blacklist rawSql:Ljava/lang/String;

.field private blacklist sqlDialect:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "rawSql"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-eqz p1, :cond_10

    .line 122
    iput-object p1, p0, Landroid/app/StatsQuery$Builder;->rawSql:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/StatsQuery$Builder;->sqlDialect:I

    .line 124
    iput v0, p0, Landroid/app/StatsQuery$Builder;->minSqlClientVersion:I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/StatsQuery$Builder;->policyConfig:[B

    .line 126
    return-void

    .line 120
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawSql must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/StatsQuery;
    .registers 7

    .line 173
    new-instance v0, Landroid/app/StatsQuery;

    iget v1, p0, Landroid/app/StatsQuery$Builder;->sqlDialect:I

    iget-object v2, p0, Landroid/app/StatsQuery$Builder;->rawSql:Ljava/lang/String;

    iget v3, p0, Landroid/app/StatsQuery$Builder;->minSqlClientVersion:I

    iget-object v4, p0, Landroid/app/StatsQuery$Builder;->policyConfig:[B

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/StatsQuery;-><init>(ILjava/lang/String;I[BLandroid/app/StatsQuery-IA;)V

    return-object v0
.end method

.method public whitelist setMinSqlClientVersion(I)Landroid/app/StatsQuery$Builder;
    .registers 4
    .param p1, "minSqlClientVersion"    # I

    .line 146
    if-ltz p1, :cond_5

    .line 150
    iput p1, p0, Landroid/app/StatsQuery$Builder;->minSqlClientVersion:I

    .line 151
    return-object p0

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minSqlClientVersion must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPolicyConfig([B)Landroid/app/StatsQuery$Builder;
    .registers 2
    .param p1, "policyConfig"    # [B

    .line 162
    iput-object p1, p0, Landroid/app/StatsQuery$Builder;->policyConfig:[B

    .line 163
    return-object p0
.end method

.method public whitelist setSqlDialect(I)Landroid/app/StatsQuery$Builder;
    .registers 2
    .param p1, "sqlDialect"    # I

    .line 135
    iput p1, p0, Landroid/app/StatsQuery$Builder;->sqlDialect:I

    .line 136
    return-object p0
.end method
