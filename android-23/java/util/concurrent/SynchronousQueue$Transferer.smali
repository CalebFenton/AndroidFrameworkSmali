.class abstract Ljava/util/concurrent/SynchronousQueue$Transferer;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Transferer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 138
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$Transferer;, "Ljava/util/concurrent/SynchronousQueue<TE;>.Transferer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation
.end method
