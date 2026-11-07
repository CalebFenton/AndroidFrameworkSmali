.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;
.source "CronetHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CronetUrlRequestCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 530
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;-><init>()V

    return-void
.end method

.method private blacklist setResponseDataCompleted(Ljava/io/IOException;)V
    .registers 4
    .param p1, "exception"    # Ljava/io/IOException;

    .line 624
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmException(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/io/IOException;)V

    .line 625
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmInputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 626
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmInputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetInputStream;->setResponseDataCompleted(Ljava/io/IOException;)V

    .line 628
    :cond_16
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmOutputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 629
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmOutputStream(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetOutputStream;->setRequestCompleted(Ljava/io/IOException;)V

    .line 631
    :cond_27
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmHasResponseHeadersOrCompleted(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Z)V

    .line 632
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->quit()V

    .line 633
    return-void
.end method


# virtual methods
.method public blacklist onCanceled(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 609
    nop

    .line 610
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onCanceled"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 612
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 613
    new-instance v1, Ljava/io/IOException;

    const-string v2, "disconnect() called"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1c

    .line 614
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 615
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1b
    return-void

    .line 609
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw v1
.end method

.method public blacklist onFailed(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 7
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "exception"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 596
    nop

    .line 597
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onFailed"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 599
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    if-eqz p3, :cond_19

    .line 602
    :try_start_9
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 603
    invoke-direct {p0, p3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_17

    .line 604
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 605
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_16
    return-void

    .line 596
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_17
    move-exception v1

    goto :goto_21

    .line 600
    :cond_19
    :try_start_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception cannot be null in onFailed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;
    .end local p1    # "request":Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .end local p2    # "info":Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .end local p3    # "exception":Landroid/net/connectivity/org/chromium/net/CronetException;
    throw v1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_17

    .line 596
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;
    .restart local p1    # "request":Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .restart local p2    # "info":Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .restart local p3    # "exception":Landroid/net/connectivity/org/chromium/net/CronetException;
    :goto_21
    if-eqz v0, :cond_2b

    :try_start_23
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    throw v1
.end method

.method public blacklist onReadCompleted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 547
    nop

    .line 548
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onReadCompleted"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 550
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 551
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->quit()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1b

    .line 552
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 553
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_1a
    return-void

    .line 547
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
.end method

.method public blacklist onRedirectReceived(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;
    .param p3, "newLocationUrl"    # Ljava/lang/String;

    .line 558
    nop

    .line 559
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onRedirectReceived"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 562
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmOnRedirectCalled(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Z)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_64

    .line 564
    :try_start_d
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 565
    .local v1, "newUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    # getter for: Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->access$000(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 566
    .local v2, "sameProtocol":Z
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    # getter for: Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->access$100(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 569
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    # setter for: Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;
    invoke-static {v3, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->access$202(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 571
    :cond_31
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    # getter for: Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z
    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->access$300(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Z

    move-result v3

    if-eqz v3, :cond_4a

    if-eqz v2, :cond_4a

    .line 572
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmRequest(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/UrlRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->followRedirect()V
    :try_end_44
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_44} :catch_4b
    .catchall {:try_start_d .. :try_end_44} :catchall_64

    .line 581
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 573
    :cond_49
    return-void

    .line 577
    .end local v1    # "newUrl":Ljava/net/URL;
    .end local v2    # "sameProtocol":Z
    :cond_4a
    goto :goto_4c

    .line 575
    :catch_4b
    move-exception v1

    .line 578
    :goto_4c
    :try_start_4c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 579
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmRequest(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/UrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/UrlRequest;->cancel()V

    .line 580
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V
    :try_end_5e
    .catchall {:try_start_4c .. :try_end_5e} :catchall_64

    .line 581
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 582
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_63
    return-void

    .line 558
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_64
    move-exception v1

    if-eqz v0, :cond_6f

    :try_start_67
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw v1
.end method

.method public blacklist onResponseStarted(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 534
    nop

    .line 535
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onResponseStarted"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 537
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 538
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmHasResponseHeadersOrCompleted(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Z)V

    .line 540
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fgetmMessageLoop(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;)Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/MessageLoop;->quit()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_21

    .line 541
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 542
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_20
    return-void

    .line 534
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_21
    move-exception v1

    if-eqz v0, :cond_2c

    :try_start_24
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    throw v1
.end method

.method public blacklist onSucceeded(Landroid/net/connectivity/org/chromium/net/UrlRequest;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V
    .registers 6
    .param p1, "request"    # Landroid/net/connectivity/org/chromium/net/UrlRequest;
    .param p2, "info"    # Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;

    .line 586
    nop

    .line 587
    const-string v0, "CronetHttpURLConnection.CronetUrlRequestCallback#onSucceeded"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 589
    .local v0, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->this$0:Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-static {v1, p2}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;->-$$Nest$fputmResponseInfo(Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection;Landroid/net/connectivity/org/chromium/net/UrlResponseInfo;)V

    .line 590
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;->setResponseDataCompleted(Ljava/io/IOException;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 591
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 592
    .end local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_15
    return-void

    .line 586
    .restart local v0    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v1
.end method
