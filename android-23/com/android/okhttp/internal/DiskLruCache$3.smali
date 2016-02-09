.class Lcom/android/okhttp/internal/DiskLruCache$3;
.super Lcom/android/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lcom/android/okhttp/internal/DiskLruCache$3;->-assertionsDisabled:Z

    #@b
    .line 303
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@2
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    #@5
    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 305
    sget-boolean v0, Lcom/android/okhttp/internal/DiskLruCache$3;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@6
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->-set0(Lcom/android/okhttp/internal/DiskLruCache;Z)Z

    #@18
    .line 304
    return-void
.end method
