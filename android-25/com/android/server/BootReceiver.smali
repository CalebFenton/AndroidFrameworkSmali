.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LAST_HEADER_FILE:Ljava/lang/String; = "last-header.txt"

.field private static final LOG_FILES_FILE:Ljava/lang/String; = "log-files.xml"

.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

.field private static final lastHeaderFile:Ljava/io/File;

.field private static final sFile:Landroid/util/AtomicFile;

.field private static sTombstoneObserver:Landroid/os/FileObserver;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@2
    return v0
.end method

.method static synthetic -get1()Ljava/io/File;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0()Ljava/util/HashMap;
    .locals 1

    #@0
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "timestamps"    # Ljava/util/HashMap;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/BootReceiver;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "timestamps"    # Ljava/util/HashMap;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 64
    const-string/jumbo v0, "ro.debuggable"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const v0, 0x18000

    #@e
    .line 63
    :goto_0
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@10
    .line 66
    new-instance v0, Ljava/io/File;

    #@12
    const-string/jumbo v1, "/data/tombstones"

    #@15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@18
    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@1a
    .line 77
    const/4 v0, 0x0

    #@1b
    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1d
    .line 80
    new-instance v0, Landroid/util/AtomicFile;

    #@1f
    new-instance v1, Ljava/io/File;

    #@21
    .line 81
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "log-files.xml"

    #@28
    .line 80
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2e
    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@30
    .line 83
    new-instance v0, Ljava/io/File;

    #@32
    .line 84
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, "last-header.txt"

    #@39
    .line 83
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3c
    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    #@3e
    .line 58
    return-void

    #@3f
    .line 64
    :cond_0
    const/high16 v0, 0x10000

    #@41
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    #@2
    .line 271
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 272
    const-string/jumbo v6, "BootReceiver"

    #@d
    const-string/jumbo v7, "Copying audit failures to DropBox"

    #@10
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 274
    new-instance v0, Ljava/io/File;

    #@15
    const-string/jumbo v6, "/proc/last_kmsg"

    #@18
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    .line 275
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@1e
    move-result-wide v2

    #@1f
    .line 276
    .local v2, "fileTime":J
    cmp-long v6, v2, v8

    #@21
    if-gtz v6, :cond_0

    #@23
    .line 277
    new-instance v0, Ljava/io/File;

    #@25
    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v6, "/sys/fs/pstore/console-ramoops"

    #@28
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2b
    .line 278
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@2e
    move-result-wide v2

    #@2f
    .line 281
    :cond_0
    cmp-long v6, v2, v8

    #@31
    if-gtz v6, :cond_2

    #@33
    return-void

    #@34
    .line 271
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileTime":J
    :cond_1
    return-void

    #@35
    .line 283
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fileTime":J
    :cond_2
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_3

    #@3b
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/lang/Long;

    #@41
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@44
    move-result-wide v6

    #@45
    cmp-long v6, v6, v2

    #@47
    if-nez v6, :cond_3

    #@49
    .line 284
    return-void

    #@4a
    .line 287
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {p1, p4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 289
    const-string/jumbo v6, "[[TRUNCATED]]\n"

    #@54
    invoke-static {v0, p3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 290
    .local v4, "log":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 291
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\n"

    #@60
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    const/4 v6, 0x0

    #@65
    array-length v8, v7

    #@66
    :goto_0
    if-ge v6, v8, :cond_5

    #@68
    aget-object v1, v7, v6

    #@6a
    .line 292
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v9, "audit"

    #@6d
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@70
    move-result v9

    #@71
    if-eqz v9, :cond_4

    #@73
    .line 293
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    const-string/jumbo v10, "\n"

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 291
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 296
    .end local v1    # "line":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "BootReceiver"

    #@83
    new-instance v7, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v8, "Copied "

    #@8b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@96
    move-result v8

    #@97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    const-string/jumbo v8, " worth of audits to DropBox"

    #@9e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a9
    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v6

    #@b2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {p0, p4, v6}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@c1
    .line 270
    return-void
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v3, ""

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v4, p3

    #@7
    move v5, p4

    #@8
    move-object v6, p5

    #@9
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@c
    .line 243
    return-void
.end method

.method private static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 253
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    .line 254
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@10
    move-result-wide v2

    #@11
    .line 255
    .local v2, "fileTime":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-gtz v1, :cond_1

    #@17
    return-void

    #@18
    .line 251
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileTime":J
    :cond_0
    return-void

    #@19
    .line 257
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fileTime":J
    :cond_1
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Long;

    #@25
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@28
    move-result-wide v4

    #@29
    cmp-long v1, v4, v2

    #@2b
    if-nez v1, :cond_2

    #@2d
    .line 258
    return-void

    #@2e
    .line 261
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 263
    const-string/jumbo v1, "BootReceiver"

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v5, "Copying "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    const-string/jumbo v5, " to DropBox ("

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, ")"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    const-string/jumbo v4, "[[TRUNCATED]]\n"

    #@6d
    invoke-static {v0, p5, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {p0, p6, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@80
    .line 250
    return-void
.end method

.method private static addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v14, 0x0

    #@1
    .line 304
    .local v14, "upload_needed":Z
    if-eqz p0, :cond_0

    #@3
    move-object/from16 v0, p4

    #@5
    invoke-virtual {p0, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 305
    const-string/jumbo v2, "BootReceiver"

    #@e
    const-string/jumbo v3, "Checking for fsck errors"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 307
    new-instance v8, Ljava/io/File;

    #@16
    const-string/jumbo v2, "/dev/fscklogs/log"

    #@19
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    .line 308
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    #@1f
    move-result-wide v10

    #@20
    .line 309
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    #@22
    cmp-long v2, v10, v2

    #@24
    if-gtz v2, :cond_1

    #@26
    return-void

    #@27
    .line 304
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileTime":J
    :cond_0
    return-void

    #@28
    .line 311
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fileTime":J
    :cond_1
    const-string/jumbo v2, "[[TRUNCATED]]\n"

    #@2b
    move/from16 v0, p3

    #@2d
    invoke-static {v8, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v12

    #@31
    .line 312
    .local v12, "log":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    .line 313
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "\n"

    #@39
    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    const/4 v2, 0x0

    #@3e
    array-length v4, v3

    #@3f
    :goto_0
    if-ge v2, v4, :cond_2

    #@41
    aget-object v9, v3, v2

    #@43
    .line 314
    .local v9, "line":Ljava/lang/String;
    const-string/jumbo v5, "FILE SYSTEM WAS MODIFIED"

    #@46
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 315
    const/4 v14, 0x1

    #@4d
    .line 320
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_3

    #@4f
    .line 321
    const-string/jumbo v5, "/dev/fscklogs/log"

    #@52
    move-object v2, p0

    #@53
    move-object/from16 v3, p1

    #@55
    move-object/from16 v4, p2

    #@57
    move/from16 v6, p3

    #@59
    move-object/from16 v7, p4

    #@5b
    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@5e
    .line 325
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    #@61
    .line 302
    return-void

    #@62
    .line 313
    .restart local v9    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_0
.end method

.method private getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->getPreviousBootHeaders()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 144
    .local v2, "oldHeaders":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/BootReceiver;->getCurrentBootHeaders()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 147
    .local v1, "newHeaders":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    #@a
    invoke-static {v3, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 152
    :goto_0
    if-nez v2, :cond_0

    #@f
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "isPrevious: false\n"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    return-object v3

    #@24
    .line 148
    :catch_0
    move-exception v0

    #@25
    .line 149
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BootReceiver"

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Error writing "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    sget-object v5, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    goto :goto_0

    #@42
    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "isPrevious: true\n"

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    return-object v3
.end method

.method private getCurrentBootHeaders()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x200

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 130
    const-string/jumbo v1, "Build: "

    #@a
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    .line 130
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@10
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 130
    const-string/jumbo v1, "\n"

    #@17
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 131
    const-string/jumbo v1, "Hardware: "

    #@1e
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 131
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@24
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 131
    const-string/jumbo v1, "\n"

    #@2b
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 132
    const-string/jumbo v1, "Revision: "

    #@32
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 133
    const-string/jumbo v1, "ro.revision"

    #@39
    const-string/jumbo v2, ""

    #@3c
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 133
    const-string/jumbo v1, "\n"

    #@47
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 134
    const-string/jumbo v1, "Bootloader: "

    #@4e
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 134
    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    #@54
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 134
    const-string/jumbo v1, "\n"

    #@5b
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    .line 135
    const-string/jumbo v1, "Radio: "

    #@62
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    .line 135
    sget-object v1, Landroid/os/Build;->RADIO:Ljava/lang/String;

    #@68
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    .line 135
    const-string/jumbo v1, "\n"

    #@6f
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    .line 136
    const-string/jumbo v1, "Kernel: "

    #@76
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 137
    new-instance v1, Ljava/io/File;

    #@7c
    const-string/jumbo v2, "/proc/version"

    #@7f
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@82
    const-string/jumbo v2, "...\n"

    #@85
    const/16 v3, 0x400

    #@87
    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 138
    const-string/jumbo v1, "\n"

    #@92
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    return-object v0
.end method

.method private getPreviousBootHeaders()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 121
    :try_start_0
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 122
    :catch_0
    move-exception v0

    #@b
    .line 123
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BootReceiver"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Error reading "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 124
    return-object v4
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    const-string/jumbo v6, "dropbox"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/os/DropBoxManager;

    #@b
    .line 163
    .local v2, "db":Landroid/os/DropBoxManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 164
    .local v4, "headers":Ljava/lang/String;
    const-string/jumbo v6, "ro.boot.bootreason"

    #@12
    const/4 v7, 0x0

    #@13
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v12

    #@17
    .line 166
    .local v12, "bootReason":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    #@1a
    move-result-object v15

    #@1b
    .line 167
    .local v15, "recovery":Ljava/lang/String;
    if-eqz v15, :cond_0

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 168
    const-string/jumbo v6, "SYSTEM_RECOVERY_LOG"

    #@22
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v2, v6, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 171
    :cond_0
    const-string/jumbo v5, ""

    #@39
    .line 172
    .local v5, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v12, :cond_1

    #@3b
    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    const/16 v7, 0x200

    #@3f
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@42
    .line 174
    const-string/jumbo v7, "\n"

    #@45
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 175
    const-string/jumbo v7, "Boot info:\n"

    #@4c
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    .line 176
    const-string/jumbo v7, "Last boot reason: "

    #@53
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    .line 176
    const-string/jumbo v7, "\n"

    #@5e
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 180
    :cond_1
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    #@69
    move-result-object v3

    #@6a
    .line 182
    .local v3, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@6d
    const-wide/16 v8, 0x0

    #@6f
    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@72
    move-result-wide v6

    #@73
    const-wide/16 v8, 0x0

    #@75
    cmp-long v6, v6, v8

    #@77
    if-nez v6, :cond_6

    #@79
    .line 183
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_5

    #@7f
    .line 191
    :goto_0
    if-eqz v2, :cond_2

    #@81
    const-string/jumbo v6, "SYSTEM_BOOT"

    #@84
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@87
    .line 195
    :cond_2
    const-string/jumbo v6, "/proc/last_kmsg"

    #@8a
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@8c
    neg-int v7, v7

    #@8d
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@90
    .line 194
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@93
    .line 197
    const-string/jumbo v6, "/sys/fs/pstore/console-ramoops"

    #@96
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@98
    neg-int v7, v7

    #@99
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@9c
    .line 196
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@9f
    .line 198
    const-string/jumbo v9, "/cache/recovery/log"

    #@a2
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@a4
    neg-int v10, v6

    #@a5
    .line 199
    const-string/jumbo v11, "SYSTEM_RECOVERY_LOG"

    #@a8
    move-object v6, v2

    #@a9
    move-object v7, v3

    #@aa
    move-object v8, v4

    #@ab
    .line 198
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@ae
    .line 200
    const-string/jumbo v9, "/cache/recovery/last_kmsg"

    #@b1
    .line 201
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@b3
    neg-int v10, v6

    #@b4
    const-string/jumbo v11, "SYSTEM_RECOVERY_KMSG"

    #@b7
    move-object v6, v2

    #@b8
    move-object v7, v3

    #@b9
    move-object v8, v4

    #@ba
    .line 200
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@bd
    .line 202
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@bf
    neg-int v6, v6

    #@c0
    const-string/jumbo v7, "SYSTEM_AUDIT"

    #@c3
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    #@c6
    .line 203
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@c8
    neg-int v6, v6

    #@c9
    const-string/jumbo v7, "SYSTEM_FSCK"

    #@cc
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    #@cf
    .line 209
    :cond_3
    :goto_1
    sget-object v6, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@d1
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@d4
    move-result-object v16

    #@d5
    .line 210
    .local v16, "tombstoneFiles":[Ljava/io/File;
    const/4 v13, 0x0

    #@d6
    .local v13, "i":I
    :goto_2
    if-eqz v16, :cond_7

    #@d8
    move-object/from16 v0, v16

    #@da
    array-length v6, v0

    #@db
    if-ge v13, v6, :cond_7

    #@dd
    .line 211
    aget-object v6, v16, v13

    #@df
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    #@e2
    move-result v6

    #@e3
    if-eqz v6, :cond_4

    #@e5
    .line 212
    aget-object v6, v16, v13

    #@e7
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    .line 213
    sget v10, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@ed
    const-string/jumbo v11, "SYSTEM_TOMBSTONE"

    #@f0
    move-object v6, v2

    #@f1
    move-object v7, v3

    #@f2
    move-object v8, v4

    #@f3
    .line 212
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@f6
    .line 210
    :cond_4
    add-int/lit8 v13, v13, 0x1

    #@f8
    goto :goto_2

    #@f9
    .line 188
    .end local v13    # "i":I
    .end local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@fc
    move-result-wide v6

    #@fd
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@100
    move-result-object v14

    #@101
    .line 189
    .local v14, "now":Ljava/lang/String;
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@104
    invoke-static {v6, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@107
    goto/16 :goto_0

    #@109
    .line 205
    .end local v14    # "now":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_3

    #@10b
    const-string/jumbo v6, "SYSTEM_RESTART"

    #@10e
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@111
    goto :goto_1

    #@112
    .line 217
    .restart local v13    # "i":I
    .restart local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    #@114
    invoke-direct {v0, v3}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    #@117
    .line 221
    new-instance v6, Lcom/android/server/BootReceiver$2;

    #@119
    sget-object v7, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@11b
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@11e
    move-result-object v8

    #@11f
    const/16 v9, 0x8

    #@121
    move-object/from16 v7, p0

    #@123
    move-object v10, v2

    #@124
    move-object v11, v4

    #@125
    invoke-direct/range {v6 .. v11}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Ljava/lang/String;)V

    #@128
    sput-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@12a
    .line 238
    sget-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@12c
    invoke-virtual {v6}, Landroid/os/FileObserver;->startWatching()V

    #@12f
    .line 161
    return-void
.end method

.method private static readTimestamps()Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 329
    sget-object v20, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@2
    monitor-enter v20

    #@3
    .line 330
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    #@5
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@8
    .line 331
    .local v13, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v11, 0x0

    #@9
    .line 332
    .local v11, "success":Z
    const/16 v18, 0x0

    #@b
    const/4 v10, 0x0

    #@c
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v17, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@e
    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@11
    move-result-object v10

    #@12
    .line 333
    .local v10, "stream":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@15
    move-result-object v9

    #@16
    .line 334
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@18
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@1b
    move-result-object v17

    #@1c
    move-object/from16 v0, v17

    #@1e
    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@21
    .line 337
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@24
    move-result v16

    #@25
    .local v16, "type":I
    const/16 v17, 0x2

    #@27
    move/from16 v0, v16

    #@29
    move/from16 v1, v17

    #@2b
    if-eq v0, v1, :cond_1

    #@2d
    .line 338
    const/16 v17, 0x1

    #@2f
    move/from16 v0, v16

    #@31
    move/from16 v1, v17

    #@33
    if-ne v0, v1, :cond_0

    #@35
    .line 342
    :cond_1
    const/16 v17, 0x2

    #@37
    move/from16 v0, v16

    #@39
    move/from16 v1, v17

    #@3b
    if-eq v0, v1, :cond_4

    #@3d
    .line 343
    new-instance v17, Ljava/lang/IllegalStateException;

    #@3f
    const-string/jumbo v19, "no start tag found"

    #@42
    move-object/from16 v0, v17

    #@44
    move-object/from16 v1, v19

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@49
    throw v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4a
    .line 380
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_0
    move-exception v17

    #@4b
    :try_start_2
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    :catchall_0
    move-exception v18

    #@4d
    move-object/from16 v22, v18

    #@4f
    move-object/from16 v18, v17

    #@51
    move-object/from16 v17, v22

    #@53
    :goto_0
    if-eqz v10, :cond_2

    #@55
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@58
    :cond_2
    :goto_1
    if-eqz v18, :cond_b

    #@5a
    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    #@5b
    .line 365
    :catch_1
    move-exception v2

    #@5c
    .line 366
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string/jumbo v17, "BootReceiver"

    #@5f
    new-instance v18, Ljava/lang/StringBuilder;

    #@61
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v19, "No existing last log timestamp file "

    #@67
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v18

    #@6b
    sget-object v19, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@6d
    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    #@70
    move-result-object v19

    #@71
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v18

    #@75
    .line 367
    const-string/jumbo v19, "; starting empty"

    #@78
    .line 366
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v18

    #@7c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v18

    #@80
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@83
    .line 377
    if-nez v11, :cond_3

    #@85
    .line 378
    :try_start_6
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@88
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    monitor-exit v20

    #@89
    .line 381
    return-object v13

    #@8a
    .line 346
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "type":I
    :cond_4
    :try_start_7
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8d
    move-result v8

    #@8e
    .line 347
    .local v8, "outerDepth":I
    :cond_5
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@91
    move-result v16

    #@92
    const/16 v17, 0x1

    #@94
    move/from16 v0, v16

    #@96
    move/from16 v1, v17

    #@98
    if-eq v0, v1, :cond_8

    #@9a
    .line 348
    const/16 v17, 0x3

    #@9c
    move/from16 v0, v16

    #@9e
    move/from16 v1, v17

    #@a0
    if-ne v0, v1, :cond_6

    #@a2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@a5
    move-result v17

    #@a6
    move/from16 v0, v17

    #@a8
    if-le v0, v8, :cond_8

    #@aa
    .line 349
    :cond_6
    const/16 v17, 0x3

    #@ac
    move/from16 v0, v16

    #@ae
    move/from16 v1, v17

    #@b0
    if-eq v0, v1, :cond_5

    #@b2
    const/16 v17, 0x4

    #@b4
    move/from16 v0, v16

    #@b6
    move/from16 v1, v17

    #@b8
    if-eq v0, v1, :cond_5

    #@ba
    .line 353
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@bd
    move-result-object v12

    #@be
    .line 354
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v17, "log"

    #@c1
    move-object/from16 v0, v17

    #@c3
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v17

    #@c7
    if-eqz v17, :cond_7

    #@c9
    .line 355
    const-string/jumbo v17, "filename"

    #@cc
    const/16 v19, 0x0

    #@ce
    move-object/from16 v0, v19

    #@d0
    move-object/from16 v1, v17

    #@d2
    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    .line 357
    .local v7, "filename":Ljava/lang/String;
    const-string/jumbo v17, "timestamp"

    #@d9
    const/16 v19, 0x0

    #@db
    .line 356
    move-object/from16 v0, v19

    #@dd
    move-object/from16 v1, v17

    #@df
    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e2
    move-result-object v17

    #@e3
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@e6
    move-result-object v17

    #@e7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@ea
    move-result-wide v14

    #@eb
    .line 358
    .local v14, "timestamp":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ee
    move-result-object v17

    #@ef
    move-object/from16 v0, v17

    #@f1
    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    goto :goto_3

    #@f5
    .line 380
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v14    # "timestamp":J
    .end local v16    # "type":I
    :catchall_1
    move-exception v17

    #@f6
    goto/16 :goto_0

    #@f8
    .line 360
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_7
    const-string/jumbo v17, "BootReceiver"

    #@fb
    new-instance v19, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v21, "Unknown tag: "

    #@103
    move-object/from16 v0, v19

    #@105
    move-object/from16 v1, v21

    #@107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v19

    #@10b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@10e
    move-result-object v21

    #@10f
    move-object/from16 v0, v19

    #@111
    move-object/from16 v1, v21

    #@113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v19

    #@117
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v19

    #@11b
    move-object/from16 v0, v17

    #@11d
    move-object/from16 v1, v19

    #@11f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@122
    .line 361
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@125
    goto/16 :goto_3

    #@127
    .line 364
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    #@128
    .line 380
    if-eqz v10, :cond_9

    #@12a
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@12d
    :cond_9
    :goto_4
    if-eqz v18, :cond_c

    #@12f
    :try_start_9
    throw v18
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    #@130
    .line 368
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_2
    move-exception v3

    #@131
    .line 369
    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v17, "BootReceiver"

    #@134
    new-instance v18, Ljava/lang/StringBuilder;

    #@136
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@139
    const-string/jumbo v19, "Failed parsing "

    #@13c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v18

    #@140
    move-object/from16 v0, v18

    #@142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v18

    #@146
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v18

    #@14a
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@14d
    .line 377
    if-nez v11, :cond_3

    #@14f
    .line 378
    :try_start_b
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@152
    goto/16 :goto_2

    #@154
    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v17

    #@155
    monitor-exit v20

    #@156
    throw v17

    #@157
    .line 380
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "type":I
    :catch_3
    move-exception v18

    #@158
    goto :goto_4

    #@159
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_4
    move-exception v19

    #@15a
    if-nez v18, :cond_a

    #@15c
    move-object/from16 v18, v19

    #@15e
    goto/16 :goto_1

    #@160
    :cond_a
    move-object/from16 v0, v18

    #@162
    move-object/from16 v1, v19

    #@164
    if-eq v0, v1, :cond_2

    #@166
    :try_start_c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@169
    goto/16 :goto_1

    #@16b
    .line 370
    :catch_5
    move-exception v4

    #@16c
    .line 371
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_d
    const-string/jumbo v17, "BootReceiver"

    #@16f
    new-instance v18, Ljava/lang/StringBuilder;

    #@171
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v19, "Failed parsing "

    #@177
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v18

    #@17b
    move-object/from16 v0, v18

    #@17d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v18

    #@181
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v18

    #@185
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    #@188
    .line 377
    if-nez v11, :cond_3

    #@18a
    .line 378
    :try_start_e
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@18d
    goto/16 :goto_2

    #@18f
    .line 380
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_b
    :try_start_f
    throw v17
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    #@190
    .line 372
    :catch_6
    move-exception v5

    #@191
    .line 373
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_10
    const-string/jumbo v17, "BootReceiver"

    #@194
    new-instance v18, Ljava/lang/StringBuilder;

    #@196
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@199
    const-string/jumbo v19, "Failed parsing "

    #@19c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v18

    #@1a0
    move-object/from16 v0, v18

    #@1a2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v18

    #@1a6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v18

    #@1aa
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@1ad
    .line 377
    if-nez v11, :cond_3

    #@1af
    .line 378
    :try_start_11
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1b2
    goto/16 :goto_2

    #@1b4
    .line 377
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "type":I
    :cond_c
    if-nez v11, :cond_3

    #@1b6
    .line 378
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    #@1b9
    goto/16 :goto_2

    #@1bb
    .line 374
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_7
    move-exception v6

    #@1bc
    .line 375
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_12
    const-string/jumbo v17, "BootReceiver"

    #@1bf
    new-instance v18, Ljava/lang/StringBuilder;

    #@1c1
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1c4
    const-string/jumbo v19, "Failed parsing "

    #@1c7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v18

    #@1cb
    move-object/from16 v0, v18

    #@1cd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v18

    #@1d1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d4
    move-result-object v18

    #@1d5
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    #@1d8
    .line 377
    if-nez v11, :cond_3

    #@1da
    .line 378
    :try_start_13
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1dd
    goto/16 :goto_2

    #@1df
    .line 376
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_3
    move-exception v17

    #@1e0
    .line 377
    if-nez v11, :cond_d

    #@1e2
    .line 378
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1e5
    .line 376
    :cond_d
    throw v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 116
    const-string/jumbo v0, "com.google.android.systemupdater"

    #@3
    const-string/jumbo v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    #@6
    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 115
    return-void
.end method

.method private writeTimestamps(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 386
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v6, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@2
    monitor-enter v6

    #@3
    .line 389
    :try_start_0
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v4

    #@9
    .line 396
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@b
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@e
    .line 397
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@10
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@17
    .line 398
    const/4 v5, 0x1

    #@18
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v5

    #@1c
    const/4 v7, 0x0

    #@1d
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@20
    .line 399
    const-string/jumbo v5, "log-files"

    #@23
    const/4 v7, 0x0

    #@24
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 401
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .line 402
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/lang/String;

    #@3b
    .line 404
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v5, "log"

    #@3e
    const/4 v7, 0x0

    #@3f
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 405
    const-string/jumbo v5, "filename"

    #@45
    const/4 v7, 0x0

    #@46
    invoke-interface {v3, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 406
    const-string/jumbo v7, "timestamp"

    #@4c
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Ljava/lang/Long;

    #@52
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    const/4 v8, 0x0

    #@57
    invoke-interface {v3, v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 407
    const-string/jumbo v5, "log"

    #@5d
    const/4 v7, 0x0

    #@5e
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 414
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    #@63
    .line 415
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v5, "BootReceiver"

    #@66
    new-instance v7, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v8, "Failed to write timestamp file, using the backup: "

    #@6e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 416
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@7f
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    monitor-exit v6

    #@83
    .line 385
    return-void

    #@84
    .line 390
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@85
    .line 391
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "BootReceiver"

    #@88
    new-instance v7, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v8, "Failed to write timestamp file: "

    #@90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v7

    #@94
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v7

    #@9c
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9f
    monitor-exit v6

    #@a0
    .line 392
    return-void

    #@a1
    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_4
    const-string/jumbo v5, "log-files"

    #@a4
    const/4 v7, 0x0

    #@a5
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a8
    .line 411
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@ab
    .line 413
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@ad
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b0
    goto :goto_1

    #@b1
    .line 386
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    #@b2
    monitor-exit v6

    #@b3
    throw v5
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 89
    new-instance v0, Lcom/android/server/BootReceiver$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    #@8
    .line 87
    return-void
.end method
