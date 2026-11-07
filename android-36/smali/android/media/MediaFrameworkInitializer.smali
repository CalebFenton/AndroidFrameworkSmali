.class public Landroid/media/MediaFrameworkInitializer;
.super Ljava/lang/Object;
.source "MediaFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sMediaServiceManager:Landroid/media/MediaServiceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$7bqC63Q8asdxH6haF7tV8vO2QYs(Landroid/content/Context;)Landroid/media/MediaCommunicationManager;
    .registers 2

    .line 88
    new-instance v0, Landroid/media/MediaCommunicationManager;

    invoke-direct {v0, p0}, Landroid/media/MediaCommunicationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$SUKfm4D8oWYZt4CmFnu2zwSlu9w(Landroid/content/Context;)Landroid/media/MediaTranscodingManager;
    .registers 2

    .line 82
    new-instance v0, Landroid/media/MediaTranscodingManager;

    invoke-direct {v0, p0}, Landroid/media/MediaTranscodingManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMediaServiceManager()Landroid/media/MediaServiceManager;
    .registers 1

    .line 68
    sget-object v0, Landroid/media/MediaFrameworkInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 79
    new-instance v0, Landroid/media/MediaFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/MediaFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "media_transcoding"

    const-class v2, Landroid/media/MediaTranscodingManager;

    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 84
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 85
    new-instance v0, Landroid/media/MediaFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/MediaFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "media_communication"

    const-class v2, Landroid/media/MediaCommunicationManager;

    invoke-static {v1, v2, v0}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    :cond_1e
    return-void
.end method

.method public static blacklist setMediaServiceManager(Landroid/media/MediaServiceManager;)V
    .registers 2

    .line 55
    sget-object v0, Landroid/media/MediaFrameworkInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    if-nez v0, :cond_11

    if-eqz p0, :cond_9

    .line 63
    sput-object p0, Landroid/media/MediaFrameworkInitializer;->sMediaServiceManager:Landroid/media/MediaServiceManager;

    return-void

    .line 60
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "mediaServiceManager is null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setMediaServiceManager called twice!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
