.class Landroid/media/MediaPlayer$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningThread"
.end annotation


# static fields
.field public static final greylist-max-o TIMEOUT_MS:I = 0xea60


# instance fields
.field private greylist-max-o drmLock:Ljava/lang/Object;

.field private greylist-max-o finished:Z

.field private greylist-max-o mediaPlayer:Landroid/media/MediaPlayer;

.field private greylist-max-o onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

.field private greylist-max-o status:I

.field final synthetic blacklist this$0:Landroid/media/MediaPlayer;

.field private greylist-max-o urlStr:Ljava/lang/String;

.field private greylist-max-o uuid:Ljava/util/UUID;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 5616
    iput-object p1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$ProvisioningThread;-><init>(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$ProvisioningThread;
    .registers 7
    .param p1, "request"    # Landroid/media/MediaDrm$ProvisionRequest;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 5634
    invoke-static {p3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmLock(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    .line 5635
    invoke-static {p3}, Landroid/media/MediaPlayer;->-$$Nest$fgetmOnDrmPreparedHandlerDelegate(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    .line 5636
    iput-object p3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 5638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    .line 5639
    iput-object p2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    .line 5641
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    return-object p0
.end method

.method public whitelist test-api run()V
    .registers 11

    .line 5649
    const/4 v0, 0x0

    .line 5650
    .local v0, "response":[B
    const/4 v1, 0x0

    .line 5652
    .local v1, "provisioningSucceeded":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5653
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_8a

    .line 5655
    .local v5, "connection":Ljava/net/HttpURLConnection;
    :try_start_11
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 5657
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 5658
    const v6, 0xea60

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 5659
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 5661
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 5662
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v6

    move-object v0, v6

    .line 5664
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HandleProvisioninig: Thread run: response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5665
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5664
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_58} :catch_5b
    .catchall {:try_start_11 .. :try_end_58} :catchall_59

    goto :goto_80

    .line 5670
    :catchall_59
    move-exception v6

    goto :goto_85

    .line 5666
    :catch_5b
    move-exception v6

    .line 5667
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5c
    iput v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5668
    const-string v7, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HandleProvisioninig: Thread run: connect "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_5c .. :try_end_80} :catchall_59

    .line 5670
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_80
    :try_start_80
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5671
    nop

    .line 5675
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_a5

    .line 5670
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "connection":Ljava/net/HttpURLConnection;
    :goto_85
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5671
    nop

    .end local v0    # "response":[B
    .end local v1    # "provisioningSucceeded":Z
    .end local p0    # "this":Landroid/media/MediaPlayer$ProvisioningThread;
    throw v6
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8a} :catch_8a

    .line 5672
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v0    # "response":[B
    .restart local v1    # "provisioningSucceeded":Z
    .restart local p0    # "this":Landroid/media/MediaPlayer$ProvisioningThread;
    :catch_8a
    move-exception v4

    .line 5673
    .local v4, "e":Ljava/lang/Exception;
    iput v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5674
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: openConnection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_a5
    if-eqz v0, :cond_d5

    .line 5679
    :try_start_a7
    iget-object v4, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-$$Nest$fgetmDrmObj(Landroid/media/MediaPlayer;)Landroid/media/MediaDrm;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 5680
    const-string v4, "MediaPlayer"

    const-string v5, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b7} :catch_b9

    .line 5683
    const/4 v1, 0x1

    .line 5688
    goto :goto_d5

    .line 5684
    :catch_b9
    move-exception v4

    .line 5685
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v5, 0x2

    iput v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5686
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: provideProvisionResponse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d5
    :goto_d5
    const/4 v4, 0x0

    .line 5694
    .local v4, "succeeded":Z
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    const/4 v6, 0x3

    if-eqz v5, :cond_10d

    .line 5696
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5698
    if-eqz v1, :cond_f0

    .line 5699
    :try_start_e0
    iget-object v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v7, v8}, Landroid/media/MediaPlayer;->-$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v7

    move v4, v7

    .line 5700
    if-eqz v4, :cond_ed

    .line 5701
    move v6, v3

    goto :goto_ee

    .line 5702
    :cond_ed
    nop

    :goto_ee
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5704
    :cond_f0
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v3}, Landroid/media/MediaPlayer;->-$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5705
    iget-object v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v6, v3}, Landroid/media/MediaPlayer;->-$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5706
    if-nez v4, :cond_101

    .line 5707
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V

    .line 5709
    :cond_101
    monitor-exit v5
    :try_end_102
    .catchall {:try_start_e0 .. :try_end_102} :catchall_10a

    .line 5712
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->onDrmPreparedHandlerDelegate:Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;

    iget v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer$OnDrmPreparedHandlerDelegate;->notifyClient(I)V

    goto :goto_12f

    .line 5709
    :catchall_10a
    move-exception v2

    :try_start_10b
    monitor-exit v5
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v2

    .line 5716
    :cond_10d
    if-eqz v1, :cond_11e

    .line 5717
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Landroid/media/MediaPlayer$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v5, v7}, Landroid/media/MediaPlayer;->-$$Nest$mresumePrepareDrm(Landroid/media/MediaPlayer;Ljava/util/UUID;)Z

    move-result v4

    .line 5718
    if-eqz v4, :cond_11b

    .line 5719
    move v6, v3

    goto :goto_11c

    .line 5720
    :cond_11b
    nop

    :goto_11c
    iput v6, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    .line 5722
    :cond_11e
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v5, v3}, Landroid/media/MediaPlayer;->-$$Nest$fputmDrmProvisioningInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5723
    iget-object v5, p0, Landroid/media/MediaPlayer$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v5, v3}, Landroid/media/MediaPlayer;->-$$Nest$fputmPrepareDrmInProgress(Landroid/media/MediaPlayer;Z)V

    .line 5724
    if-nez v4, :cond_12f

    .line 5725
    iget-object v3, p0, Landroid/media/MediaPlayer$ProvisioningThread;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-$$Nest$mcleanDrmObj(Landroid/media/MediaPlayer;)V

    .line 5729
    :cond_12f
    :goto_12f
    iput-boolean v2, p0, Landroid/media/MediaPlayer$ProvisioningThread;->finished:Z

    .line 5730
    return-void
.end method

.method public greylist-max-o status()I
    .registers 2

    .line 5628
    iget v0, p0, Landroid/media/MediaPlayer$ProvisioningThread;->status:I

    return v0
.end method
