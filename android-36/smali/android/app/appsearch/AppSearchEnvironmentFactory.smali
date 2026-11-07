.class public Landroid/app/appsearch/AppSearchEnvironmentFactory;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# static fields
.field private static volatile blacklist mEnvironmentInstance:Landroid/app/appsearch/AppSearchEnvironment;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static blacklist getEnvironmentInstance()Landroid/app/appsearch/AppSearchEnvironment;
    .registers 2

    .line 1
    sget-object v0, Landroid/app/appsearch/AppSearchEnvironmentFactory;->mEnvironmentInstance:Landroid/app/appsearch/AppSearchEnvironment;

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    const-class v1, Landroid/app/appsearch/AppSearchEnvironmentFactory;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_7
    sget-object v0, Landroid/app/appsearch/AppSearchEnvironmentFactory;->mEnvironmentInstance:Landroid/app/appsearch/AppSearchEnvironment;

    .line 9
    .line 10
    if-nez v0, :cond_15

    .line 11
    .line 12
    new-instance v0, Landroid/app/appsearch/FrameworkAppSearchEnvironment;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/app/appsearch/FrameworkAppSearchEnvironment;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/app/appsearch/AppSearchEnvironmentFactory;->mEnvironmentInstance:Landroid/app/appsearch/AppSearchEnvironment;

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    :goto_15
    monitor-exit v1

    .line 23
    return-object v0

    .line 24
    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    .line 25
    throw v0

    .line 26
    :cond_19
    return-object v0
.end method

.method public static blacklist setEnvironmentInstanceForTest(Landroid/app/appsearch/AppSearchEnvironment;)V
    .registers 2

    .line 1
    const-class v0, Landroid/app/appsearch/AppSearchEnvironmentFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sput-object p0, Landroid/app/appsearch/AppSearchEnvironmentFactory;->mEnvironmentInstance:Landroid/app/appsearch/AppSearchEnvironment;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    .line 10
    throw p0
.end method
