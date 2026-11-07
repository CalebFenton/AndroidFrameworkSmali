.class public Landroid/media/MediaFrameworkPlatformInitializer;
.super Ljava/lang/Object;
.source "MediaFrameworkPlatformInitializer.java"


# static fields
.field private static volatile blacklist sMediaServiceManager:Landroid/media/MediaServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist getMediaServiceManager()Landroid/media/MediaServiceManager;
    .registers 1

    .line 61
    sget-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/media/session/MediaSessionManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/media/session/MediaSessionManager;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 72
    const-class v0, Landroid/media/session/MediaSessionManager;

    new-instance v1, Landroid/media/MediaFrameworkPlatformInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaFrameworkPlatformInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "media_session"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 77
    return-void
.end method

.method public static blacklist setMediaServiceManager(Landroid/media/MediaServiceManager;)V
    .registers 3
    .param p0, "mediaServiceManager"    # Landroid/media/MediaServiceManager;

    .line 54
    sget-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "setMediaServiceManager called twice!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 56
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaServiceManager;

    sput-object v0, Landroid/media/MediaFrameworkPlatformInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    .line 57
    return-void
.end method
