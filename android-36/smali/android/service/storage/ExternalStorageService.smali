.class public abstract Landroid/service/storage/ExternalStorageService;
.super Landroid/app/Service;
.source "ExternalStorageService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;,
        Landroid/service/storage/ExternalStorageService$SessionFlag;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ERROR:Ljava/lang/String; = "android.service.storage.extra.error"

.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.service.storage.extra.package_name"

.field public static final blacklist EXTRA_SESSION_ID:Ljava/lang/String; = "android.service.storage.extra.session_id"

.field public static final whitelist FLAG_SESSION_ATTRIBUTE_INDEXABLE:I = 0x2

.field public static final whitelist FLAG_SESSION_TYPE_FUSE:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.storage.ExternalStorageService"


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/storage/ExternalStorageService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 111
    new-instance v0, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;-><init>(Landroid/service/storage/ExternalStorageService;Landroid/service/storage/ExternalStorageService-IA;)V

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    .line 112
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/storage/ExternalStorageService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist onAnrDelayStarted(Ljava/lang/String;III)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tid"    # I
    .param p4, "reason"    # I

    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onAnrDelayStarted not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Landroid/service/storage/ExternalStorageService;->mWrapper:Landroid/service/storage/ExternalStorageService$ExternalStorageServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onEndSession(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist onFreeCache(Ljava/util/UUID;J)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/util/UUID;
    .param p2, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onFreeCacheRequested not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onStartSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist onVolumeStateChanged(Landroid/os/storage/StorageVolume;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
