.class public Landroid/app/blob/BlobStoreManager;
.super Ljava/lang/Object;
.source "BlobStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/blob/BlobStoreManager$Session;
    }
.end annotation


# static fields
.field public static final blacklist COMMIT_RESULT_ERROR:I = 0x1

.field public static final blacklist COMMIT_RESULT_SUCCESS:I = 0x0

.field public static final blacklist INVALID_RES_ID:I = -0x1

.field public static final blacklist MAX_CERTIFICATE_LENGTH:I = 0x20

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xdf


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/blob/IBlobStoreManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/blob/IBlobStoreManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/blob/IBlobStoreManager;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    .line 182
    return-void
.end method

.method static synthetic blacklist lambda$waitForIdle$0(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 574
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public whitelist abandonSession(J)V
    .registers 5
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/blob/IBlobStoreManager;->abandonSession(JLjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catch_d
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 262
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist acquireLease(Landroid/app/blob/BlobHandle;I)V
    .registers 5
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/blob/BlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;IJ)V

    .line 456
    return-void
.end method

.method public whitelist acquireLease(Landroid/app/blob/BlobHandle;IJ)V
    .registers 12
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "descriptionResId"    # I
    .param p3, "leaseExpiryTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_17

    .line 339
    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .local v1, "blobHandle":Landroid/app/blob/BlobHandle;
    .local v2, "descriptionResId":I
    .local v4, "leaseExpiryTimeMillis":J
    :try_start_c
    invoke-interface/range {v0 .. v6}, Landroid/app/blob/IBlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/ParcelableException; {:try_start_c .. :try_end_f} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .line 341
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .line 345
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v2    # "descriptionResId":I
    .end local v4    # "leaseExpiryTimeMillis":J
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_17
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object p1, v0

    .line 346
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v2    # "descriptionResId":I
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 341
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v2    # "descriptionResId":I
    .end local v4    # "leaseExpiryTimeMillis":J
    .local p1, "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "descriptionResId":I
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_21
    move-exception v0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move-object p1, v0

    .line 342
    .end local p2    # "descriptionResId":I
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v2    # "descriptionResId":I
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_26
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 343
    const-class p2, Landroid/os/LimitExceededException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 344
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/blob/BlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;J)V

    .line 506
    return-void
.end method

.method public whitelist acquireLease(Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;J)V
    .registers 12
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .param p2, "description"    # Ljava/lang/CharSequence;
    .param p3, "leaseExpiryTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_17

    .line 402
    const/4 v2, -0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .local v1, "blobHandle":Landroid/app/blob/BlobHandle;
    .local v3, "description":Ljava/lang/CharSequence;
    .local v4, "leaseExpiryTimeMillis":J
    :try_start_c
    invoke-interface/range {v0 .. v6}, Landroid/app/blob/IBlobStoreManager;->acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/ParcelableException; {:try_start_c .. :try_end_f} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 410
    nop

    .line 411
    return-void

    .line 408
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .line 404
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .line 408
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v3    # "description":Ljava/lang/CharSequence;
    .end local v4    # "leaseExpiryTimeMillis":J
    .restart local p1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_17
    move-exception v0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object p1, v0

    .line 409
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v3    # "description":Ljava/lang/CharSequence;
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 404
    .end local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .end local v3    # "description":Ljava/lang/CharSequence;
    .end local v4    # "leaseExpiryTimeMillis":J
    .local p1, "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local p2    # "description":Ljava/lang/CharSequence;
    .restart local p3    # "leaseExpiryTimeMillis":J
    :catch_21
    move-exception v0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object p1, v0

    .line 405
    .end local p2    # "description":Ljava/lang/CharSequence;
    .end local p3    # "leaseExpiryTimeMillis":J
    .restart local v1    # "blobHandle":Landroid/app/blob/BlobHandle;
    .restart local v3    # "description":Ljava/lang/CharSequence;
    .restart local v4    # "leaseExpiryTimeMillis":J
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_26
    const-class p2, Ljava/io/IOException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 406
    const-class p2, Landroid/os/LimitExceededException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 407
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist createSession(Landroid/app/blob/BlobHandle;)J
    .registers 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 220
    :catch_d
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 218
    const-class v1, Landroid/os/LimitExceededException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist deleteBlob(Landroid/app/blob/BlobInfo;)V
    .registers 5
    .param p1, "blobInfo"    # Landroid/app/blob/BlobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/app/blob/IBlobStoreManager;->deleteBlob(J)V
    :try_end_9
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catch_b
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 604
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getLeaseInfo(Landroid/app/blob/BlobHandle;)Landroid/app/blob/LeaseInfo;
    .registers 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 647
    :catch_d
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 644
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 646
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getLeasedBlobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 623
    :catch_d
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 620
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 622
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getRemainingLeaseQuotaBytes()J
    .registers 3

    .line 559
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->getRemainingLeaseQuotaBytes(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 560
    :catch_d
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 287
    :catch_d
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openSession(J)Landroid/app/blob/BlobStoreManager$Session;
    .registers 6
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :try_start_0
    new-instance v0, Landroid/app/blob/BlobStoreManager$Session;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v2, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/blob/IBlobStoreManager;->openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/blob/BlobStoreManager$Session;-><init>(Landroid/app/blob/IBlobStoreSession;Landroid/app/blob/BlobStoreManager-IA;)V
    :try_end_12
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_12} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 242
    :catch_13
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->queryBlobsForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 593
    :catch_b
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 590
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 591
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 592
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist releaseAllLeases()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 538
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreManager;->releaseAllLeases(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catch_d
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist releaseLease(Landroid/app/blob/BlobHandle;)V
    .registers 4
    .param p1, "blobHandle"    # Landroid/app/blob/BlobHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/blob/IBlobStoreManager;->releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_b} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 528
    nop

    .line 529
    return-void

    .line 526
    :catch_d
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 525
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist waitForIdle(J)V
    .registers 7
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 573
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 574
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Landroid/app/blob/BlobStoreManager;->mService:Landroid/app/blob/IBlobStoreManager;

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/app/blob/BlobStoreManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {v1, v2}, Landroid/app/blob/IBlobStoreManager;->waitForIdle(Landroid/os/RemoteCallback;)V

    .line 575
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 582
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    nop

    .line 583
    return-void

    .line 576
    .restart local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_1f
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Timed out waiting for service to become idle"

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/blob/BlobStoreManager;
    .end local p1    # "timeoutMillis":J
    throw v1
    :try_end_27
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_27} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_27

    .line 580
    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local p0    # "this":Landroid/app/blob/BlobStoreManager;
    .restart local p1    # "timeoutMillis":J
    :catch_27
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 578
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/ParcelableException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
