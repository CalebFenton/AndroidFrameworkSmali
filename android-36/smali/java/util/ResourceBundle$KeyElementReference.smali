.class Ljava/util/ResourceBundle$KeyElementReference;
.super Ljava/lang/ref/WeakReference;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/util/ResourceBundle$CacheKeyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyElementReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;",
        "Ljava/util/ResourceBundle$CacheKeyReference;"
    }
.end annotation


# instance fields
.field private final blacklist cacheKey:Ljava/util/ResourceBundle$CacheKey;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V
    .registers 4
    .param p3, "key"    # Ljava/util/ResourceBundle$CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ResourceBundle$CacheKey;",
            ")V"
        }
    .end annotation

    .line 834
    .local p0, "this":Ljava/util/ResourceBundle$KeyElementReference;, "Ljava/util/ResourceBundle$KeyElementReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 835
    iput-object p3, p0, Ljava/util/ResourceBundle$KeyElementReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 836
    return-void
.end method


# virtual methods
.method public blacklist getCacheKey()Ljava/util/ResourceBundle$CacheKey;
    .registers 2

    .line 840
    .local p0, "this":Ljava/util/ResourceBundle$KeyElementReference;, "Ljava/util/ResourceBundle$KeyElementReference<TT;>;"
    iget-object v0, p0, Ljava/util/ResourceBundle$KeyElementReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    return-object v0
.end method
