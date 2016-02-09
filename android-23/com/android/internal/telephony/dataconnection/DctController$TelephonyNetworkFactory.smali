.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LINES_PER_REQUEST:I = 0x32

.field private static final MAX_REQUESTS_LOGGED:I = 0x14


# instance fields
.field private final mPendingReq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    .line 673
    invoke-direct {p0, p2, p3, p4, p6}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    #@5
    .line 653
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@c
    .line 669
    new-instance v0, Ljava/util/ArrayDeque;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@13
    .line 674
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@15
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v1, "NetworkCapabilities: "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@2c
    .line 672
    return-void
.end method

.method private addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 691
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v5

    #@3
    .line 692
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    #@15
    .line 693
    .local v2, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    #@17
    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    #@19
    iget v6, p1, Landroid/net/NetworkRequest;->requestId:I

    #@1b
    if-ne v4, v6, :cond_0

    #@1d
    .line 694
    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v5

    #@20
    return-object v4

    #@21
    .line 697
    .end local v2    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/LocalLog;

    #@23
    const/16 v4, 0x32

    #@25
    invoke-direct {v0, v4}, Landroid/util/LocalLog;-><init>(I)V

    #@28
    .line 698
    .local v0, "l":Landroid/util/LocalLog;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    #@2a
    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;-><init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    #@2d
    .line 699
    .local v1, "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@2f
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    #@32
    move-result v4

    #@33
    const/16 v6, 0x14

    #@35
    if-lt v4, v6, :cond_2

    #@37
    .line 700
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@39
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 691
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@3e
    monitor-exit v5

    #@3f
    throw v4

    #@40
    .line 702
    .restart local v0    # "l":Landroid/util/LocalLog;
    .restart local v1    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@42
    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    monitor-exit v5

    #@46
    .line 703
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 792
    invoke-super {p0, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 793
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@5
    const-string/jumbo v5, "  "

    #@8
    invoke-direct {v1, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@b
    .line 794
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@e
    .line 795
    const-string/jumbo v5, "Pending Requests:"

    #@11
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 796
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@17
    .line 797
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@1d
    move-result v5

    #@1e
    if-ge v0, v5, :cond_0

    #@20
    .line 798
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Landroid/net/NetworkRequest;

    #@28
    .line 799
    .local v4, "request":Landroid/net/NetworkRequest;
    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@2b
    .line 797
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 801
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@31
    .line 803
    const-string/jumbo v5, "Request History:"

    #@34
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 804
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@3a
    .line 805
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@3c
    monitor-enter v6

    #@3d
    .line 806
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@3f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v3

    #@43
    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_1

    #@49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    #@4f
    .line 807
    .local v2, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    #@51
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@54
    .line 808
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@57
    .line 809
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    #@59
    invoke-virtual {v5, p1, v1, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5c
    .line 810
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 805
    .end local v2    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@61
    monitor-exit v6

    #@62
    throw v5

    #@63
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    #@64
    .line 813
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@67
    .line 814
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@6a
    .line 791
    return-void
.end method

.method public evalPendingRequest()V
    .locals 5

    #@0
    .prologue
    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "evalPendingRequest, pending request size is "

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v4

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@1d
    .line 779
    const/4 v1, 0x0

    #@1e
    .line 780
    .local v1, "key":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@21
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@24
    move-result v3

    #@25
    if-ge v0, v3, :cond_0

    #@27
    .line 781
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@2c
    move-result v1

    #@2d
    .line 782
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroid/net/NetworkRequest;

    #@35
    .line 783
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "evalPendingRequest: request = "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@4c
    .line 785
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@4e
    iget v4, v2, Landroid/net/NetworkRequest;->requestId:I

    #@50
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    #@53
    .line 786
    const/4 v3, 0x0

    #@54
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    #@57
    .line 780
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 777
    .end local v2    # "request":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 774
    const-string/jumbo v0, "DctController"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[TNF "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 773
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 6
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    #@0
    .prologue
    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "Cellular needs Network for "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@17
    .line 712
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;

    #@1a
    move-result-object v2

    #@1b
    .line 714
    .local v2, "l":Landroid/util/LocalLog;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1d
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@20
    move-result v4

    #@21
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    #@24
    move-result v4

    #@25
    if-nez v4, :cond_0

    #@27
    .line 715
    const-string/jumbo v3, "SubId not useable, pending request."

    #@2a
    .line 716
    .local v3, "str":Ljava/lang/String;
    const-string/jumbo v4, "SubId not useable, pending request."

    #@2d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@30
    .line 717
    const-string/jumbo v4, "SubId not useable, pending request."

    #@33
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@36
    .line 718
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@38
    iget v5, p1, Landroid/net/NetworkRequest;->requestId:I

    #@3a
    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    .line 719
    return-void

    #@3e
    .line 722
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@40
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    #@43
    move-result v4

    #@44
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@46
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@49
    move-result v5

    #@4a
    if-ne v4, v5, :cond_2

    #@4c
    .line 723
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4e
    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    #@50
    iget-object v1, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@52
    .line 724
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@54
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap3(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 725
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_1

    #@5e
    .line 726
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@60
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnPriority(Ljava/lang/String;)I

    #@63
    move-result v5

    #@64
    invoke-static {v4, p1, v5, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap2(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I

    #@67
    .line 708
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :goto_0
    return-void

    #@68
    .line 728
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_1
    const-string/jumbo v3, "Unsupported APN"

    #@6b
    .line 729
    .restart local v3    # "str":Ljava/lang/String;
    const-string/jumbo v4, "Unsupported APN"

    #@6e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@71
    .line 730
    const-string/jumbo v4, "Unsupported APN"

    #@74
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@77
    goto :goto_0

    #@78
    .line 733
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "Request not send, put to pending"

    #@7b
    .line 734
    .restart local v3    # "str":Ljava/lang/String;
    const-string/jumbo v4, "Request not send, put to pending"

    #@7e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@81
    .line 735
    const-string/jumbo v4, "Request not send, put to pending"

    #@84
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@87
    .line 736
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@89
    iget v5, p1, Landroid/net/NetworkRequest;->requestId:I

    #@8b
    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@8e
    goto :goto_0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 6
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    .line 742
    const-string/jumbo v3, "Cellular releasing Network for "

    #@3
    .line 743
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@17
    .line 744
    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    #@19
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->requestLog(ILjava/lang/String;)Landroid/util/LocalLog;

    #@1c
    move-result-object v2

    #@1d
    .line 746
    .local v2, "l":Landroid/util/LocalLog;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1f
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@22
    move-result v4

    #@23
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    #@26
    move-result v4

    #@27
    if-nez v4, :cond_1

    #@29
    .line 747
    const-string/jumbo v3, "Sub Info has not been ready, remove request."

    #@2c
    .line 748
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@2f
    .line 749
    if-eqz v2, :cond_0

    #@31
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@34
    .line 750
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    #@36
    iget v5, p1, Landroid/net/NetworkRequest;->requestId:I

    #@38
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    #@3b
    .line 751
    return-void

    #@3c
    .line 754
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@3e
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    #@41
    move-result v4

    #@42
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@44
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@47
    move-result v5

    #@48
    if-ne v4, v5, :cond_4

    #@4a
    .line 755
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4c
    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    #@4e
    iget-object v1, v4, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@50
    .line 756
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@52
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap3(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 757
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_3

    #@5c
    .line 758
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@5e
    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap1(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    #@61
    .line 741
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_2
    :goto_0
    return-void

    #@62
    .line 760
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    const-string/jumbo v3, "Unsupported APN"

    #@65
    .line 761
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@68
    .line 762
    if-eqz v2, :cond_2

    #@6a
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@6d
    goto :goto_0

    #@6e
    .line 766
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    const-string/jumbo v3, "Request not released"

    #@71
    .line 767
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    #@74
    .line 768
    if-eqz v2, :cond_2

    #@76
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@79
    goto :goto_0
.end method

.method public requestLog(ILjava/lang/String;)Landroid/util/LocalLog;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "l"    # Ljava/lang/String;

    #@0
    .prologue
    .line 679
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@2
    monitor-enter v3

    #@3
    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    #@15
    .line 681
    .local v0, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    #@17
    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    #@19
    if-ne v2, p1, :cond_0

    #@1b
    .line 682
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    #@1d
    invoke-virtual {v2, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@20
    .line 683
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v3

    #@23
    return-object v2

    #@24
    .end local v0    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :cond_1
    monitor-exit v3

    #@25
    .line 687
    const/4 v2, 0x0

    #@26
    return-object v2

    #@27
    .line 679
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
.end method
