.class Lcom/android/okhttp/Cache$CacheResponseBody$1;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache$CacheResponseBody;Lcom/android/okhttp/okio/Source;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/Cache$CacheResponseBody;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Source;
    .param p3, "val$snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@0
    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->this$1:Lcom/android/okhttp/Cache$CacheResponseBody;

    #@2
    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@4
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    #@7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    #@5
    .line 687
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSource;->close()V

    #@8
    .line 685
    return-void
.end method
