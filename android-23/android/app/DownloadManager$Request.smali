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
.field static final synthetic -assertionsDisabled:Z

.field public static final NETWORK_BLUETOOTH:I = 0x4

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2

.field private static final SCANNABLE_VALUE_NO:I = 0x2

.field private static final SCANNABLE_VALUE_YES:I = 0x0

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mIsVisibleInDownloadsUi:Z

.field private mMeteredAllowed:Z

.field private mMimeType:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mScannable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;

.field private mUseSystemCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/app/DownloadManager$Request;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    #@b
    .line 345
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 367
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@c
    .line 371
    const/4 v1, -0x1

    #@d
    iput v1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@f
    .line 372
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@11
    .line 373
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@13
    .line 374
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@15
    .line 375
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@17
    .line 376
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@19
    .line 418
    iput v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@1b
    .line 424
    if-nez p1, :cond_0

    #@1d
    .line 425
    new-instance v1, Ljava/lang/NullPointerException;

    #@1f
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@22
    throw v1

    #@23
    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 428
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@29
    const-string/jumbo v1, "http"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-nez v1, :cond_1

    #@32
    const-string/jumbo v1, "https"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_2

    #@3b
    .line 431
    :cond_1
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@3d
    .line 423
    return-void

    #@3e
    .line 429
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Can only download HTTP/HTTPS URIs: "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 367
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@c
    .line 371
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@f
    .line 372
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@11
    .line 373
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@13
    .line 374
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@15
    .line 375
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@17
    .line 376
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@19
    .line 418
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@1b
    .line 435
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@21
    .line 434
    return-void
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 745
    const/4 v3, 0x0

    #@1
    .line 746
    .local v3, "index":I
    iget-object v4, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "header$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/util/Pair;

    #@13
    .line 747
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1a
    check-cast v4, Ljava/lang/String;

    #@1c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, ": "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@29
    check-cast v4, Ljava/lang/String;

    #@2b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 748
    .local v2, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "http_header_"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 749
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 744
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "headerString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 754
    if-eqz p3, :cond_0

    #@2
    .line 755
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 753
    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 547
    if-nez p2, :cond_0

    #@2
    .line 548
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "subPath cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 550
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@15
    .line 546
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    if-nez p1, :cond_0

    #@2
    .line 572
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "header cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 574
    :cond_0
    const-string/jumbo v0, ":"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "header may not contain \':\'"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 577
    :cond_1
    if-nez p2, :cond_2

    #@1f
    .line 578
    const-string/jumbo p2, ""

    #@22
    .line 580
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@24
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 581
    return-object p0
.end method

.method public allowScanningByMediaScanner()V
    .locals 1

    #@0
    .prologue
    .line 558
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@3
    .line 557
    return-void
.end method

.method public setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 667
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@2
    .line 668
    return-object p0
.end method

.method public setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 689
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@2
    .line 690
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allowed"    # Z

    #@0
    .prologue
    .line 678
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@2
    .line 679
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 600
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    #@2
    .line 601
    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 494
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 495
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    #@6
    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Failed to get external storage files directory"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 497
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 498
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 499
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 500
    const-string/jumbo v3, " already exists and is not a directory"

    #@2d
    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 503
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 504
    new-instance v1, Ljava/lang/IllegalStateException;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Unable to create directory: "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 505
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1

    #@5d
    .line 508
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    #@60
    .line 509
    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 528
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 529
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    #@6
    .line 530
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Failed to get external storage public directory"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 531
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 532
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 533
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 534
    const-string/jumbo v3, " already exists and is not a directory"

    #@2d
    .line 533
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 537
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 538
    new-instance v1, Ljava/lang/IllegalStateException;

    #@41
    new-instance v2, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v3, "Unable to create directory: "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 539
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1

    #@5d
    .line 542
    :cond_2
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    #@60
    .line 543
    return-object p0
.end method

.method public setDestinationToSystemCache()Landroid/app/DownloadManager$Request;
    .locals 1

    #@0
    .prologue
    .line 470
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@3
    .line 471
    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 452
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@2
    .line 453
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 612
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    #@2
    .line 613
    return-object p0
.end method

.method public setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 653
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@2
    .line 654
    return-object p0
.end method

.method public setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 631
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    #@6
    move-result-object v0

    #@7
    :goto_0
    return-object v0

    #@8
    .line 632
    :cond_0
    const/4 v0, 0x2

    #@9
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 591
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 592
    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 700
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@2
    .line 701
    return-object p0
.end method

.method toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 708
    new-instance v0, Landroid/content/ContentValues;

    #@5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 709
    .local v0, "values":Landroid/content/ContentValues;
    sget-boolean v1, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    #@a
    if-nez v1, :cond_1

    #@c
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@e
    if-eqz v1, :cond_0

    #@10
    move v1, v4

    #@11
    :goto_0
    if-nez v1, :cond_1

    #@13
    new-instance v1, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v1

    #@19
    :cond_0
    move v1, v3

    #@1a
    goto :goto_0

    #@1b
    .line 710
    :cond_1
    const-string/jumbo v1, "uri"

    #@1e
    iget-object v5, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@20
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 711
    const-string/jumbo v1, "is_public_api"

    #@2a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@31
    .line 712
    const-string/jumbo v1, "notificationpackage"

    #@34
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 714
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 715
    const-string/jumbo v1, "destination"

    #@3e
    const/4 v4, 0x4

    #@3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 716
    const-string/jumbo v1, "hint"

    #@49
    iget-object v4, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@4b
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@52
    .line 724
    :goto_1
    const-string/jumbo v1, "scanned"

    #@55
    iget-boolean v4, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@57
    if-eqz v4, :cond_2

    #@59
    move v2, v3

    #@5a
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@61
    .line 727
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_3

    #@69
    .line 728
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    #@6c
    .line 731
    :cond_3
    const-string/jumbo v1, "title"

    #@6f
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    #@71
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@74
    .line 732
    const-string/jumbo v1, "description"

    #@77
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    #@79
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@7c
    .line 733
    const-string/jumbo v1, "mimetype"

    #@7f
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    #@81
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@84
    .line 735
    const-string/jumbo v1, "visibility"

    #@87
    iget v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@90
    .line 736
    const-string/jumbo v1, "allowed_network_types"

    #@93
    iget v2, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@9c
    .line 737
    const-string/jumbo v1, "allow_roaming"

    #@9f
    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@a1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@a8
    .line 738
    const-string/jumbo v1, "allow_metered"

    #@ab
    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@ad
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b0
    move-result-object v2

    #@b1
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@b4
    .line 739
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    #@b7
    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@b9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@c0
    .line 741
    return-object v0

    #@c1
    .line 718
    :cond_4
    const-string/jumbo v4, "destination"

    #@c4
    .line 719
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@c6
    if-eqz v1, :cond_5

    #@c8
    .line 720
    const/4 v1, 0x5

    #@c9
    .line 719
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc
    move-result-object v1

    #@cd
    .line 718
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@d0
    goto :goto_1

    #@d1
    :cond_5
    move v1, v2

    #@d2
    .line 721
    goto :goto_2
.end method
