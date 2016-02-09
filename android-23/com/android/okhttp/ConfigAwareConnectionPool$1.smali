.class Lcom/android/okhttp/ConfigAwareConnectionPool$1;
.super Llibcore/net/event/NetworkEventListener;
.source "ConfigAwareConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConfigAwareConnectionPool;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@0
    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@2
    invoke-direct {p0}, Llibcore/net/event/NetworkEventListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onNetworkConfigurationChanged()V
    .locals 3

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@2
    monitor-enter v1

    #@3
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/ConfigAwareConnectionPool$1;->this$0:Lcom/android/okhttp/ConfigAwareConnectionPool;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v0, v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->-set0(Lcom/android/okhttp/ConfigAwareConnectionPool;Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/ConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 84
    return-void

    #@b
    .line 85
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
