.class Lcom/android/server/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IntentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TF;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 318
    .local p0, "this":Lcom/android/server/IntentResolver$IteratorWrapper;, "Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    .local p1, "this$0":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    iput-object p1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 319
    iput-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    #@7
    .line 318
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 323
    .local p0, "this":Lcom/android/server/IntentResolver$IteratorWrapper;, "Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    #@0
    .prologue
    .line 327
    .local p0, "this":Lcom/android/server/IntentResolver$IteratorWrapper;, "Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/IntentFilter;

    #@8
    iput-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    #@a
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 326
    .local p0, "this":Lcom/android/server/IntentResolver$IteratorWrapper;, "Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    invoke-virtual {p0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Landroid/content/IntentFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 331
    .local p0, "this":Lcom/android/server/IntentResolver$IteratorWrapper;, "Lcom/android/server/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 332
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    #@6
    iget-object v1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Landroid/content/IntentFilter;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    #@b
    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@10
    .line 330
    return-void
.end method
