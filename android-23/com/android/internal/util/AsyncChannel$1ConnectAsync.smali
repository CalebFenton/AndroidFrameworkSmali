.class final Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectAsync"
.end annotation


# instance fields
.field mDstClassName:Ljava/lang/String;

.field mDstPackageName:Ljava/lang/String;

.field mSrcCtx:Landroid/content/Context;

.field mSrcHdlr:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "srcContext"    # Landroid/content/Context;
    .param p3, "srcHandler"    # Landroid/os/Handler;
    .param p4, "dstPackageName"    # Ljava/lang/String;
    .param p5, "dstClassName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 327
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcCtx:Landroid/content/Context;

    #@7
    .line 328
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcHdlr:Landroid/os/Handler;

    #@9
    .line 329
    iput-object p4, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstPackageName:Ljava/lang/String;

    #@b
    .line 330
    iput-object p5, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstClassName:Ljava/lang/String;

    #@d
    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcCtx:Landroid/content/Context;

    #@4
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcHdlr:Landroid/os/Handler;

    #@6
    iget-object v4, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstPackageName:Ljava/lang/String;

    #@8
    .line 336
    iget-object v5, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstClassName:Ljava/lang/String;

    #@a
    .line 335
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I

    #@d
    move-result v0

    #@e
    .line 337
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@10
    invoke-static {v1, v0}, Lcom/android/internal/util/AsyncChannel;->-wrap1(Lcom/android/internal/util/AsyncChannel;I)V

    #@13
    .line 334
    return-void
.end method
