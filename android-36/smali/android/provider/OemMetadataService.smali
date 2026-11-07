.class public abstract Landroid/provider/OemMetadataService;
.super Landroid/app/Service;
.source "OemMetadataService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BIND_OEM_METADATA_SERVICE_PERMISSION:Ljava/lang/String; = "com.android.providers.media.permission.BIND_OEM_METADATA_SERVICE"

.field public static final blacklist EXTRA_OEM_DATA_KEYS:Ljava/lang/String; = "android.provider.extra.OEM_DATA_KEYS"

.field public static final blacklist EXTRA_OEM_DATA_VALUES:Ljava/lang/String; = "android.provider.extra.OEM_DATA_VALUES"

.field public static final blacklist EXTRA_OEM_SUPPORTED_MIME_TYPES:Ljava/lang/String; = "android.provider.extra.OEM_SUPPORTED_MIME_TYPES"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.provider.OemMetadataService"

.field private static final blacklist TAG:Ljava/lang/String; = "OemMetadataService"


# instance fields
.field private final blacklist mInterface:Landroid/provider/IOemMetadataService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    new-instance v0, Landroid/provider/OemMetadataService$1;

    invoke-direct {v0, p0}, Landroid/provider/OemMetadataService$1;-><init>(Landroid/provider/OemMetadataService;)V

    iput-object v0, p0, Landroid/provider/OemMetadataService;->mInterface:Landroid/provider/IOemMetadataService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 107
    const-string v0, "android.provider.OemMetadataService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemMetadataService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_2a
    iget-object v0, p0, Landroid/provider/OemMetadataService;->mInterface:Landroid/provider/IOemMetadataService;

    invoke-interface {v0}, Landroid/provider/IOemMetadataService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetOemCustomData(Landroid/os/ParcelFileDescriptor;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onGetSupportedMimeTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
