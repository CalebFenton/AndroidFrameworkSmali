.class final Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnicastResponder"
.end annotation


# instance fields
.field private final mSolication:[B

.field private final solicitor:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    #@0
    .prologue
    .line 628
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@5
    .line 629
    new-instance v0, Ljava/net/InetSocketAddress;

    #@7
    invoke-direct {v0}, Ljava/net/InetSocketAddress;-><init>()V

    #@a
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    #@c
    .line 633
    const/16 v0, 0x500

    #@e
    new-array v0, v0, [B

    #@10
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    #@12
    .line 628
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 637
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 641
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@a
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-get6(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    #@10
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    #@12
    array-length v3, v2

    #@13
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    #@15
    const/4 v2, 0x0

    #@16
    const/4 v4, 0x0

    #@17
    .line 640
    invoke-static/range {v0 .. v5}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    #@1a
    move-result v7

    #@1b
    .line 643
    .local v7, "rval":I
    const/4 v0, 0x1

    #@1c
    if-lt v7, v0, :cond_0

    #@1e
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    #@20
    const/4 v1, 0x0

    #@21
    aget-byte v0, v0, v1

    #@23
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->-get0()B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v1

    #@27
    if-ne v0, v1, :cond_0

    #@29
    .line 653
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@2b
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    #@2d
    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    #@30
    goto :goto_0

    #@31
    .line 646
    .end local v7    # "rval":I
    :catch_0
    move-exception v6

    #@32
    .line 647
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    #@34
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->-wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_0

    #@3a
    .line 648
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->-get1()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "recvfrom error: "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    goto :goto_0

    #@56
    .line 636
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
