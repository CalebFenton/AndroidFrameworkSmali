.class Landroid/transition/Transition$ArrayListManager;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2403
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 2404
    new-instance p0, Ljava/util/ArrayList;

    #@4
    .end local p0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 2406
    .restart local p0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 2407
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 2409
    :cond_1
    return-object p0
.end method

.method static remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2418
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    #@2
    .line 2419
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 2420
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2421
    const/4 p0, 0x0

    #@c
    .line 2424
    .end local p0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_0
    return-object p0
.end method
