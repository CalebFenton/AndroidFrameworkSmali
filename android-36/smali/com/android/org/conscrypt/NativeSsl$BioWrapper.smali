.class final Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeSsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BioWrapper"
.end annotation


# instance fields
.field private volatile blacklist bio:J

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/NativeSsl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSsl;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/conscrypt/NativeSsl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 661
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_BIO_new(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 663
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeSsl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;-><init>(Lcom/android/org/conscrypt/NativeSsl;)V

    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 5

    .line 701
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 703
    :try_start_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 704
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 705
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 706
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_29

    .line 709
    .end local v0    # "toFree":J
    :cond_1a
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 710
    nop

    .line 711
    return-void

    .line 709
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 710
    throw v0
.end method

.method blacklist getPendingWrittenBytes()I
    .registers 5

    .line 666
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 668
    :try_start_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1d

    :cond_17
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_2b

    .line 670
    :goto_1d
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 668
    return v0

    .line 670
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 671
    throw v0
.end method

.method blacklist readDirectByteBuffer(JI)I
    .registers 14
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 690
    :try_start_d
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 693
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgethandshakeCallbacks(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_46

    move-wide v6, p1

    move v8, p3

    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    .local v6, "destAddress":J
    .local v8, "destLength":I
    :try_start_27
    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_43

    .line 696
    iget-object p2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 693
    return p1

    .line 691
    .end local v6    # "destAddress":J
    .end local v8    # "destLength":I
    .restart local p1    # "destAddress":J
    .restart local p3    # "destLength":I
    :cond_39
    move-wide v6, p1

    move v8, p3

    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    .restart local v6    # "destAddress":J
    .restart local v8    # "destLength":I
    :try_start_3b
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "Connection closed"

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v6    # "destAddress":J
    .end local v8    # "destLength":I
    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    throw p1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    .line 696
    .restart local v6    # "destAddress":J
    .restart local v8    # "destLength":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    :catchall_43
    move-exception v0

    move-object p1, v0

    goto :goto_4a

    .end local v6    # "destAddress":J
    .end local v8    # "destLength":I
    .restart local p1    # "destAddress":J
    .restart local p3    # "destLength":I
    :catchall_46
    move-exception v0

    move-wide v6, p1

    move v8, p3

    move-object p1, v0

    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    .restart local v6    # "destAddress":J
    .restart local v8    # "destLength":I
    :goto_4a
    iget-object p2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 697
    throw p1
.end method

.method blacklist writeDirectByteBuffer(JI)I
    .registers 14
    .param p1, "address"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 677
    :try_start_d
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 680
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetssl(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgethandshakeCallbacks(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_46

    move-wide v6, p1

    move v8, p3

    .end local p1    # "address":J
    .end local p3    # "length":I
    .local v6, "address":J
    .local v8, "length":I
    :try_start_27
    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_43

    .line 683
    iget-object p2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 680
    return p1

    .line 678
    .end local v6    # "address":J
    .end local v8    # "length":I
    .restart local p1    # "address":J
    .restart local p3    # "length":I
    :cond_39
    move-wide v6, p1

    move v8, p3

    .end local p1    # "address":J
    .end local p3    # "length":I
    .restart local v6    # "address":J
    .restart local v8    # "length":I
    :try_start_3b
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "Connection closed"

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v6    # "address":J
    .end local v8    # "length":I
    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    throw p1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    .line 683
    .restart local v6    # "address":J
    .restart local v8    # "length":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    :catchall_43
    move-exception v0

    move-object p1, v0

    goto :goto_4a

    .end local v6    # "address":J
    .end local v8    # "length":I
    .restart local p1    # "address":J
    .restart local p3    # "length":I
    :catchall_46
    move-exception v0

    move-wide v6, p1

    move v8, p3

    move-object p1, v0

    .end local p1    # "address":J
    .end local p3    # "length":I
    .restart local v6    # "address":J
    .restart local v8    # "length":I
    :goto_4a
    iget-object p2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeSsl;->-$$Nest$fgetlock(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 684
    throw p1
.end method
