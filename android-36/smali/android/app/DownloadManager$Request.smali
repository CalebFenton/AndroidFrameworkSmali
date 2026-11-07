.class public Landroid/app/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o NETWORK_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NETWORK_MOBILE:I = 0x1

.field public static final whitelist NETWORK_WIFI:I = 0x2

.field private static final greylist-max-o SCANNABLE_VALUE_NO:I = 0x2

.field private static final greylist-max-o SCANNABLE_VALUE_YES:I = 0x0

.field public static final whitelist VISIBILITY_HIDDEN:I = 0x2

.field public static final whitelist VISIBILITY_VISIBLE:I = 0x0

.field public static final whitelist VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final whitelist VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3


# instance fields
.field private greylist-max-o mAllowedNetworkTypes:I

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDestinationUri:Landroid/net/Uri;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mIsVisibleInDownloadsUi:Z

.field private greylist-max-o mMeteredAllowed:Z

.field private greylist-max-o mMimeType:Ljava/lang/String;

.field private greylist-max-o mNotificationVisibility:I

.field private greylist-max-o mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoamingAllowed:Z

.field private greylist-max-o mScannable:Z

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private greylist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 382
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 412
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 413
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 414
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 415
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 457
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 463
    if-eqz p1, :cond_51

    .line 466
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_38

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 470
    :cond_35
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 471
    return-void

    .line 468
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "uriString"    # Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 412
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 413
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 414
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 415
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 457
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 474
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 475
    return-void
.end method

.method private greylist-max-o encodeHttpHeaders(Landroid/content/ContentValues;)V
    .registers 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "index":I
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 857
    .local v2, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http_header_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    nop

    .end local v2    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "headerString":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 860
    goto :goto_7

    .line 861
    :cond_4d
    return-void
.end method

.method private greylist-max-o putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 864
    if-eqz p3, :cond_9

    .line 865
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_9
    return-void
.end method

.method private greylist-max-o setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 601
    if-eqz p2, :cond_d

    .line 604
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 605
    return-void

    .line 602
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subPath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 5
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 630
    if-eqz p1, :cond_21

    .line 633
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 636
    if-nez p2, :cond_e

    .line 637
    const-string p2, ""

    .line 639
    :cond_e
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    return-object p0

    .line 634
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist allowScanningByMediaScanner()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 618
    return-void
.end method

.method public whitelist setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "flags"    # I

    .line 730
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 731
    return-object p0
.end method

.method public whitelist setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "allow"    # Z

    .line 752
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 753
    return-object p0
.end method

.method public whitelist setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "allowed"    # Z

    .line 741
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 742
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 659
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 660
    return-object p0
.end method

.method public whitelist setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    .line 527
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 528
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_57

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 531
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 532
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists and is not a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 541
    :goto_36
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    return-object p0

    .line 537
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get external storage files directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 10
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .line 567
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 568
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_b5

    .line 572
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    .line 573
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    const-string v4, "Unable to create directory: "

    if-ge v2, v3, :cond_69

    .line 574
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_69

    .line 586
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_89

    .line 588
    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists and is not a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 591
    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_89

    .line 592
    :cond_4e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 593
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 575
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "downloads"

    .line 576
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_99

    .line 577
    .local v2, "client":Landroid/content/ContentProviderClient;
    :try_start_73
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "dir_type"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v5, "create_external_public_dir"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_8d

    .line 580
    .end local v3    # "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_88

    :try_start_85
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_99

    .line 584
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    :cond_88
    nop

    .line 596
    :goto_89
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    return-object p0

    .line 575
    .restart local v2    # "client":Landroid/content/ContentProviderClient;
    :catchall_8d
    move-exception v3

    if-eqz v2, :cond_98

    :try_start_90
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v5

    :try_start_95
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "this":Landroid/app/DownloadManager$Request;
    .end local p1    # "dirType":Ljava/lang/String;
    .end local p2    # "subPath":Ljava/lang/String;
    :cond_98
    :goto_98
    throw v3
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_99} :catch_99

    .line 580
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local p0    # "this":Landroid/app/DownloadManager$Request;
    .restart local p1    # "dirType":Ljava/lang/String;
    .restart local p2    # "subPath":Ljava/lang/String;
    :catch_99
    move-exception v2

    .line 581
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 582
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 569
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get external storage public directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 503
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 504
    return-object p0
.end method

.method public whitelist setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 671
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 672
    return-object p0
.end method

.method public whitelist setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "visibility"    # I

    .line 712
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 713
    return-object p0
.end method

.method public whitelist setRequiresCharging(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "requiresCharging"    # Z

    .line 764
    if-eqz p1, :cond_9

    .line 765
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_f

    .line 767
    :cond_9
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 769
    :goto_f
    return-object p0
.end method

.method public whitelist setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "requiresDeviceIdle"    # Z

    .line 784
    if-eqz p1, :cond_9

    .line 785
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_f

    .line 787
    :cond_9
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 789
    :goto_f
    return-object p0
.end method

.method public whitelist setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .registers 3
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    goto :goto_d

    .line 691
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 690
    :goto_d
    return-object v0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 650
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 651
    return-object p0
.end method

.method public whitelist setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .registers 2
    .param p1, "isVisible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 810
    return-object p0
.end method

.method greylist-max-o toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 817
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 818
    .local v0, "values":Landroid/content/ContentValues;
    nop

    .line 819
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "is_public_api"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 821
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    const/4 v2, 0x2

    const-string v3, "destination"

    if-eqz v1, :cond_40

    .line 824
    nop

    .line 825
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 824
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 827
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 826
    const-string/jumbo v3, "hint"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 829
    :cond_40
    nop

    .line 830
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 829
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    :goto_48
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    if-eqz v1, :cond_4e

    const/4 v2, 0x0

    goto :goto_4f

    .line 834
    :cond_4e
    nop

    .line 833
    :goto_4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "scanned"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 837
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 840
    :cond_64
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    const-string v1, "description"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 842
    const-string/jumbo v1, "mimetype"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 844
    iget v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    iget v1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allowed_network_types"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "allow_roaming"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 847
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "allow_metered"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 848
    iget v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "is_visible_in_downloads_ui"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 851
    return-object v0
.end method
