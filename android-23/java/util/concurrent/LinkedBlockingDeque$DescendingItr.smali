.class Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;
.super Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingDeque",
        "<TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 0

    #@0
    .prologue
    .line 1120
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.DescendingItr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedBlockingDeque;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.DescendingItr;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;-><init>(Ljava/util/concurrent/LinkedBlockingDeque;)V

    #@3
    return-void
.end method


# virtual methods
.method firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.DescendingItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@2
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingDeque;->last:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@4
    return-object v0
.end method

.method nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1122
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$DescendingItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.DescendingItr;"
    .local p1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->prev:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@2
    return-object v0
.end method
