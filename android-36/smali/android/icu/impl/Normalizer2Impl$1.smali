.class Landroid/icu/impl/Normalizer2Impl$1;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Landroid/icu/util/CodePointMap$ValueFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(I)I
    .registers 3
    .param p1, "value"    # I

    .line 588
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    return v0
.end method
