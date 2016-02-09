.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final LOG_SIZE:I

.field private static final OLD_UPDATER_CLASS:Ljava/lang/String; = "com.google.android.systemupdater.SystemUpdateReceiver"

.field private static final OLD_UPDATER_PACKAGE:Ljava/lang/String; = "com.google.android.systemupdater"

.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field private static final TOMBSTONE_DIR:Ljava/io/File;

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

.method static synthetic -wrap0(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver;->removeOldUpdatePackages(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 48
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
    .line 47
    :goto_0
    sput v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@10
    .line 50
    new-instance v0, Ljava/io/File;

    #@12
    const-string/jumbo v1, "/data/tombstones"

    #@15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@18
    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@1a
    .line 61
    const/4 v0, 0x0

    #@1b
    sput-object v0, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1d
    .line 42
    return-void

    #@1e
    .line 48
    :cond_0
    const/high16 v0, 0x10000

    #@20
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method private static addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    if-eqz p0, :cond_1

    #@2
    move-object/from16 v0, p4

    #@4
    invoke-virtual {p0, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@7
    move-result v10

    #@8
    if-eqz v10, :cond_1

    #@a
    .line 213
    const-string/jumbo v10, "BootReceiver"

    #@d
    const-string/jumbo v11, "Copying audit failures to DropBox"

    #@10
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 215
    new-instance v2, Ljava/io/File;

    #@15
    const-string/jumbo v10, "/proc/last_kmsg"

    #@18
    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    .line 216
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    #@1e
    move-result-wide v4

    #@1f
    .line 217
    .local v4, "fileTime":J
    const-wide/16 v10, 0x0

    #@21
    cmp-long v10, v4, v10

    #@23
    if-gtz v10, :cond_0

    #@25
    .line 218
    new-instance v2, Ljava/io/File;

    #@27
    .end local v2    # "file":Ljava/io/File;
    const-string/jumbo v10, "/sys/fs/pstore/console-ramoops"

    #@2a
    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@2d
    .line 219
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    #@30
    move-result-wide v4

    #@31
    .line 222
    :cond_0
    const-wide/16 v10, 0x0

    #@33
    cmp-long v10, v4, v10

    #@35
    if-gtz v10, :cond_2

    #@37
    return-void

    #@38
    .line 212
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fileTime":J
    :cond_1
    return-void

    #@39
    .line 224
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fileTime":J
    :cond_2
    if-eqz p1, :cond_4

    #@3b
    .line 225
    const-wide/16 v10, 0x0

    #@3d
    move-object/from16 v0, p1

    #@3f
    move-object/from16 v1, p4

    #@41
    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    #@44
    move-result-wide v6

    #@45
    .line 226
    .local v6, "lastTime":J
    cmp-long v10, v6, v4

    #@47
    if-nez v10, :cond_3

    #@49
    return-void

    #@4a
    .line 229
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@4d
    move-result-object v10

    #@4e
    move-object/from16 v0, p4

    #@50
    invoke-interface {v10, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@53
    move-result-object v10

    #@54
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@57
    .line 232
    .end local v6    # "lastTime":J
    :cond_4
    const-string/jumbo v10, "[[TRUNCATED]]\n"

    #@5a
    move/from16 v0, p3

    #@5c
    invoke-static {v2, v0, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    .line 233
    .local v8, "log":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    .line 234
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "\n"

    #@68
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6b
    move-result-object v11

    #@6c
    const/4 v10, 0x0

    #@6d
    array-length v12, v11

    #@6e
    :goto_0
    if-ge v10, v12, :cond_6

    #@70
    aget-object v3, v11, v10

    #@72
    .line 235
    .local v3, "line":Ljava/lang/String;
    const-string/jumbo v13, "audit"

    #@75
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@78
    move-result v13

    #@79
    if-eqz v13, :cond_5

    #@7b
    .line 236
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v13

    #@7f
    const-string/jumbo v14, "\n"

    #@82
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 234
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@87
    goto :goto_0

    #@88
    .line 239
    .end local v3    # "line":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "BootReceiver"

    #@8b
    new-instance v11, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v12, "Copied "

    #@93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v11

    #@97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v12

    #@9b
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@9e
    move-result v12

    #@9f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v11

    #@a3
    const-string/jumbo v12, " worth of audits to DropBox"

    #@a6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v11

    #@aa
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v11

    #@ae
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    move-object/from16 v0, p2

    #@b8
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v10

    #@bc
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v11

    #@c0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v10

    #@c4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v10

    #@c8
    move-object/from16 v0, p4

    #@ca
    invoke-virtual {p0, v0, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@cd
    .line 211
    return-void
.end method

.method private static addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "maxSize"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
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
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@c
    .line 183
    return-void
.end method

.method private static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "footers"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "maxSize"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 192
    if-eqz p0, :cond_0

    #@4
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 194
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    #@12
    move-result-wide v2

    #@13
    .line 196
    .local v2, "fileTime":J
    cmp-long v1, v2, v6

    #@15
    if-gtz v1, :cond_1

    #@17
    return-void

    #@18
    .line 192
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileTime":J
    :cond_0
    return-void

    #@19
    .line 198
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fileTime":J
    :cond_1
    if-eqz p1, :cond_3

    #@1b
    .line 199
    invoke-interface {p1, p4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    #@1e
    move-result-wide v4

    #@1f
    .line 200
    .local v4, "lastTime":J
    cmp-long v1, v4, v2

    #@21
    if-nez v1, :cond_2

    #@23
    return-void

    #@24
    .line 203
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v1, p4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@2f
    .line 206
    .end local v4    # "lastTime":J
    :cond_3
    const-string/jumbo v1, "BootReceiver"

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "Copying "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    const-string/jumbo v7, " to DropBox ("

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    const-string/jumbo v7, ")"

    #@50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    const-string/jumbo v6, "[[TRUNCATED]]\n"

    #@67
    invoke-static {v0, p5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {p0, p6, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@7a
    .line 191
    return-void
.end method

.method private static addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15
    .param p0, "db"    # Landroid/os/DropBoxManager;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "headers"    # Ljava/lang/String;
    .param p3, "maxSize"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    const/4 v14, 0x0

    #@1
    .line 246
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
    .line 247
    const-string/jumbo v2, "BootReceiver"

    #@e
    const-string/jumbo v3, "Checking for fsck errors"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 249
    new-instance v8, Ljava/io/File;

    #@16
    const-string/jumbo v2, "/dev/fscklogs/log"

    #@19
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    .line 250
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    #@1f
    move-result-wide v10

    #@20
    .line 251
    .local v10, "fileTime":J
    const-wide/16 v2, 0x0

    #@22
    cmp-long v2, v10, v2

    #@24
    if-gtz v2, :cond_1

    #@26
    return-void

    #@27
    .line 246
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileTime":J
    :cond_0
    return-void

    #@28
    .line 253
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
    .line 254
    .local v12, "log":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    .line 255
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
    .line 256
    .local v9, "line":Ljava/lang/String;
    const-string/jumbo v5, "FILE SYSTEM WAS MODIFIED"

    #@46
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_4

    #@4c
    .line 257
    const/4 v14, 0x1

    #@4d
    .line 262
    .end local v9    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_3

    #@4f
    .line 263
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
    invoke-static/range {v2 .. v7}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@5e
    .line 267
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    #@61
    .line 244
    return-void

    #@62
    .line 255
    .restart local v9    # "line":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_0
.end method

.method private logBootEvents(Landroid/content/Context;)V
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
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
    .line 98
    .local v2, "db":Landroid/os/DropBoxManager;
    const-string/jumbo v6, "log_files"

    #@e
    const/4 v7, 0x0

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@14
    move-result-object v3

    #@15
    .line 99
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    #@17
    const/16 v7, 0x200

    #@19
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1c
    .line 100
    const-string/jumbo v7, "Build: "

    #@1f
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    .line 100
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@25
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    .line 100
    const-string/jumbo v7, "\n"

    #@2c
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    .line 101
    const-string/jumbo v7, "Hardware: "

    #@33
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    .line 101
    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    #@39
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    .line 101
    const-string/jumbo v7, "\n"

    #@40
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    .line 102
    const-string/jumbo v7, "Revision: "

    #@47
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 103
    const-string/jumbo v7, "ro.revision"

    #@4e
    const-string/jumbo v8, ""

    #@51
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    .line 103
    const-string/jumbo v7, "\n"

    #@5c
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    .line 104
    const-string/jumbo v7, "Bootloader: "

    #@63
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    .line 104
    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    #@69
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    .line 104
    const-string/jumbo v7, "\n"

    #@70
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    .line 105
    const-string/jumbo v7, "Radio: "

    #@77
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v6

    #@7b
    .line 105
    sget-object v7, Landroid/os/Build;->RADIO:Ljava/lang/String;

    #@7d
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    .line 105
    const-string/jumbo v7, "\n"

    #@84
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    .line 106
    const-string/jumbo v7, "Kernel: "

    #@8b
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 107
    new-instance v7, Ljava/io/File;

    #@91
    const-string/jumbo v8, "/proc/version"

    #@94
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@97
    const-string/jumbo v8, "...\n"

    #@9a
    const/16 v9, 0x400

    #@9c
    invoke-static {v7, v9, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    .line 108
    const-string/jumbo v7, "\n"

    #@a7
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v6

    #@ab
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    .line 109
    .local v4, "headers":Ljava/lang/String;
    const-string/jumbo v6, "ro.boot.bootreason"

    #@b2
    const/4 v7, 0x0

    #@b3
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b6
    move-result-object v13

    #@b7
    .line 111
    .local v13, "bootReason":Ljava/lang/String;
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    #@ba
    move-result-object v16

    #@bb
    .line 112
    .local v16, "recovery":Ljava/lang/String;
    if-eqz v16, :cond_0

    #@bd
    if-eqz v2, :cond_0

    #@bf
    .line 113
    const-string/jumbo v6, "SYSTEM_RECOVERY_LOG"

    #@c2
    new-instance v7, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    move-object/from16 v0, v16

    #@cd
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v7

    #@d5
    invoke-virtual {v2, v6, v7}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@d8
    .line 116
    :cond_0
    const-string/jumbo v5, ""

    #@db
    .line 117
    .local v5, "lastKmsgFooter":Ljava/lang/String;
    if-eqz v13, :cond_1

    #@dd
    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    #@df
    const/16 v7, 0x200

    #@e1
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e4
    .line 119
    const-string/jumbo v7, "\n"

    #@e7
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v6

    #@eb
    .line 120
    const-string/jumbo v7, "Boot info:\n"

    #@ee
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v6

    #@f2
    .line 121
    const-string/jumbo v7, "Last boot reason: "

    #@f5
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v6

    #@f9
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v6

    #@fd
    .line 121
    const-string/jumbo v7, "\n"

    #@100
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v6

    #@104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v5

    #@108
    .line 125
    :cond_1
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@10b
    const-wide/16 v8, 0x0

    #@10d
    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@110
    move-result-wide v6

    #@111
    const-wide/16 v8, 0x0

    #@113
    cmp-long v6, v6, v8

    #@115
    if-nez v6, :cond_6

    #@117
    .line 126
    const-string/jumbo v6, "encrypted"

    #@11a
    const-string/jumbo v7, "ro.crypto.state"

    #@11d
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v7

    #@121
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@124
    move-result v6

    #@125
    if-eqz v6, :cond_5

    #@127
    .line 127
    const-string/jumbo v6, "trigger_restart_min_framework"

    #@12a
    const-string/jumbo v7, "vold.decrypt"

    #@12d
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@130
    move-result-object v7

    #@131
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@134
    move-result v6

    #@135
    .line 126
    if-eqz v6, :cond_5

    #@137
    .line 135
    :goto_0
    if-eqz v2, :cond_2

    #@139
    const-string/jumbo v6, "SYSTEM_BOOT"

    #@13c
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@13f
    .line 139
    :cond_2
    const-string/jumbo v6, "/proc/last_kmsg"

    #@142
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@144
    neg-int v7, v7

    #@145
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@148
    .line 138
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@14b
    .line 141
    const-string/jumbo v6, "/sys/fs/pstore/console-ramoops"

    #@14e
    sget v7, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@150
    neg-int v7, v7

    #@151
    .line 142
    const-string/jumbo v8, "SYSTEM_LAST_KMSG"

    #@154
    .line 140
    invoke-static/range {v2 .. v8}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@157
    .line 143
    const-string/jumbo v9, "/cache/recovery/log"

    #@15a
    .line 144
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@15c
    neg-int v10, v6

    #@15d
    const-string/jumbo v11, "SYSTEM_RECOVERY_LOG"

    #@160
    move-object v6, v2

    #@161
    move-object v7, v3

    #@162
    move-object v8, v4

    #@163
    .line 143
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@166
    .line 145
    const-string/jumbo v9, "/cache/recovery/last_kmsg"

    #@169
    .line 146
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@16b
    neg-int v10, v6

    #@16c
    const-string/jumbo v11, "SYSTEM_RECOVERY_KMSG"

    #@16f
    move-object v6, v2

    #@170
    move-object v7, v3

    #@171
    move-object v8, v4

    #@172
    .line 145
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@175
    .line 147
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@177
    neg-int v6, v6

    #@178
    const-string/jumbo v7, "SYSTEM_AUDIT"

    #@17b
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addAuditErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    #@17e
    .line 148
    sget v6, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@180
    neg-int v6, v6

    #@181
    const-string/jumbo v7, "SYSTEM_FSCK"

    #@184
    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/BootReceiver;->addFsckErrorsToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    #@187
    .line 154
    :cond_3
    :goto_1
    sget-object v6, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@189
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@18c
    move-result-object v17

    #@18d
    .line 155
    .local v17, "tombstoneFiles":[Ljava/io/File;
    const/4 v14, 0x0

    #@18e
    .local v14, "i":I
    :goto_2
    if-eqz v17, :cond_7

    #@190
    move-object/from16 v0, v17

    #@192
    array-length v6, v0

    #@193
    if-ge v14, v6, :cond_7

    #@195
    .line 156
    aget-object v6, v17, v14

    #@197
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    #@19a
    move-result v6

    #@19b
    if-eqz v6, :cond_4

    #@19d
    .line 157
    aget-object v6, v17, v14

    #@19f
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1a2
    move-result-object v9

    #@1a3
    .line 158
    sget v10, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    #@1a5
    const-string/jumbo v11, "SYSTEM_TOMBSTONE"

    #@1a8
    move-object v6, v2

    #@1a9
    move-object v7, v3

    #@1aa
    move-object v8, v4

    #@1ab
    .line 157
    invoke-static/range {v6 .. v11}, Lcom/android/server/BootReceiver;->addFileToDropBox(Landroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    #@1ae
    .line 155
    :cond_4
    add-int/lit8 v14, v14, 0x1

    #@1b0
    goto :goto_2

    #@1b1
    .line 132
    .end local v14    # "i":I
    .end local v17    # "tombstoneFiles":[Ljava/io/File;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b4
    move-result-wide v6

    #@1b5
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1b8
    move-result-object v15

    #@1b9
    .line 133
    .local v15, "now":Ljava/lang/String;
    const-string/jumbo v6, "ro.runtime.firstboot"

    #@1bc
    invoke-static {v6, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1bf
    goto/16 :goto_0

    #@1c1
    .line 150
    .end local v15    # "now":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_3

    #@1c3
    const-string/jumbo v6, "SYSTEM_RESTART"

    #@1c6
    invoke-virtual {v2, v6, v4}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@1c9
    goto :goto_1

    #@1ca
    .line 164
    .restart local v14    # "i":I
    .restart local v17    # "tombstoneFiles":[Ljava/io/File;
    :cond_7
    new-instance v6, Lcom/android/server/BootReceiver$2;

    #@1cc
    sget-object v7, Lcom/android/server/BootReceiver;->TOMBSTONE_DIR:Ljava/io/File;

    #@1ce
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@1d1
    move-result-object v8

    #@1d2
    const/16 v9, 0x8

    #@1d4
    move-object/from16 v7, p0

    #@1d6
    move-object v10, v2

    #@1d7
    move-object v11, v3

    #@1d8
    move-object v12, v4

    #@1d9
    invoke-direct/range {v6 .. v12}, Lcom/android/server/BootReceiver$2;-><init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    #@1dc
    sput-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1de
    .line 178
    sget-object v6, Lcom/android/server/BootReceiver;->sTombstoneObserver:Landroid/os/FileObserver;

    #@1e0
    invoke-virtual {v6}, Landroid/os/FileObserver;->startWatching()V

    #@1e3
    .line 96
    return-void
.end method

.method private removeOldUpdatePackages(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "com.google.android.systemupdater"

    #@3
    const-string/jumbo v1, "com.google.android.systemupdater.SystemUpdateReceiver"

    #@6
    invoke-static {p1, v0, v1}, Landroid/provider/Downloads;->removeAllDownloadsByPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 66
    new-instance v0, Lcom/android/server/BootReceiver$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/BootReceiver$1;-><init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/BootReceiver$1;->start()V

    #@8
    .line 64
    return-void
.end method
