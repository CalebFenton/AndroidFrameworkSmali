.class public Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.super Ljava/lang/Object;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    #@0
    .prologue
    .line 2036
    return-void
.end method
