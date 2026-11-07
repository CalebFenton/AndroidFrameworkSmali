.class final Ljava/util/Spliterators$EmptySpliterator$OfRef;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Spliterators$EmptySpliterator<",
        "TT;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "-TT;>;>;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 908
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 905
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-super {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 905
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfRef;, "Ljava/util/Spliterators$EmptySpliterator$OfRef<TT;>;"
    invoke-super {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
