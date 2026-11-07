.class Landroid/media/internal/guava_common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Landroid/media/internal/guava_common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/base/Splitter;->on(Landroid/media/internal/guava_common/base/CharMatcher;)Landroid/media/internal/guava_common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$separatorMatcher:Landroid/media/internal/guava_common/base/CharMatcher;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/base/CharMatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Landroid/media/internal/guava_common/base/Splitter$1;->val$separatorMatcher:Landroid/media/internal/guava_common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist iterator(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;
    .registers 4

    .line 146
    new-instance v0, Landroid/media/internal/guava_common/base/Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/internal/guava_common/base/Splitter$1$1;-><init>(Landroid/media/internal/guava_common/base/Splitter$1;Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic blacklist iterator(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/base/Splitter$1;->iterator(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;

    move-result-object p0

    return-object p0
.end method
