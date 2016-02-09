.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encoder:Landroid/view/ViewHierarchyEncoder;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;
    .param p2, "val$encoder"    # Landroid/view/ViewHierarchyEncoder;
    .param p3, "val$latch"    # Ljava/util/concurrent/CountDownLatch;

    #@0
    .prologue
    .line 839
    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    #@2
    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    #@4
    iput-object p3, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    #@7
    .line 843
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@c
    .line 841
    return-void
.end method
