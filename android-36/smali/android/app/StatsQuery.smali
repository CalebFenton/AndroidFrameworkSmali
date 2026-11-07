.class public final Landroid/app/StatsQuery;
.super Ljava/lang/Object;
.source "StatsQuery.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatsQuery$Builder;,
        Landroid/app/StatsQuery$SqlDialect;
    }
.end annotation


# static fields
.field public static final whitelist DIALECT_SQLITE:I = 0x1

.field public static final whitelist DIALECT_UNKNOWN:I


# instance fields
.field private final blacklist minClientSqlVersion:I

.field private final blacklist policyConfig:[B

.field private final blacklist rawSql:Ljava/lang/String;

.field private final blacklist sqlDialect:I


# direct methods
.method private constructor blacklist <init>(ILjava/lang/String;I[B)V
    .registers 5
    .param p1, "sqlDialect"    # I
    .param p2, "rawSql"    # Ljava/lang/String;
    .param p3, "minClientSqlVersion"    # I
    .param p4, "policyConfig"    # [B

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/app/StatsQuery;->sqlDialect:I

    .line 61
    iput-object p2, p0, Landroid/app/StatsQuery;->rawSql:Ljava/lang/String;

    .line 62
    iput p3, p0, Landroid/app/StatsQuery;->minClientSqlVersion:I

    .line 63
    iput-object p4, p0, Landroid/app/StatsQuery;->policyConfig:[B

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;I[BLandroid/app/StatsQuery-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatsQuery;-><init>(ILjava/lang/String;I[B)V

    return-void
.end method


# virtual methods
.method public whitelist getMinSqlClientVersion()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/app/StatsQuery;->minClientSqlVersion:I

    return v0
.end method

.method public whitelist getPolicyConfig()[B
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/app/StatsQuery;->policyConfig:[B

    return-object v0
.end method

.method public whitelist getRawSql()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/app/StatsQuery;->rawSql:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSqlDialect()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/app/StatsQuery;->sqlDialect:I

    return v0
.end method
