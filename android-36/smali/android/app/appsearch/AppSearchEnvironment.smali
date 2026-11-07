.class public interface abstract Landroid/app/appsearch/AppSearchEnvironment;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchEnvironment$EnvironmentType;
    }
.end annotation


# static fields
.field public static final blacklist FRAMEWORK_ENVIRONMENT:I = 0x2

.field public static final blacklist JETPACK_ENVIRONMENT:I = 0x1

.field public static final blacklist PLAY_SERVICES_ENVIRONMENT:I = 0x3


# virtual methods
.method public abstract blacklist createCachedThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract blacklist createContextAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
.end method

.method public abstract blacklist createExecutorService(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;I)Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;I)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation
.end method

.method public abstract blacklist createSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract blacklist getAppSearchDir(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/io/File;
.end method

.method public abstract blacklist getCacheDir(Landroid/content/Context;)Ljava/io/File;
.end method

.method public abstract blacklist getEnvironment()I
.end method

.method public abstract blacklist isInfoLoggingEnabled()Z
.end method
