.class Landroid/media/MediaTranscodingManager$1;
.super Landroid/media/ITranscodingClientCallback$Stub;
.source "MediaTranscodingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaTranscodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaTranscodingManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaTranscodingManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 326
    iput-object p1, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    invoke-direct {p0}, Landroid/media/ITranscodingClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAwaitNumberOfSessionsChanged(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onProgressUpdate(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    invoke-static {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->-$$Nest$mhandleTranscodingProgressUpdate(Landroid/media/MediaTranscodingManager;II)V

    return-void
.end method

.method public blacklist onTranscodingFailed(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    invoke-static {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->-$$Nest$mhandleTranscodingFailed(Landroid/media/MediaTranscodingManager;II)V

    return-void
.end method

.method public blacklist onTranscodingFinished(ILandroid/media/TranscodingResultParcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    invoke-static {p0, p1, p2}, Landroid/media/MediaTranscodingManager;->-$$Nest$mhandleTranscodingFinished(Landroid/media/MediaTranscodingManager;ILandroid/media/TranscodingResultParcel;)V

    return-void
.end method

.method public blacklist onTranscodingPaused(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/media/MediaTranscodingManager;->-$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager;II)V

    return-void
.end method

.method public blacklist onTranscodingResumed(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/media/MediaTranscodingManager;->-$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager;II)V

    return-void
.end method

.method public blacklist onTranscodingStarted(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/media/MediaTranscodingManager;->-$$Nest$mupdateStatus(Landroid/media/MediaTranscodingManager;II)V

    return-void
.end method

.method public blacklist openFileDescriptor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MediaTranscodingManager"

    if-nez v0, :cond_30

    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupport mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 336
    :cond_30
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 338
    :try_start_34
    iget-object p0, p0, Landroid/media/MediaTranscodingManager$1;->this$0:Landroid/media/MediaTranscodingManager;

    invoke-static {p0}, Landroid/media/MediaTranscodingManager;->-$$Nest$fgetmContentResolver(Landroid/media/MediaTranscodingManager;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_89

    .line 341
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_44} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_44} :catch_47
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    goto :goto_4b

    :catch_47
    move-exception p0

    goto :goto_60

    :catch_49
    move-exception p0

    goto :goto_75

    .line 348
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown content uri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 346
    :goto_60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot open content uri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    .line 344
    :goto_75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find content uri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_89
    :goto_89
    return-object v1
.end method
