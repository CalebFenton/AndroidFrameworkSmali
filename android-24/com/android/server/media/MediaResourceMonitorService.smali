.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SERVICE_NAME:Ljava/lang/String; = "media_resource_monitor"

.field private static final TAG:Ljava/lang/String; = "MediaResourceMonitor"


# instance fields
.field private final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    const-string/jumbo v0, "MediaResourceMonitor"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    #@a
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 44
    new-instance v0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    #@5
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    #@8
    iput-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    #@a
    .line 42
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "media_resource_monitor"

    #@3
    iget-object v1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaResourceMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 48
    return-void
.end method
