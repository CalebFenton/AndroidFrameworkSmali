.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/apf/ApfFilter;
    .param p2, "socket"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 75
    const/16 v0, 0x5ea

    #@7
    new-array v0, v0, [B

    #@9
    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@b
    .line 80
    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@d
    .line 79
    return-void
.end method


# virtual methods
.method public halt()V
    .locals 2

    #@0
    .prologue
    .line 84
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@3
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@5
    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 83
    :goto_0
    return-void

    #@9
    .line 88
    :catch_0
    move-exception v0

    #@a
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 6

    #@0
    .prologue
    .line 93
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@2
    const-string/jumbo v3, "begin monitoring"

    #@5
    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->-wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    #@8
    .line 94
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@a
    if-nez v2, :cond_1

    #@c
    .line 96
    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    #@e
    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@10
    iget-object v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@12
    array-length v4, v4

    #@13
    const/4 v5, 0x0

    #@14
    invoke-static {v2, v3, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    #@17
    move-result v1

    #@18
    .line 97
    .local v1, "length":I
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    #@1a
    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    #@1c
    invoke-static {v2, v3, v1}, Landroid/net/apf/ApfFilter;->-wrap3(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 98
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    #@21
    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    #@23
    if-nez v2, :cond_0

    #@25
    .line 100
    const-string/jumbo v2, "ApfFilter"

    #@28
    const-string/jumbo v3, "Read error"

    #@2b
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0

    #@2f
    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
