.class public final Lcom/android/org/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V
    .locals 0
    .param p1, "source"    # Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@5
    .line 31
    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/android/org/conscrypt/OpenSSLBIOSource;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 27
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOSource;

    #@2
    .line 28
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@4
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    #@6
    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    #@9
    const/4 v3, 0x0

    #@a
    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    #@d
    .line 27
    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOSource;-><init>(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;)V

    #@10
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 47
    return-void

    #@7
    .line 50
    :catchall_0
    move-exception v0

    #@8
    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 50
    throw v0
.end method

.method public getContext()J
    .locals 2

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@2
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public declared-synchronized release()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 41
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    #@7
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    #@a
    move-result-wide v0

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    #@e
    .line 42
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource;->source:Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :cond_0
    monitor-exit p0

    #@12
    .line 39
    return-void

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method
