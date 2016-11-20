.class Ljava/util/JumboEnumSet$EnumSetIterator;
.super Ljava/lang/Object;
.source "JumboEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/JumboEnumSet;
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

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/JumboEnumSet;

.field unseen:J

.field unseenIndex:I


# direct methods
.method constructor <init>(Ljava/util/JumboEnumSet;)V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    .local p1, "this$0":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 120
    iput-object p1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 107
    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    #@8
    .line 113
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@c
    .line 118
    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@e
    .line 121
    invoke-static {p1}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@11
    move-result-object v0

    #@12
    aget-wide v0, v0, v2

    #@14
    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@16
    .line 120
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 125
    :goto_0
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    #@a
    iget-object v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@c
    invoke-static {v1}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@f
    move-result-object v1

    #@10
    array-length v1, v1

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 126
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@17
    invoke-static {v0}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@1a
    move-result-object v0

    #@1b
    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    #@21
    aget-wide v0, v0, v1

    #@23
    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@25
    goto :goto_0

    #@26
    .line 127
    :cond_0
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@28
    cmp-long v0, v0, v2

    #@2a
    if-eqz v0, :cond_1

    #@2c
    const/4 v0, 0x1

    #@2d
    :goto_1
    return v0

    #@2e
    :cond_1
    const/4 v0, 0x0

    #@2f
    goto :goto_1
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
    .line 131
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 132
    new-instance v0, Ljava/util/NoSuchElementException;

    #@8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@b
    throw v0

    #@c
    .line 133
    :cond_0
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@e
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@10
    neg-long v2, v2

    #@11
    and-long/2addr v0, v2

    #@12
    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@14
    .line 134
    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    #@16
    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@18
    .line 135
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@1a
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@1c
    sub-long/2addr v0, v2

    #@1d
    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    #@1f
    .line 136
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@21
    iget-object v0, v0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    #@23
    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@25
    shl-int/lit8 v1, v1, 0x6

    #@27
    .line 137
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@29
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@2c
    move-result v2

    #@2d
    .line 136
    add-int/2addr v1, v2

    #@2e
    aget-object v0, v0, v1

    #@30
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 130
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 10

    #@0
    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    const-wide/16 v8, 0x0

    #@2
    .line 141
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@4
    cmp-long v2, v2, v8

    #@6
    if-nez v2, :cond_0

    #@8
    .line 142
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@d
    throw v2

    #@e
    .line 143
    :cond_0
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@10
    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@13
    move-result-object v2

    #@14
    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@16
    aget-wide v0, v2, v3

    #@18
    .line 144
    .local v0, "oldElements":J
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@1a
    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@1d
    move-result-object v2

    #@1e
    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@20
    aget-wide v4, v2, v3

    #@22
    iget-wide v6, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@24
    not-long v6, v6

    #@25
    and-long/2addr v4, v6

    #@26
    aput-wide v4, v2, v3

    #@28
    .line 145
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@2a
    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    #@2d
    move-result-object v2

    #@2e
    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    #@30
    aget-wide v2, v2, v3

    #@32
    cmp-long v2, v0, v2

    #@34
    if-eqz v2, :cond_1

    #@36
    .line 146
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    #@38
    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get1(Ljava/util/JumboEnumSet;)I

    #@3b
    move-result v3

    #@3c
    add-int/lit8 v3, v3, -0x1

    #@3e
    invoke-static {v2, v3}, Ljava/util/JumboEnumSet;->-set0(Ljava/util/JumboEnumSet;I)I

    #@41
    .line 148
    :cond_1
    iput-wide v8, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    #@43
    .line 140
    return-void
.end method
