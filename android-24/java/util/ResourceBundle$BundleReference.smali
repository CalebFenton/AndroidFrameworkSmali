.class final Ljava/util/ResourceBundle$BundleReference;
.super Ljava/lang/ref/SoftReference;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/util/ResourceBundle$CacheKeyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BundleReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Ljava/util/ResourceBundle;",
        ">;",
        "Ljava/util/ResourceBundle$CacheKeyReference;"
    }
.end annotation


# instance fields
.field private cacheKey:Ljava/util/ResourceBundle$CacheKey;


# direct methods
.method constructor <init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V
    .locals 0
    .param p1, "referent"    # Ljava/util/ResourceBundle;
    .param p2, "q"    # Ljava/lang/ref/ReferenceQueue;
    .param p3, "key"    # Ljava/util/ResourceBundle$CacheKey;

    #@0
    .prologue
    .line 693
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 694
    iput-object p3, p0, Ljava/util/ResourceBundle$BundleReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@5
    .line 692
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/util/ResourceBundle$CacheKey;
    .locals 1

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Ljava/util/ResourceBundle$BundleReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@2
    return-object v0
.end method
