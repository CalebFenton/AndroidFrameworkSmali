.class final Landroid/app/ResourcesManager$1;
.super Ljava/lang/Object;
.source "ResourcesManager.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/content/res/Resources;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "weakRef"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 63
    check-cast p1, Ljava/lang/ref/WeakReference;

    #@2
    .end local p1    # "weakRef":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager$1;->test(Ljava/lang/ref/WeakReference;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public test(Ljava/lang/ref/WeakReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    const/4 v0, 0x1

    #@1
    .line 64
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
