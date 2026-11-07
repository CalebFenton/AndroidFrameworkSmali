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
.field final synthetic blacklist this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected blacklist onException(Ljava/io/IOException;)V
    .registers 2

    .line 906
    iget-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    iget-object p1, p1, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter p1

    .line 907
    :try_start_5
    iget-object p0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V

    .line 908
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method
