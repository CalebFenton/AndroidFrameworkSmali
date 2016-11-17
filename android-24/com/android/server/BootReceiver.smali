.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LOG_FILES_FILE:Ljava/lang/String; = "log-files.xml"

.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

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
    .line 58
    return-void

    #@31
    .line 64
    :cond_0
    const/high16 v0, 0x10000

    #@33
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
    .line 235
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@7
    move-result v6

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 236
    const-string/jumbo v6, "BootReceiver"

    #@d
    const-string/jumbo v7, "Copying audit failures to DropBox"

    #@10
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 238
    new-instance v0, Ljava/io/File;

    #@15
    const-string/jumbo v6, "/proc/last_kmsg"

    #@18
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    .line 239
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@1e
    move-result-wide v2

    #@1f
    .line 240
    .local v2, "fileTime":J
    cmp-long v6, v2, v8

    #@21
    if-gtz v6, :cond_0

    #@23
    .line 241
    new-instance v0, Ljava/io/File;

    #@25
    .end local v0    # "file":Ljava/io/File;
    const-string/jumbo v6, "/sys/fs/pstore/console-ramoops"

    #@28
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2b
    .line 242
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@2e
    move-result-wide v2

    #@2f
    .line 245
    :cond_0
    cmp-long v6, v2, v8

    #@31
    if-gtz v6, :cond_2

    #@33
    return-void

    #@34
    .line 235
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileTime":J
    :cond_1
    return-void

    #@35
    .line 247
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
    .line 248
    return-void

    #@4a
    .line 251
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {p1, p4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 253
    const-string/jumbo v6, "[[TRUNCATED]]\n"

    #@54
    invoke-static {v0, p3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    .line 254
    .local v4, "log":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 255
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
    .line 256
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v9, "audit"

    #@6d
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@70
    move-result v9

    #@71
    if-eqz v9, :cond_4

    #@73
    .line 257
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    const-string/jumbo v10, "\n"

    #@7a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 255
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@7f
    goto :goto_0

    #@80
    .line 260
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
    .line 261
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
    .line 234
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
    .line 208
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
    .line 207
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
    .line 215
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 217
    new-instance v0, Ljava/io/File;

    #@a
    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d
    .line 218
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@10
    move-result-wide v2

    #@11
    .line 219
    .local v2, "fileTime":J
    const-wide/16 v4, 0x0

    #@13
    cmp-long v1, v2, v4

    #@15
    if-gtz v1, :cond_1

    #@17
    return-void

    #@18
    .line 215
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileTime":J
    :cond_0
    return-void

    #@19
    .line 221
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
    .line 222
    return-void

    #@2e
    .line 225
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 227
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
    .line 228
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
    .line 214
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
    .line 267
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v14, 0x0

    #@1
    .line 268
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
    .line 269
    const-string/jumbo v2, "BootReceiver"

    #@e
    const-string/jumbo v3, "Checking for fsck errors"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 271
    new-instance v8, Ljava/io/File;

    #@16
    const-string/jumbo v2, "/dev/fscklogs/log"

    #@19
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    .line 272
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    #@1f
    move-result-wide v10

    #@20
    .line 273
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    #@22
    cmp-long v2, v10, v2

    #@24
    if-gtz v2, :cond_1

    #@26
    return-void

    #@27
    .line 268
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileTime":J
    :cond_0
    return-void

    #@28
    .line 275
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
    .line 276
    .local v12, "log":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    .line 277
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
    .line 278
    .local v9, "line":Ljava/lang/String;
    const-string/jumbo v5, "FILE SYSTEM WAS MODIFIED"

    #@46
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 279
    const/4 v14, 0x1

    #@4d
    .line 284
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_3

    #@4f
    .line 285
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
    .line 289
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    #@61
    .line 266
    return-void

    #@62
    .line 277
    .restart local v9    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_0
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
    .line 117
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
    .line 118
    .local v2, "db":Landroid/os/DropBoxManager;
    new-instance v6, Ljava/lang/StringBuilder;

    #@d
    const/16 v7, 0x200

    #@f
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 119
    const-string/jumbo v7, "Build: "

    #@15
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    .line 119
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@1b
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    .line 119
    const-string/jumbo v7, "\n"

    #@22
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    .line 120
    const-string/jumbo v7, "Hardware: "

    #@29
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 120
    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@2f
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 120
    const-string/jumbo v7, "\n"

    #@36
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    .line 121
    const-string/jumbo v7, "Revision: "

    #@3d
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    .line 122
    const-string/jumbo v7, "ro.revision"

    #@44
    const-string/jumbo v8, ""

    #@47
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    .line 122
    const-string/jumbo v7, "\n"

    #@52
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    .line 123
    const-string/jumbo v7, "Bootloader: "

    #@59
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    .line 123
    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    #@5f
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    .line 123
    const-string/jumbo v7, "\n"

    #@66
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    .line 124
    const-string/jumbo v7, "Radio: "

    #@6d
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    .line 124
    sget-object v7, Landroid/os/Build;->RADIO:Ljava/lang/String;

    #@73
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    .line 124
    const-string/jumbo v7, "\n"

    #@7a
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v6

    #@7e
    .line 125
    const-string/jumbo v7, "Kernel: "

    #@81
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v6

    #@85
    .line 126
    new-instance v7, Ljava/io/File;

    #@87
    const-string/jumbo v8, "/proc/version"

    #@8a
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v8, "...\n"

    #@90
    const/16 v9, 0x400

    #@92
    invoke-static {v7, v9, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    .line 127
    const-string/jumbo v7, "\n"

    #@9d
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v6

    #@a1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    .line 128
    .local v4, "headers":Ljava/lang/String;
    const-string/jumbo v6, "ro.boot.bootreason"

    #@a8
    const/4 v7, 0x0

    #@a9
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ac
    move-result-object v12

    #@ad
    .line 130
    .local v12, "bootReason":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    #@b0
    move-result-object v15

    #@b1
    .line 131
    .local v15, "recovery":Ljava/lang/String;
    if-eqz v15, :cond_0

    #@b3
    if-eqz v2, :cond_0

    #@b5
    .line 132
    const-string/jumbo v6, "SYSTEM_RECOVERY_LOG"

    #@b8
    new-instance v7, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v2, v6, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    .line 135
    :cond_0
    const-string/jumbo v5, ""

    #@cf
    .line 136
    .local v5, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v12, :cond_1

    #@d1
    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    #@d3
    const/16 v7, 0x200

    #@d5
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d8
    .line 138
    const-string/jumbo v7, "\n"

    #@db
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v6

    #@df
    .line 139
    const-string/jumbo v7, "Boot info:\n"

    #@e2
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v6

    #@e6
    .line 140
    const-string/jumbo v7, "Last boot reason: "

    #@e9
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v6

    #@ed
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v6

    #@f1
    .line 140
    const-string/jumbo v7, "\n"

    #@f4
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v6

    #@f8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    .line 144
    :cond_1
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    #@ff
    move-result-object v3

    #@100
    .line 146
    .local v3, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@103
    const-wide/16 v8, 0x0

    #@105
    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@108
    move-result-wide v6

    #@109
    const-wide/16 v8, 0x0

    #@10b
    cmp-long v6, v6, v8

    #@10d
    if-nez v6, :cond_6

    #@10f
    .line 147
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    #@112
    move-result v6

    #@113
    if-eqz v6, :cond_5

    #@115
    .line 155
    :goto_0
    if-eqz v2, :cond_2

    #@117
    const-string/jumbo v6, "SYSTEM_BOOT"

    #@11a
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@11d
    .line 159
    :cond_2
    const-string/jumbo v6, "/proc/last_kmsg"

    #@120
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@122
    neg-int v7, v7

    #@123
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@126
    .line 158
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@129
    .line 161
    const-string/jumbo v6, "/sys/fs/pstore/console-ramoops"

    #@12c
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@12e
    neg-int v7, v7

    #@12f
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@132
    .line 160
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@135
    .line 162
    const-string/jumbo v9, "/cache/recovery/log"

    #@138
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@13a
    neg-int v10, v6

    #@13b
    .line 163
    const-string/jumbo v11, "SYSTEM_RECOVERY_LOG"

    #@13e
    move-object v6, v2

    #@13f
    move-object v7, v3

    #@140
    move-object v8, v4

    #@141
    .line 162
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@144
    .line 164
    const-string/jumbo v9, "/cache/recovery/last_kmsg"

    #@147
    .line 165
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@149
    neg-int v10, v6

    #@14a
    const-string/jumbo v11, "SYSTEM_RECOVERY_KMSG"

    #@14d
    move-object v6, v2

    #@14e
    move-object v7, v3

    #@14f
    move-object v8, v4

    #@150
    .line 164
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@153
    .line 166
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@155
    neg-int v6, v6

    #@156
    const-string/jumbo v7, "SYSTEM_AUDIT"

    #@159
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    #@15c
    .line 167
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@15e
    neg-int v6, v6

    #@15f
    const-string/jumbo v7, "SYSTEM_FSCK"

    #@162
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    #@165
    .line 173
    :cond_3
    :goto_1
    sget-object v6, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@167
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@16a
    move-result-object v16

    #@16b
    .line 174
    .local v16, "tombstoneFiles":[Ljava/io/File;
    const/4 v13, 0x0

    #@16c
    .local v13, "i":I
    :goto_2
    if-eqz v16, :cond_7

    #@16e
    move-object/from16 v0, v16

    #@170
    array-length v6, v0

    #@171
    if-ge v13, v6, :cond_7

    #@173
    .line 175
    aget-object v6, v16, v13

    #@175
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    #@178
    move-result v6

    #@179
    if-eqz v6, :cond_4

    #@17b
    .line 176
    aget-object v6, v16, v13

    #@17d
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@180
    move-result-object v9

    #@181
    .line 177
    sget v10, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@183
    const-string/jumbo v11, "SYSTEM_TOMBSTONE"

    #@186
    move-object v6, v2

    #@187
    move-object v7, v3

    #@188
    move-object v8, v4

    #@189
    .line 176
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@18c
    .line 174
    :cond_4
    add-int/lit8 v13, v13, 0x1

    #@18e
    goto :goto_2

    #@18f
    .line 152
    .end local v13    # "i":I
    .end local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@192
    move-result-wide v6

    #@193
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@196
    move-result-object v14

    #@197
    .line 153
    .local v14, "now":Ljava/lang/String;
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@19a
    invoke-static {v6, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@19d
    goto/16 :goto_0

    #@19f
    .line 169
    .end local v14    # "now":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_3

    #@1a1
    const-string/jumbo v6, "SYSTEM_RESTART"

    #@1a4
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@1a7
    goto :goto_1

    #@1a8
    .line 181
    .restart local v13    # "i":I
    .restart local v16    # "tombstoneFiles":[Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    #@1aa
    invoke-direct {v0, v3}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    #@1ad
    .line 185
    new-instance v6, Lcom/android/server/BootReceiver$2;

    #@1af
    sget-object v7, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@1b1
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1b4
    move-result-object v8

    #@1b5
    const/16 v9, 0x8

    #@1b7
    move-object/from16 v7, p0

    #@1b9
    move-object v10, v2

    #@1ba
    move-object v11, v4

    #@1bb
    invoke-direct/range {v6 .. v11}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Ljava/lang/String;)V

    #@1be
    sput-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1c0
    .line 202
    sget-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1c2
    invoke-virtual {v6}, Landroid/os/FileObserver;->startWatching()V

    #@1c5
    .line 116
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
    .line 293
    sget-object v20, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@2
    monitor-enter v20

    #@3
    .line 294
    :try_start_0
    new-instance v13, Ljava/util/HashMap;

    #@5
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@8
    .line 295
    .local v13, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v11, 0x0

    #@9
    .line 296
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
    .line 297
    .local v10, "stream":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@15
    move-result-object v9

    #@16
    .line 298
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
    .line 301
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
    .line 302
    const/16 v17, 0x1

    #@2f
    move/from16 v0, v16

    #@31
    move/from16 v1, v17

    #@33
    if-ne v0, v1, :cond_0

    #@35
    .line 306
    :cond_1
    const/16 v17, 0x2

    #@37
    move/from16 v0, v16

    #@39
    move/from16 v1, v17

    #@3b
    if-eq v0, v1, :cond_4

    #@3d
    .line 307
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
    .line 344
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
    .line 329
    :catch_1
    move-exception v2

    #@5c
    .line 330
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
    .line 331
    const-string/jumbo v19, "; starting empty"

    #@78
    .line 330
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
    .line 341
    if-nez v11, :cond_3

    #@85
    .line 342
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
    .line 345
    return-object v13

    #@8a
    .line 310
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "type":I
    :cond_4
    :try_start_7
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8d
    move-result v8

    #@8e
    .line 311
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
    .line 312
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
    .line 313
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
    .line 317
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@bd
    move-result-object v12

    #@be
    .line 318
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
    .line 319
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
    .line 321
    .local v7, "filename":Ljava/lang/String;
    const-string/jumbo v17, "timestamp"

    #@d9
    const/16 v19, 0x0

    #@db
    .line 320
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
    .line 322
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
    .line 344
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
    .line 324
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
    .line 325
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@125
    goto/16 :goto_3

    #@127
    .line 328
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    #@128
    .line 344
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
    .line 332
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_2
    move-exception v3

    #@131
    .line 333
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
    .line 341
    if-nez v11, :cond_3

    #@14f
    .line 342
    :try_start_b
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@152
    goto/16 :goto_2

    #@154
    .line 293
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v17

    #@155
    monitor-exit v20

    #@156
    throw v17

    #@157
    .line 344
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
    .line 334
    :catch_5
    move-exception v4

    #@16c
    .line 335
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
    .line 341
    if-nez v11, :cond_3

    #@18a
    .line 342
    :try_start_e
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    #@18d
    goto/16 :goto_2

    #@18f
    .line 344
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
    .line 336
    :catch_6
    move-exception v5

    #@191
    .line 337
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
    .line 341
    if-nez v11, :cond_3

    #@1af
    .line 342
    :try_start_11
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1b2
    goto/16 :goto_2

    #@1b4
    .line 341
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "type":I
    :cond_c
    if-nez v11, :cond_3

    #@1b6
    .line 342
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    #@1b9
    goto/16 :goto_2

    #@1bb
    .line 338
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :catch_7
    move-exception v6

    #@1bc
    .line 339
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
    .line 341
    if-nez v11, :cond_3

    #@1da
    .line 342
    :try_start_13
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1dd
    goto/16 :goto_2

    #@1df
    .line 340
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_3
    move-exception v17

    #@1e0
    .line 341
    if-nez v11, :cond_d

    #@1e2
    .line 342
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    #@1e5
    .line 340
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
    .line 113
    const-string/jumbo v0, "com.google.android.systemupdater"

    #@3
    const-string/jumbo v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    #@6
    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 112
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
    .line 350
    .local p1, "timestamps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v6, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@2
    monitor-enter v6

    #@3
    .line 353
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
    .line 360
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    #@b
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@e
    .line 361
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@10
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@17
    .line 362
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
    .line 363
    const-string/jumbo v5, "log-files"

    #@23
    const/4 v7, 0x0

    #@24
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@27
    .line 365
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .line 366
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/lang/String;

    #@3b
    .line 368
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v5, "log"

    #@3e
    const/4 v7, 0x0

    #@3f
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 369
    const-string/jumbo v5, "filename"

    #@45
    const/4 v7, 0x0

    #@46
    invoke-interface {v3, v7, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 370
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
    .line 371
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
    .line 378
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    #@63
    .line 379
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
    .line 380
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
    .line 349
    return-void

    #@84
    .line 354
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@85
    .line 355
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
    .line 356
    return-void

    #@a1
    .line 374
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
    .line 375
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@ab
    .line 377
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    #@ad
    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b0
    goto :goto_1

    #@b1
    .line 350
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
    .line 86
    new-instance v0, Lcom/android/server/BootReceiver$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    #@8
    .line 84
    return-void
.end method
