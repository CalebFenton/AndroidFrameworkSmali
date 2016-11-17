.class Landroid/test/LoaderTestCase$3;
.super Landroid/os/Handler;
.source "LoaderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/LoaderTestCase;->getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/LoaderTestCase;

.field final synthetic val$listener:Landroid/content/Loader$OnLoadCompleteListener;

.field final synthetic val$loader:Landroid/content/Loader;


# direct methods
.method constructor <init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/LoaderTestCase;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 77
    .local p3, "val$loader":Landroid/content/Loader;, "Landroid/content/Loader<TT;>;"
    .local p4, "val$listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TT;>;"
    iput-object p1, p0, Landroid/test/LoaderTestCase$3;->this$0:Landroid/test/LoaderTestCase;

    #@2
    iput-object p3, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    #@4
    iput-object p4, p0, Landroid/test/LoaderTestCase$3;->val$listener:Landroid/content/Loader$OnLoadCompleteListener;

    #@6
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    #@2
    iget-object v1, p0, Landroid/test/LoaderTestCase$3;->val$listener:Landroid/content/Loader$OnLoadCompleteListener;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v2, v1}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    #@8
    .line 81
    iget-object v0, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    #@a
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    #@d
    .line 79
    return-void
.end method
