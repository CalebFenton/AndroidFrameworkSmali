.class Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleObjectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o _key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 92
    iput-object p1, p0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->_key:Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method greylist-max-o getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->_key:Ljava/lang/Object;

    return-object v0
.end method
