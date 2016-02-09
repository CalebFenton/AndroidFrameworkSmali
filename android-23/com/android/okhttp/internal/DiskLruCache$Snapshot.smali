.class public final Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lcom/android/okhttp/okio/Source;

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lcom/android/okhttp/okio/Source;
    .param p6, "lengths"    # [J

    #@0
    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 774
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    #@7
    .line 775
    iput-wide p3, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    #@9
    .line 776
    iput-object p5, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    #@b
    .line 777
    iput-object p6, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    #@d
    .line 773
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lcom/android/okhttp/okio/Source;
    .param p6, "lengths"    # [J

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V

    #@3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    .line 804
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_0

    #@6
    aget-object v0, v2, v1

    #@8
    .line 805
    .local v0, "in":Lcom/android/okhttp/okio/Source;
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    #@b
    .line 804
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 803
    .end local v0    # "in":Lcom/android/okhttp/okio/Source;
    :cond_0
    return-void
.end method

.method public edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    #@4
    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    #@6
    invoke-static {v0, v1, v2, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap2(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    #@2
    aget-wide v0, v0, p1

    #@4
    return-wide v0
.end method

.method public getSource(I)Lcom/android/okhttp/okio/Source;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method
