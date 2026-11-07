.class final Lcom/android/okhttp/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final blacklist cleanFiles:[Ljava/io/File;

.field private blacklist currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field private final blacklist dirtyFiles:[Ljava/io/File;

.field private final blacklist key:Ljava/lang/String;

.field private final blacklist lengths:[J

.field private blacklist readable:Z

.field private blacklist sequenceNumber:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 975
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 978
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    .line 979
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 980
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 985
    :goto_2e
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 988
    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 990
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_64
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .registers 4

    .line 958
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    return-object p0
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    .registers 3

    .line 958
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic blacklist access$1602(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J
    .registers 3

    .line 958
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 1

    .line 958
    iget-boolean p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return p0
.end method

.method static synthetic blacklist access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z
    .registers 2

    .line 958
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object p0
.end method

.method static synthetic blacklist access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 2

    .line 958
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method private blacklist invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected journal line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist setLengths([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 996
    array-length v0, p1

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    .line 1001
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 1002
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    .line 1005
    :catch_1b
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 997
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method blacklist snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 10

    .line 1026
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1028
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v6, v0, [Lcom/android/okhttp/okio/Source;

    .line 1029
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [J

    const/4 v0, 0x0

    move v1, v0

    .line 1031
    :goto_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 1032
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1034
    :cond_36
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$1;)V
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_42} :catch_43

    return-object v1

    .line 1037
    :catch_43
    :goto_43
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 1038
    aget-object v1, v6, v0

    if-eqz v1, :cond_55

    .line 1039
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_55
    const/4 p0, 0x0

    return-object p0

    .line 1026
    :cond_57
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method blacklist writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-wide v2, p0, v1

    const/16 v4, 0x20

    .line 1012
    invoke-interface {p1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method
