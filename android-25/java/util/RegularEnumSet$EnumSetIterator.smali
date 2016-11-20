.class Ljava/util/RegularEnumSet$EnumSetIterator;
.super Ljava/lang/Object;
.source "RegularEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/RegularEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field lastReturned:J

.field final synthetic this$0:Ljava/util/RegularEnumSet;

.field unseen:J


# direct methods
.method constructor <init>(Ljava/util/RegularEnumSet;)V
    .locals 2

    #@0
    .prologue
    .line 91
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    .local p1, "this$0":Ljava/util/RegularEnumSet;, "Ljava/util/RegularEnumSet<TE;>;"
    iput-object p1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 89
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@9
    .line 92
    invoke-static {p1}, Ljava/util/RegularEnumSet;->-get0(Ljava/util/RegularEnumSet;)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@f
    .line 91
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .line 96
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 101
    new-instance v0, Ljava/util/NoSuchElementException;

    #@a
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@d
    throw v0

    #@e
    .line 102
    :cond_0
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@10
    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@12
    neg-long v2, v2

    #@13
    and-long/2addr v0, v2

    #@14
    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@16
    .line 103
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@18
    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@1a
    sub-long/2addr v0, v2

    #@1b
    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    #@1d
    .line 104
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    #@1f
    iget-object v0, v0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    #@21
    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@26
    move-result v1

    #@27
    aget-object v0, v0, v1

    #@29
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 99
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/RegularEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 8

    #@0
    .prologue
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    const-wide/16 v6, 0x0

    #@2
    .line 108
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@4
    cmp-long v0, v0, v6

    #@6
    if-nez v0, :cond_0

    #@8
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v0

    #@e
    .line 110
    :cond_0
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    #@10
    invoke-static {v0}, Ljava/util/RegularEnumSet;->-get0(Ljava/util/RegularEnumSet;)J

    #@13
    move-result-wide v2

    #@14
    iget-wide v4, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@16
    not-long v4, v4

    #@17
    and-long/2addr v2, v4

    #@18
    invoke-static {v0, v2, v3}, Ljava/util/RegularEnumSet;->-set0(Ljava/util/RegularEnumSet;J)J

    #@1b
    .line 111
    iput-wide v6, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    #@1d
    .line 107
    return-void
.end method
