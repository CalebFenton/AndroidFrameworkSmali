.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;,
        Ljava/util/zip/ZipFile$ZipFileInputStream;
    }
.end annotation


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final JZENTRY_COMMENT:I = 0x2

.field private static final JZENTRY_EXTRA:I = 0x1

.field private static final JZENTRY_NAME:I = 0x0

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1

.field private static final STORED:I

.field private static final usemmap:Z


# instance fields
.field private volatile closeRequested:Z

.field private final fileToRemoveOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private inflaterCache:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private jzfile:J

.field private final locsig:Z

.field private final name:Ljava/lang/String;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method static synthetic -get0(Ljava/util/zip/ZipFile;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/zip/ZipFile;)J
    .locals 2

    #@0
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/util/zip/ZipFile;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(JJJ[BII)I
    .locals 2
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J
    .param p4, "pos"    # J
    .param p6, "b"    # [B
    .param p7, "off"    # I
    .param p8, "len"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p8}, Ljava/util/zip/ZipFile;->read(JJJ[BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .locals 2
    .param p0, "jzfile"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getZipMessage(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(J)J
    .locals 2
    .param p0, "jzentry"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap4(J)J
    .locals 2
    .param p0, "jzentry"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap5(JI)J
    .locals 2
    .param p0, "jzfile"    # J
    .param p2, "i"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipFile;->getNextEntry(JI)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap6(Ljava/util/zip/ZipFile;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Ljava/util/zip/ZipFile;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(JJ)V
    .locals 0
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V
    .locals 0
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->releaseInflater(Ljava/util/zip/Inflater;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Ljava/util/zip/ZipFile;->usemmap:Z

    #@3
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@4
    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 147
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    #@5
    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    iput-boolean v3, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@7
    .line 69
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@a
    move-result-object v3

    #@b
    iput-object v3, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@d
    .line 334
    new-instance v3, Ljava/util/WeakHashMap;

    #@f
    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    #@12
    iput-object v3, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@14
    .line 476
    new-instance v3, Ljava/util/ArrayDeque;

    #@16
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    #@19
    iput-object v3, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@1b
    .line 200
    and-int/lit8 v3, p2, 0x1

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 201
    and-int/lit8 v3, p2, -0x6

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 202
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v4, "Illegal mode: 0x"

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v2

    #@41
    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@44
    move-result-wide v4

    #@45
    const-wide/16 v6, 0x16

    #@47
    cmp-long v3, v4, v6

    #@49
    if-gez v3, :cond_2

    #@4b
    .line 208
    new-instance v2, Ljava/util/zip/ZipException;

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "File too short to be a zip file: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@5c
    move-result-wide v4

    #@5d
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@68
    throw v2

    #@69
    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 213
    .local v1, "name":Ljava/lang/String;
    and-int/lit8 v3, p2, 0x4

    #@6f
    if-eqz v3, :cond_3

    #@71
    move-object v2, p1

    #@72
    :cond_3
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    #@74
    .line 215
    if-nez p3, :cond_4

    #@76
    .line 216
    new-instance v2, Ljava/lang/NullPointerException;

    #@78
    const-string/jumbo v3, "charset is null"

    #@7b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2

    #@7f
    .line 217
    :cond_4
    invoke-static {p3}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    #@82
    move-result-object v2

    #@83
    iput-object v2, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@85
    .line 218
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    #@88
    move-result-wide v2

    #@89
    sget-boolean v4, Ljava/util/zip/ZipFile;->usemmap:Z

    #@8b
    invoke-static {v1, p2, v2, v3, v4}, Ljava/util/zip/ZipFile;->open(Ljava/lang/String;IJZ)J

    #@8e
    move-result-wide v2

    #@8f
    iput-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@91
    .line 219
    iput-object v1, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    #@93
    .line 220
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@95
    invoke-static {v2, v3}, Ljava/util/zip/ZipFile;->getTotal(J)I

    #@98
    move-result v2

    #@99
    iput v2, p0, Ljava/util/zip/ZipFile;->total:I

    #@9b
    .line 221
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@9d
    invoke-static {v2, v3}, Ljava/util/zip/ZipFile;->startsWithLOC(J)Z

    #@a0
    move-result v2

    #@a1
    iput-boolean v2, p0, Ljava/util/zip/ZipFile;->locsig:Z

    #@a3
    .line 222
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@a6
    move-result-object v0

    #@a7
    .line 225
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->size()I

    #@aa
    move-result v2

    #@ab
    if-eqz v2, :cond_5

    #@ad
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b0
    move-result v2

    #@b1
    if-eqz v2, :cond_5

    #@b3
    .line 230
    iget-object v2, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@b5
    const-string/jumbo v3, "close"

    #@b8
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@bb
    .line 198
    return-void

    #@bc
    .line 226
    :cond_5
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    #@bf
    .line 227
    new-instance v2, Ljava/util/zip/ZipException;

    #@c1
    const-string/jumbo v3, "No entries"

    #@c4
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v2
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    #@4
    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@9
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    #@9
    .line 257
    return-void
.end method

.method private static native close(J)V
.end method

.method private ensureOpen()V
    .locals 4

    #@0
    .prologue
    .line 653
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "zip file closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 657
    :cond_0
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@f
    const-wide/16 v2, 0x0

    #@11
    cmp-long v0, v0, v2

    #@13
    if-nez v0, :cond_1

    #@15
    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v1, "The object is not initialized."

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 652
    :cond_1
    return-void
.end method

.method private ensureOpenOrZipException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 664
    new-instance v0, Ljava/util/zip/ZipException;

    #@6
    const-string/jumbo v1, "ZipFile closed"

    #@9
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 662
    :cond_0
    return-void
.end method

.method private static native freeEntry(JJ)V
.end method

.method private static native getCommentBytes(J)[B
.end method

.method private static native getEntry(J[BZ)J
.end method

.method private static native getEntryBytes(JI)[B
.end method

.method private static native getEntryCSize(J)J
.end method

.method private static native getEntryCrc(J)J
.end method

.method private static native getEntryFlag(J)I
.end method

.method private static native getEntryMethod(J)I
.end method

.method private static native getEntrySize(J)J
.end method

.method private static native getEntryTime(J)J
.end method

.method private static native getFileDescriptor(J)I
.end method

.method private getInflater()Ljava/util/zip/Inflater;
    .locals 3

    #@0
    .prologue
    .line 453
    iget-object v2, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@2
    monitor-enter v2

    #@3
    .line 454
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@5
    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/zip/Inflater;

    #@b
    .local v0, "inf":Ljava/util/zip/Inflater;
    if-eqz v0, :cond_1

    #@d
    .line 455
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->ended()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    monitor-exit v2

    #@14
    .line 456
    return-object v0

    #@15
    :cond_1
    monitor-exit v2

    #@16
    .line 460
    new-instance v1, Ljava/util/zip/Inflater;

    #@18
    const/4 v2, 0x1

    #@19
    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@1c
    return-object v1

    #@1d
    .line 453
    .end local v0    # "inf":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private static native getNextEntry(JI)J
.end method

.method private static native getTotal(J)I
.end method

.method private getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 532
    new-instance v2, Ljava/util/zip/ZipEntry;

    #@4
    invoke-direct {v2}, Ljava/util/zip/ZipEntry;-><init>()V

    #@7
    .line 533
    .local v2, "e":Ljava/util/zip/ZipEntry;
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryFlag(J)I

    #@a
    move-result v3

    #@b
    iput v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    #@d
    .line 534
    if-eqz p1, :cond_0

    #@f
    .line 535
    iput-object p1, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@11
    .line 544
    :goto_0
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryTime(J)J

    #@14
    move-result-wide v4

    #@15
    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->time:J

    #@17
    .line 545
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCrc(J)J

    #@1a
    move-result-wide v4

    #@1b
    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->crc:J

    #@1d
    .line 546
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    #@20
    move-result-wide v4

    #@21
    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->size:J

    #@23
    .line 547
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    #@26
    move-result-wide v4

    #@27
    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->csize:J

    #@29
    .line 548
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    #@2c
    move-result v3

    #@2d
    iput v3, v2, Ljava/util/zip/ZipEntry;->method:I

    #@2f
    .line 549
    const/4 v3, 0x1

    #@30
    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    #@33
    move-result-object v3

    #@34
    iput-object v3, v2, Ljava/util/zip/ZipEntry;->extra:[B

    #@36
    .line 550
    const/4 v3, 0x2

    #@37
    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    #@3a
    move-result-object v0

    #@3b
    .line 551
    .local v0, "bcomm":[B
    if-nez v0, :cond_2

    #@3d
    .line 552
    iput-object v6, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@3f
    .line 560
    :goto_1
    return-object v2

    #@40
    .line 537
    .end local v0    # "bcomm":[B
    :cond_0
    invoke-static {p2, p3, v4}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    #@43
    move-result-object v1

    #@44
    .line 538
    .local v1, "bname":[B
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@46
    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_1

    #@4c
    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    #@4e
    and-int/lit16 v3, v3, 0x800

    #@50
    if-eqz v3, :cond_1

    #@52
    .line 539
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@54
    array-length v4, v1

    #@55
    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@5b
    goto :goto_0

    #@5c
    .line 541
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@5e
    array-length v4, v1

    #@5f
    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@65
    goto :goto_0

    #@66
    .line 554
    .end local v1    # "bname":[B
    .restart local v0    # "bcomm":[B
    :cond_2
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@68
    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    #@6b
    move-result v3

    #@6c
    if-nez v3, :cond_3

    #@6e
    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    #@70
    and-int/lit16 v3, v3, 0x800

    #@72
    if-eqz v3, :cond_3

    #@74
    .line 555
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@76
    array-length v4, v0

    #@77
    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@7d
    goto :goto_1

    #@7e
    .line 557
    :cond_3
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@80
    array-length v4, v0

    #@81
    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@87
    goto :goto_1
.end method

.method private static native getZipMessage(J)Ljava/lang/String;
.end method

.method private static native open(Ljava/lang/String;IJZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native read(JJJ[BII)I
.end method

.method private releaseInflater(Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    #@0
    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->ended()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 468
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    #@9
    .line 469
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@b
    monitor-enter v1

    #@c
    .line 470
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@e
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 466
    :cond_0
    return-void

    #@13
    .line 469
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private static native startsWithLOC(J)Z
.end method


# virtual methods
.method public close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 584
    iget-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 585
    return-void

    #@7
    .line 586
    :cond_0
    iget-object v6, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@9
    invoke-virtual {v6}, Ldalvik/system/CloseGuard;->close()V

    #@c
    .line 587
    const/4 v6, 0x1

    #@d
    iput-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    #@f
    .line 589
    monitor-enter p0

    #@10
    .line 591
    :try_start_0
    iget-object v7, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@12
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 592
    :try_start_1
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@15
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    #@18
    move-result v6

    #@19
    if-nez v6, :cond_2

    #@1b
    .line 593
    new-instance v0, Ljava/util/HashMap;

    #@1d
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@1f
    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@22
    .line 594
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@24
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    #@27
    .line 595
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2a
    move-result-object v6

    #@2b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/util/Map$Entry;

    #@3b
    .line 596
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Ljava/io/InputStream;

    #@41
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    #@44
    .line 597
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47
    move-result-object v3

    #@48
    check-cast v3, Ljava/util/zip/Inflater;

    #@4a
    .line 598
    .local v3, "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_1

    #@4c
    .line 599
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    goto :goto_0

    #@50
    .line 591
    .end local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_0
    move-exception v6

    #@51
    :try_start_2
    monitor-exit v7

    #@52
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@53
    .line 589
    :catchall_1
    move-exception v6

    #@54
    monitor-exit p0

    #@55
    throw v6

    #@56
    :cond_2
    :try_start_3
    monitor-exit v7

    #@57
    .line 607
    iget-object v7, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@59
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@5a
    .line 608
    :goto_1
    :try_start_4
    iget-object v6, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    #@5c
    invoke-interface {v6}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Ljava/util/zip/Inflater;

    #@62
    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_3

    #@64
    .line 609
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@67
    goto :goto_1

    #@68
    .line 607
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_2
    move-exception v6

    #@69
    :try_start_5
    monitor-exit v7

    #@6a
    throw v6

    #@6b
    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    :cond_3
    monitor-exit v7

    #@6c
    .line 613
    iget-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@6e
    cmp-long v6, v6, v8

    #@70
    if-eqz v6, :cond_4

    #@72
    .line 615
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@74
    .line 616
    .local v4, "zf":J
    const-wide/16 v6, 0x0

    #@76
    iput-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@78
    .line 618
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->close(J)V

    #@7b
    .line 622
    .end local v4    # "zf":J
    :cond_4
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    #@7d
    if-eqz v6, :cond_5

    #@7f
    .line 623
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    #@81
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@84
    :cond_5
    monitor-exit p0

    #@85
    .line 583
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 492
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@3
    .line 493
    new-instance v0, Ljava/util/zip/ZipFile$1;

    #@5
    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;)V

    #@8
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 644
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 647
    :cond_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    #@c
    .line 642
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 292
    monitor-enter p0

    #@2
    .line 293
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@5
    .line 294
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@7
    invoke-static {v2, v3}, Ljava/util/zip/ZipFile;->getCommentBytes(J)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    .line 295
    .local v0, "bcomm":[B
    if-nez v0, :cond_0

    #@d
    monitor-exit p0

    #@e
    .line 296
    return-object v1

    #@f
    .line 297
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@11
    array-length v2, v0

    #@12
    invoke-virtual {v1, v0, v2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    move-result-object v1

    #@16
    monitor-exit p0

    #@17
    return-object v1

    #@18
    .line 292
    .end local v0    # "bcomm":[B
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 310
    if-nez p1, :cond_0

    #@3
    .line 311
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v4, "name"

    #@8
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v3

    #@c
    .line 313
    :cond_0
    const-wide/16 v0, 0x0

    #@e
    .line 314
    .local v0, "jzentry":J
    monitor-enter p0

    #@f
    .line 315
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@12
    .line 316
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@14
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@16
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@19
    move-result-object v3

    #@1a
    const/4 v6, 0x1

    #@1b
    invoke-static {v4, v5, v3, v6}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    #@1e
    move-result-wide v0

    #@1f
    .line 317
    const-wide/16 v4, 0x0

    #@21
    cmp-long v3, v0, v4

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 318
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    #@28
    move-result-object v2

    #@29
    .line 319
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@2b
    invoke-static {v4, v5, v0, v1}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 320
    return-object v2

    #@30
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    monitor-exit p0

    #@31
    .line 323
    return-object v7

    #@32
    .line 314
    :catchall_0
    move-exception v3

    #@33
    monitor-exit p0

    #@34
    throw v3
.end method

.method public getFileDescriptor()I
    .locals 2

    #@0
    .prologue
    .line 777
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@2
    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getFileDescriptor(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 12
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    if-nez p1, :cond_0

    #@2
    .line 352
    new-instance v8, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v9, "entry"

    #@7
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 354
    :cond_0
    const-wide/16 v4, 0x0

    #@d
    .line 355
    .local v4, "jzentry":J
    const/4 v0, 0x0

    #@e
    .line 356
    .local v0, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    monitor-enter p0

    #@f
    .line 357
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@12
    .line 358
    iget-object v8, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@14
    invoke-virtual {v8}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    #@17
    move-result v8

    #@18
    if-nez v8, :cond_1

    #@1a
    iget v8, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@1c
    and-int/lit16 v8, v8, 0x800

    #@1e
    if-eqz v8, :cond_1

    #@20
    .line 359
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@22
    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@24
    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@26
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytesUTF8(Ljava/lang/String;)[B

    #@29
    move-result-object v10

    #@2a
    const/4 v11, 0x1

    #@2b
    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    #@2e
    move-result-wide v4

    #@2f
    .line 363
    :goto_0
    const-wide/16 v8, 0x0

    #@31
    cmp-long v8, v4, v8

    #@33
    if-nez v8, :cond_2

    #@35
    .line 364
    const/4 v8, 0x0

    #@36
    monitor-exit p0

    #@37
    return-object v8

    #@38
    .line 361
    :cond_1
    :try_start_1
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    #@3a
    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    #@3c
    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@3e
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@41
    move-result-object v10

    #@42
    const/4 v11, 0x1

    #@43
    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    #@46
    move-result-wide v4

    #@47
    goto :goto_0

    #@48
    .line 366
    :cond_2
    new-instance v1, Ljava/util/zip/ZipFile$ZipFileInputStream;

    #@4a
    invoke-direct {v1, p0, v4, v5}, Ljava/util/zip/ZipFile$ZipFileInputStream;-><init>(Ljava/util/zip/ZipFile;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@4d
    .line 368
    .end local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .local v1, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :try_start_2
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    #@50
    move-result v8

    #@51
    sparse-switch v8, :sswitch_data_0

    #@54
    .line 387
    new-instance v8, Ljava/util/zip/ZipException;

    #@56
    const-string/jumbo v9, "invalid compression method"

    #@59
    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    .line 356
    :catchall_0
    move-exception v8

    #@5e
    move-object v0, v1

    #@5f
    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :goto_1
    monitor-exit p0

    #@60
    throw v8

    #@61
    .line 370
    .restart local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :sswitch_0
    :try_start_3
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@63
    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    .line 371
    :try_start_4
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@66
    const/4 v10, 0x0

    #@67
    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6a
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6b
    monitor-exit p0

    #@6c
    .line 373
    return-object v1

    #@6d
    .line 370
    :catchall_1
    move-exception v8

    #@6e
    :try_start_6
    monitor-exit v9

    #@6f
    throw v8

    #@70
    .line 376
    :sswitch_1
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    #@73
    move-result-wide v8

    #@74
    const-wide/16 v10, 0x2

    #@76
    add-long v6, v8, v10

    #@78
    .line 377
    .local v6, "size":J
    const-wide/32 v8, 0x10000

    #@7b
    cmp-long v8, v6, v8

    #@7d
    if-lez v8, :cond_3

    #@7f
    const-wide/16 v6, 0x2000

    #@81
    .line 378
    :cond_3
    const-wide/16 v8, 0x0

    #@83
    cmp-long v8, v6, v8

    #@85
    if-gtz v8, :cond_4

    #@87
    const-wide/16 v6, 0x1000

    #@89
    .line 379
    :cond_4
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->getInflater()Ljava/util/zip/Inflater;

    #@8c
    move-result-object v2

    #@8d
    .line 381
    .local v2, "inf":Ljava/util/zip/Inflater;
    new-instance v3, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;

    #@8f
    long-to-int v8, v6

    #@90
    invoke-direct {v3, p0, v1, v2, v8}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V

    #@93
    .line 382
    .local v3, "is":Ljava/io/InputStream;
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@95
    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@96
    .line 383
    :try_start_7
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    #@98
    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@9b
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@9c
    monitor-exit p0

    #@9d
    .line 385
    return-object v3

    #@9e
    .line 382
    :catchall_2
    move-exception v8

    #@9f
    :try_start_9
    monitor-exit v9

    #@a0
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@a1
    .line 356
    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local v2    # "inf":Ljava/util/zip/Inflater;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "size":J
    .restart local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :catchall_3
    move-exception v8

    #@a2
    goto :goto_1

    #@a3
    .line 368
    nop

    #@a4
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 483
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 571
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    #@3
    .line 572
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    #@5
    return v0
.end method

.method public startsWithLocHeader()Z
    .locals 1

    #@0
    .prologue
    .line 771
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->locsig:Z

    #@2
    return v0
.end method
