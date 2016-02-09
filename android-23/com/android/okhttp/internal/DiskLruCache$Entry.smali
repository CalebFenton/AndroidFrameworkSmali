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
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    #@2
    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 946
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    #@7
    .line 948
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@a
    move-result v3

    #@b
    new-array v3, v3, [J

    #@d
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    #@f
    .line 949
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@12
    move-result v3

    #@13
    new-array v3, v3, [Ljava/io/File;

    #@15
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    #@17
    .line 950
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@1a
    move-result v3

    #@1b
    new-array v3, v3, [Ljava/io/File;

    #@1d
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    #@1f
    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    const/16 v4, 0x2e

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 954
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@2d
    move-result v2

    #@2e
    .line 955
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    #@2f
    .local v1, "i":I
    :goto_0
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@32
    move-result v3

    #@33
    if-ge v1, v3, :cond_0

    #@35
    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    .line 957
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    #@3a
    new-instance v4, Ljava/io/File;

    #@3c
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@47
    aput-object v4, v3, v1

    #@49
    .line 958
    const-string/jumbo v3, ".tmp"

    #@4c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 959
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    #@51
    new-instance v4, Ljava/io/File;

    #@53
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@5e
    aput-object v4, v3, v1

    #@60
    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    #@63
    .line 955
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_0

    #@66
    .line 945
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 987
    new-instance v0, Ljava/io/IOException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "unexpected journal line: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 966
    array-length v2, p1

    #@1
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@3
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@6
    move-result v3

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 967
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    #@c
    move-result-object v2

    #@d
    throw v2

    #@e
    .line 971
    :cond_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    #@10
    if-ge v1, v2, :cond_1

    #@12
    .line 972
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    #@14
    aget-object v3, p1, v1

    #@16
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@19
    move-result-wide v4

    #@1a
    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 971
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 974
    :catch_0
    move-exception v0

    #@20
    .line 975
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    #@23
    move-result-object v2

    #@24
    throw v2

    #@25
    .line 965
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 996
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@3
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1

    #@f
    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@11
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@14
    move-result v1

    #@15
    new-array v6, v1, [Lcom/android/okhttp/okio/Source;

    #@17
    .line 999
    .local v6, "sources":[Lcom/android/okhttp/okio/Source;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, [J

    #@1f
    .line 1001
    .local v7, "lengths":[J
    const/4 v9, 0x0

    #@20
    .local v9, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@22
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@25
    move-result v1

    #@26
    if-ge v9, v1, :cond_1

    #@28
    .line 1002
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2a
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    #@30
    aget-object v2, v2, v9

    #@32
    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    #@35
    move-result-object v1

    #@36
    aput-object v1, v6, v9

    #@38
    .line 1001
    add-int/lit8 v9, v9, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1004
    :cond_1
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@3d
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@3f
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    #@41
    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    #@43
    const/4 v8, 0x0

    #@44
    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    return-object v1

    #@48
    .line 1005
    :catch_0
    move-exception v0

    #@49
    .line 1007
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    #@4a
    :goto_1
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@4c
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    #@4f
    move-result v1

    #@50
    if-ge v9, v1, :cond_2

    #@52
    .line 1008
    aget-object v1, v6, v9

    #@54
    if-eqz v1, :cond_2

    #@56
    .line 1009
    aget-object v1, v6, v9

    #@58
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@5b
    .line 1007
    add-int/lit8 v9, v9, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 1014
    :cond_2
    return-object v10
.end method

.method writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V
    .locals 6
    .param p1, "writer"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 981
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    #@2
    const/4 v2, 0x0

    #@3
    array-length v4, v3

    #@4
    :goto_0
    if-ge v2, v4, :cond_0

    #@6
    aget-wide v0, v3, v2

    #@8
    .line 982
    .local v0, "length":J
    const/16 v5, 0x20

    #@a
    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@d
    move-result-object v5

    #@e
    invoke-interface {v5, v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@11
    .line 981
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 980
    .end local v0    # "length":J
    :cond_0
    return-void
.end method
