.class public final Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final blacklist key:Ljava/lang/String;

.field private final blacklist lengths:[J

.field private final blacklist sequenceNumber:J

.field private final blacklist sources:[Lcom/android/okhttp/okio/Source;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 775
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 777
    iput-wide p3, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 778
    iput-object p5, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    .line 779
    iput-object p6, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$1;)V
    .registers 8

    .line 769
    invoke-direct/range {p0 .. p6}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V

    return-void
.end method

.method static synthetic blacklist access$2000(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;
    .registers 1

    .line 769
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 806
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 807
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public blacklist edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/android/okhttp/internal/DiskLruCache;->access$2100(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getLength(I)J
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public blacklist getSource(I)Lcom/android/okhttp/okio/Source;
    .registers 2

    .line 797
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist key()Ljava/lang/String;
    .registers 1

    .line 783
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object p0
.end method
