.class Landroid/test/LoaderTestCase$2;
.super Ljava/lang/Object;
.source "LoaderTestCase.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/LoaderTestCase;->getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/LoaderTestCase;

.field final synthetic val$queue:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/LoaderTestCase;

    #@0
    .prologue
    .line 61
    .local p2, "val$queue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TT;>;"
    iput-object p1, p0, Landroid/test/LoaderTestCase$2;->this$0:Landroid/test/LoaderTestCase;

    #@2
    iput-object p2, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    .local p1, "completedLoader":Landroid/content/Loader;, "Landroid/content/Loader<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    #@3
    .line 66
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    #@6
    .line 67
    invoke-virtual {p1}, Landroid/content/Loader;->reset()V

    #@9
    .line 70
    iget-object v0, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    #@b
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    #@e
    .line 63
    return-void
.end method
