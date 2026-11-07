.class Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;
.super Landroid/provider/IAsyncContentProvider$Stub;
.source "CloudMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CloudMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncContentProviderWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/provider/CloudMediaProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/provider/CloudMediaProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1363
    iput-object p1, p0, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;->this$0:Landroid/provider/CloudMediaProvider;

    invoke-direct {p0}, Landroid/provider/IAsyncContentProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/CloudMediaProvider;Landroid/provider/CloudMediaProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;-><init>(Landroid/provider/CloudMediaProvider;)V

    return-void
.end method

.method private blacklist sendResult(Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1379
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_12

    if-eqz p2, :cond_a

    goto :goto_12

    .line 1380
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected ParcelFileDescriptor or an exception."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1382
    :cond_12
    :goto_12
    if-eqz p1, :cond_19

    .line 1383
    const-string v1, "android.provider.extra.file_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1385
    :cond_19
    if-eqz p2, :cond_24

    .line 1386
    const-string v1, "android.provider.extra.error_message"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1389
    return-void
.end method


# virtual methods
.method public blacklist openMedia(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 1368
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;->this$0:Landroid/provider/CloudMediaProvider;

    invoke-virtual {v1, p1, v0, v0}, Landroid/provider/CloudMediaProvider;->onOpenMedia(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1370
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v1, v0, p2}, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;->sendResult(Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    .line 1373
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_f

    .line 1371
    :catch_b
    move-exception v1

    .line 1372
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1, p2}, Landroid/provider/CloudMediaProvider$AsyncContentProviderWrapper;->sendResult(Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;Landroid/os/RemoteCallback;)V

    .line 1374
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f
    return-void
.end method
