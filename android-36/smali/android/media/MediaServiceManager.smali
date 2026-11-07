.class public Landroid/media/MediaServiceManager;
.super Ljava/lang/Object;
.source "MediaServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaServiceManager$ServiceRegisterer;
    }
.end annotation


# static fields
.field private static final blacklist MEDIA_COMMUNICATION_SERVICE:Ljava/lang/String; = "media_communication"

.field private static final blacklist MEDIA_SESSION_SERVICE:Ljava/lang/String; = "media_session"

.field private static final blacklist MEDIA_TRANSCODING_SERVICE:Ljava/lang/String; = "media.transcoding"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMediaCommunicationServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;
    .registers 3

    .line 101
    new-instance v0, Landroid/media/MediaServiceManager$ServiceRegisterer;

    const-string v1, "media_communication"

    invoke-direct {v0, v1}, Landroid/media/MediaServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getMediaSessionServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;
    .registers 3

    .line 85
    new-instance v0, Landroid/media/MediaServiceManager$ServiceRegisterer;

    const-string v1, "media_session"

    invoke-direct {v0, v1}, Landroid/media/MediaServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getMediaTranscodingServiceRegisterer()Landroid/media/MediaServiceManager$ServiceRegisterer;
    .registers 4

    .line 93
    new-instance v0, Landroid/media/MediaServiceManager$ServiceRegisterer;

    const-string v1, "media.transcoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
