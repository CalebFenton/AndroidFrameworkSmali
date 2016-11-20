.class final Ljava/util/logging/LogManager$LoggerWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggerWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private node:Ljava/util/logging/LogManager$LogNode;

.field private parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    #@0
    .prologue
    .line 831
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->this$0:Ljava/util/logging/LogManager;

    #@2
    .line 832
    invoke-static {p1}, Ljava/util/logging/LogManager;->-get1(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@9
    .line 834
    invoke-virtual {p2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    #@f
    .line 831
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 839
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 842
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    #@7
    iget-object v1, v1, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    #@9
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager$LoggerContext;->removeLogger(Ljava/lang/String;)V

    #@e
    .line 843
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    #@10
    .line 845
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    #@12
    iput-object v3, v1, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    #@14
    .line 846
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    #@16
    .line 849
    :cond_0
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 851
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    #@1c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/logging/Logger;

    #@22
    .line 852
    .local v0, "parent":Ljava/util/logging/Logger;
    if-eqz v0, :cond_1

    #@24
    .line 855
    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V

    #@27
    .line 857
    :cond_1
    iput-object v3, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    #@29
    .line 838
    .end local v0    # "parent":Ljava/util/logging/Logger;
    :cond_2
    return-void
.end method

.method setNode(Ljava/util/logging/LogManager$LogNode;)V
    .locals 0
    .param p1, "node"    # Ljava/util/logging/LogManager$LogNode;

    #@0
    .prologue
    .line 863
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    #@2
    .line 862
    return-void
.end method

.method setParentRef(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 868
    .local p1, "parentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/logging/Logger;>;"
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    #@2
    .line 867
    return-void
.end method
