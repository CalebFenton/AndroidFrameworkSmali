.class public final Landroid/app/appsearch/util/LogUtil;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field public static final blacklist DEBUG:Z = false

.field public static final blacklist INFO:Z

.field private static final blacklist PII_TRACE_LEVEL:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/app/appsearch/AppSearchEnvironmentFactory;->getEnvironmentInstance()Landroid/app/appsearch/AppSearchEnvironment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/appsearch/AppSearchEnvironment;->isInfoLoggingEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Landroid/app/appsearch/util/LogUtil;->INFO:Z

    .line 10
    .line 11
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist isPiiTraceEnabled()Z
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static blacklist piiTrace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v0}, Landroid/app/appsearch/util/LogUtil;->piiTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist piiTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0}, Landroid/app/appsearch/util/LogUtil;->piiTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist piiTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    return-void
.end method
