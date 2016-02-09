.class Ljava/util/HugeEnumSet$HugeEnumSetIterator;
.super Ljava/lang/Object;
.source "HugeEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HugeEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HugeEnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentBits:J

.field private index:I

.field private last:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mask:J

.field final synthetic this$0:Ljava/util/HugeEnumSet;


# direct methods
.method private constructor <init>(Ljava/util/HugeEnumSet;)V
    .locals 2

    #@0
    .prologue
    .line 71
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    .local p1, "this$0":Ljava/util/HugeEnumSet;, "Ljava/util/HugeEnumSet<TE;>;"
    iput-object p1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 54
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@7
    invoke-static {v0}, Ljava/util/HugeEnumSet;->-get0(Ljava/util/HugeEnumSet;)[J

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    aget-wide v0, v0, v1

    #@e
    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@10
    .line 72
    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->computeNextElement()V

    #@13
    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$HugeEnumSetIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HugeEnumSet;

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    invoke-direct {p0, p1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;)V

    #@3
    return-void
.end method


# virtual methods
.method computeNextElement()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    const-wide/16 v2, 0x0

    #@2
    .line 80
    :goto_0
    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 81
    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@a
    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@c
    neg-long v2, v2

    #@d
    and-long/2addr v0, v2

    #@e
    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@10
    .line 82
    return-void

    #@11
    .line 83
    :cond_0
    iget v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    iput v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    #@17
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@19
    invoke-static {v1}, Ljava/util/HugeEnumSet;->-get0(Ljava/util/HugeEnumSet;)[J

    #@1c
    move-result-object v1

    #@1d
    array-length v1, v1

    #@1e
    if-ge v0, v1, :cond_1

    #@20
    .line 84
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@22
    invoke-static {v0}, Ljava/util/HugeEnumSet;->-get0(Ljava/util/HugeEnumSet;)[J

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    #@28
    aget-wide v0, v0, v1

    #@2a
    iput-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@2c
    goto :goto_0

    #@2d
    .line 86
    :cond_1
    iput-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@2f
    .line 87
    return-void
.end method

.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .line 93
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    iget-wide v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public next()Ljava/lang/Enum;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 97
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-nez v1, :cond_0

    #@8
    .line 98
    new-instance v1, Ljava/util/NoSuchElementException;

    #@a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@d
    throw v1

    #@e
    .line 101
    :cond_0
    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@13
    move-result v1

    #@14
    iget v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->index:I

    #@16
    mul-int/lit8 v2, v2, 0x40

    #@18
    add-int v0, v1, v2

    #@1a
    .line 102
    .local v0, "ordinal":I
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@1c
    invoke-static {v1}, Ljava/util/HugeEnumSet;->-get1(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;

    #@1f
    move-result-object v1

    #@20
    aget-object v1, v1, v0

    #@22
    iput-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    #@24
    .line 104
    iget-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@26
    iget-wide v4, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->mask:J

    #@28
    not-long v4, v4

    #@29
    and-long/2addr v2, v4

    #@2a
    iput-wide v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->currentBits:J

    #@2c
    .line 105
    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->computeNextElement()V

    #@2f
    .line 107
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    #@31
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 96
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->next()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/HugeEnumSet$HugeEnumSetIterator;, "Ljava/util/HugeEnumSet<TE;>.HugeEnumSetIterator;"
    const/4 v2, 0x0

    #@1
    .line 111
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 115
    :cond_0
    iget-object v0, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->this$0:Ljava/util/HugeEnumSet;

    #@d
    iget-object v1, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/HugeEnumSet;->remove(Ljava/lang/Object;)Z

    #@12
    .line 116
    iput-object v2, p0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;->last:Ljava/lang/Enum;

    #@14
    .line 110
    return-void
.end method
