.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;,
        Landroid/os/DropBoxManager$Flags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final whitelist EXTRA_DROPPED_COUNT:Ljava/lang/String; = "android.os.extra.DROPPED_COUNT"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final greylist-max-o HAS_BYTE_ARRAY:I = 0x8

.field public static final whitelist IS_EMPTY:I = 0x1

.field public static final whitelist IS_GZIPPED:I = 0x4

.field public static final whitelist IS_TEXT:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor whitelist <init>()V
    .registers 2

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 311
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 312
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/os/IDropBoxManagerService;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 301
    iput-object p2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist addData(Ljava/lang/String;[BI)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    .line 334
    if-eqz p2, :cond_27

    .line 336
    :try_start_2
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addData(Ljava/lang/String;[BI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 344
    nop

    .line 345
    return-void

    .line 337
    :catch_9
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 339
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_22

    .line 340
    const-string v1, "DropBoxManager"

    const-string v2, "App sent too much data, so it was ignored"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    return-void

    .line 343
    :cond_22
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addFile(Ljava/lang/String;Ljava/io/File;I)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    if-eqz p2, :cond_26

    .line 359
    const/high16 v0, 0x10000000

    :try_start_4
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_20

    .line 361
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_14

    .line 362
    if-eqz v0, :cond_12

    :try_start_f
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_20

    .line 364
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_12
    nop

    .line 365
    return-void

    .line 359
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    :try_start_1c
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/os/DropBoxManager;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "flags":I
    :cond_1f
    :goto_1f
    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_20

    .line 362
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/os/DropBoxManager;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "flags":I
    :catch_20
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 323
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 324
    return-void
.end method

.method public whitelist getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msec"    # J

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_1b

    .line 396
    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msec":J
    .local v1, "tag":Ljava/lang/String;
    .local v2, "msec":J
    :try_start_10
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_14} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    .line 405
    :catch_15
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    .line 398
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .line 405
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "msec":J
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "msec":J
    :catch_1b
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object p1, v0

    .line 406
    .end local p2    # "msec":J
    .restart local v1    # "tag":Ljava/lang/String;
    .restart local v2    # "msec":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 398
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "msec":J
    .local p1, "tag":Ljava/lang/String;
    .restart local p2    # "msec":J
    :catch_24
    move-exception v0

    move-object v1, p1

    move-wide v2, p2

    move-object p1, v0

    .line 399
    .end local p2    # "msec":J
    .restart local v1    # "tag":Ljava/lang/String;
    .restart local v2    # "msec":J
    .local p1, "e":Ljava/lang/SecurityException;
    :goto_28
    iget-object p2, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1c

    if-ge p2, p3, :cond_3f

    .line 402
    const-string p2, "DropBoxManager"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 p2, 0x0

    return-object p2

    .line 400
    :cond_3f
    throw p1
.end method

.method public whitelist isTagEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 378
    :catch_7
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
