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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field private mFlags:I

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
    .line 359
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
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 382
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@c
    .line 386
    const/4 v1, -0x1

    #@d
    iput v1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@f
    .line 387
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@11
    .line 388
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@13
    .line 389
    iput v2, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@15
    .line 390
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@17
    .line 391
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@19
    .line 392
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@1b
    .line 434
    iput v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@1d
    .line 440
    if-nez p1, :cond_0

    #@1f
    .line 441
    new-instance v1, Ljava/lang/NullPointerException;

    #@21
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@24
    throw v1

    #@25
    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 444
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@2b
    const-string/jumbo v1, "http"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_1

    #@34
    const-string/jumbo v1, "https"

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 447
    :cond_1
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@3f
    .line 439
    return-void

    #@40
    .line 445
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@42
    new-instance v2, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v3, "Can only download HTTP/HTTPS URIs: "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
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
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@c
    .line 386
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@f
    .line 387
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@11
    .line 388
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@13
    .line 389
    iput v1, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@15
    .line 390
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@17
    .line 391
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@19
    .line 392
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@1b
    .line 434
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@1d
    .line 451
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    #@23
    .line 450
    return-void
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 802
    const/4 v3, 0x0

    #@1
    .line 803
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
    .line 804
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
    .line 805
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
    .line 806
    add-int/lit8 v3, v3, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 801
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
    .line 811
    if-eqz p3, :cond_0

    #@2
    .line 812
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 810
    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    if-nez p2, :cond_0

    #@2
    .line 564
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "subPath cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 566
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
    .line 562
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 587
    if-nez p1, :cond_0

    #@2
    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "header cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 590
    :cond_0
    const-string/jumbo v0, ":"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v1, "header may not contain \':\'"

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 593
    :cond_1
    if-nez p2, :cond_2

    #@1f
    .line 594
    const-string/jumbo p2, ""

    #@22
    .line 596
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@24
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    .line 597
    return-object p0
.end method

.method public allowScanningByMediaScanner()V
    .locals 1

    #@0
    .prologue
    .line 574
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    #@3
    .line 573
    return-void
.end method

.method public setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 687
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    #@2
    .line 688
    return-object p0
.end method

.method public setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 709
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    #@2
    .line 710
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allowed"    # Z

    #@0
    .prologue
    .line 698
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    #@2
    .line 699
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 616
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    #@2
    .line 617
    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 510
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 511
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    #@6
    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Failed to get external storage files directory"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 513
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 514
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 515
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
    .line 516
    const-string/jumbo v3, " already exists and is not a directory"

    #@2d
    .line 515
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
    .line 519
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 520
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
    .line 521
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 520
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
    .line 524
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    #@60
    .line 525
    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 545
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    #@6
    .line 546
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v2, "Failed to get external storage public directory"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 547
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 548
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 549
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
    .line 550
    const-string/jumbo v3, " already exists and is not a directory"

    #@2d
    .line 549
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
    .line 553
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 554
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
    .line 555
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    .line 554
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
    .line 558
    :cond_2
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    #@60
    .line 559
    return-object p0
.end method

.method public setDestinationToSystemCache()Landroid/app/DownloadManager$Request;
    .locals 1

    #@0
    .prologue
    .line 486
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@3
    .line 487
    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 468
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@2
    .line 469
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 628
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    #@2
    .line 629
    return-object p0
.end method

.method public setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 669
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    #@2
    .line 670
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "requiresCharging"    # Z

    #@0
    .prologue
    .line 721
    if-eqz p1, :cond_0

    #@2
    .line 722
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@8
    .line 726
    :goto_0
    return-object p0

    #@9
    .line 724
    :cond_0
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@b
    and-int/lit8 v0, v0, -0x2

    #@d
    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@f
    goto :goto_0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "requiresDeviceIdle"    # Z

    #@0
    .prologue
    .line 741
    if-eqz p1, :cond_0

    #@2
    .line 742
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@8
    .line 746
    :goto_0
    return-object p0

    #@9
    .line 744
    :cond_0
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@b
    and-int/lit8 v0, v0, -0x3

    #@d
    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@f
    goto :goto_0
.end method

.method public setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 647
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
    .line 648
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
    .line 607
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 608
    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 756
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@2
    .line 757
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
    .line 764
    new-instance v0, Landroid/content/ContentValues;

    #@5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 765
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
    .line 766
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
    .line 767
    const-string/jumbo v1, "is_public_api"

    #@2a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@31
    .line 768
    const-string/jumbo v1, "notificationpackage"

    #@34
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 770
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 771
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
    .line 772
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
    .line 780
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
    .line 783
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    #@63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@66
    move-result v1

    #@67
    if-nez v1, :cond_3

    #@69
    .line 784
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    #@6c
    .line 787
    :cond_3
    const-string/jumbo v1, "title"

    #@6f
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    #@71
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@74
    .line 788
    const-string/jumbo v1, "description"

    #@77
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    #@79
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@7c
    .line 789
    const-string/jumbo v1, "mimetype"

    #@7f
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    #@81
    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    #@84
    .line 791
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
    .line 792
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
    .line 793
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
    .line 794
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
    .line 795
    const-string/jumbo v1, "flags"

    #@b7
    iget v2, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    #@b9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@c0
    .line 796
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    #@c3
    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    #@c5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@cc
    .line 798
    return-object v0

    #@cd
    .line 774
    :cond_4
    const-string/jumbo v4, "destination"

    #@d0
    .line 775
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    #@d2
    if-eqz v1, :cond_5

    #@d4
    .line 776
    const/4 v1, 0x5

    #@d5
    .line 775
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d8
    move-result-object v1

    #@d9
    .line 774
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@dc
    goto/16 :goto_1

    #@de
    :cond_5
    move v1, v2

    #@df
    .line 777
    goto :goto_2
.end method
