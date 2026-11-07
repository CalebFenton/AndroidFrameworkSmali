.class public abstract Landroid/icu/impl/CacheBase;
.super Ljava/lang/Object;
.source "CacheBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    .local p0, "this":Landroid/icu/impl/CacheBase;, "Landroid/icu/impl/CacheBase<TK;TV;TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation
.end method

.method public abstract blacklist getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation
.end method
