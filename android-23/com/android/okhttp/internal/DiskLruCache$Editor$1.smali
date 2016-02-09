.class Lcom/android/okhttp/internal/DiskLruCache$Editor$1;
.super Lcom/android/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 880
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@2
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    #@5
    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@2
    iget-object v1, v0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@4
    monitor-enter v1

    #@5
    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 881
    return-void

    #@d
    .line 882
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
