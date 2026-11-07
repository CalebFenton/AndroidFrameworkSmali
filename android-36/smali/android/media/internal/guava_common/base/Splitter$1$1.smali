.class Landroid/media/internal/guava_common/base/Splitter$1$1;
.super Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/base/Splitter$1;->iterator(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/base/Splitter$1;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/base/Splitter$1;Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Landroid/media/internal/guava_common/base/Splitter$1$1;->this$0:Landroid/media/internal/guava_common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;-><init>(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method blacklist separatorEnd(I)I
    .registers 2

    .line 0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method blacklist separatorStart(I)I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/media/internal/guava_common/base/Splitter$1$1;->this$0:Landroid/media/internal/guava_common/base/Splitter$1;

    iget-object v0, v0, Landroid/media/internal/guava_common/base/Splitter$1;->val$separatorMatcher:Landroid/media/internal/guava_common/base/CharMatcher;

    iget-object p0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Landroid/media/internal/guava_common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method
