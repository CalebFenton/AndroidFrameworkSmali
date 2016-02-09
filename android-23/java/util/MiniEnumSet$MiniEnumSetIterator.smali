.class Ljava/util/MiniEnumSet$MiniEnumSetIterator;
.super Ljava/lang/Object;
.source "MiniEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/MiniEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniEnumSetIterator"
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

.field private last:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mask:J

.field final synthetic this$0:Ljava/util/MiniEnumSet;


# direct methods
.method private constructor <init>(Ljava/util/MiniEnumSet;)V
    .locals 4

    #@0
    .prologue
    .line 45
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    .local p1, "this$0":Ljava/util/MiniEnumSet;, "Ljava/util/MiniEnumSet<TE;>;"
    iput-object p1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 51
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    #@7
    invoke-static {v0}, Ljava/util/MiniEnumSet;->-get0(Ljava/util/MiniEnumSet;)J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@d
    .line 56
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@f
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@11
    neg-long v2, v2

    #@12
    and-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    #@15
    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$MiniEnumSetIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/MiniEnumSet;

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-direct {p0, p1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .line 64
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-wide v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

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
    .line 68
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v1, v2, v4

    #@6
    if-nez v1, :cond_0

    #@8
    .line 69
    new-instance v1, Ljava/util/NoSuchElementException;

    #@a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@d
    throw v1

    #@e
    .line 72
    :cond_0
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    #@10
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@13
    move-result v0

    #@14
    .line 73
    .local v0, "ordinal":I
    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    #@16
    invoke-static {v1}, Ljava/util/MiniEnumSet;->-get1(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;

    #@19
    move-result-object v1

    #@1a
    aget-object v1, v1, v0

    #@1c
    iput-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    #@1e
    .line 75
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@20
    iget-wide v4, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    #@22
    not-long v4, v4

    #@23
    and-long/2addr v2, v4

    #@24
    iput-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@26
    .line 76
    iget-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@28
    iget-wide v4, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->currentBits:J

    #@2a
    neg-long v4, v4

    #@2b
    and-long/2addr v2, v4

    #@2c
    iput-wide v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->mask:J

    #@2e
    .line 78
    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    #@30
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 67
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    invoke-virtual {p0}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->next()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/MiniEnumSet$MiniEnumSetIterator;, "Ljava/util/MiniEnumSet<TE;>.MiniEnumSetIterator;"
    const/4 v2, 0x0

    #@1
    .line 82
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v0

    #@b
    .line 86
    :cond_0
    iget-object v0, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->this$0:Ljava/util/MiniEnumSet;

    #@d
    iget-object v1, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/MiniEnumSet;->remove(Ljava/lang/Object;)Z

    #@12
    .line 87
    iput-object v2, p0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;->last:Ljava/lang/Enum;

    #@14
    .line 81
    return-void
.end method
