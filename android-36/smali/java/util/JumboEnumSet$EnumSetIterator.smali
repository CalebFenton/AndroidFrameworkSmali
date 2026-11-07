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
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist lastReturned:J

.field blacklist lastReturnedIndex:I

.field final synthetic blacklist this$0:Ljava/util/JumboEnumSet;

.field blacklist unseen:J

.field blacklist unseenIndex:I


# direct methods
.method constructor blacklist <init>(Ljava/util/JumboEnumSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    iput-object p1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    .line 114
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 119
    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 122
    invoke-static {p1}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object p1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 123
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 7

    .line 127
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    nop

    :goto_1
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_26

    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v4}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_26

    .line 128
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v0}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    iget v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    aget-wide v0, v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    goto :goto_1

    .line 129
    :cond_26
    iget-wide v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method public blacklist next()Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 135
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 137
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 138
    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 139
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 140
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    iget-object v0, v0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    shl-int/lit8 v1, v1, 0x6

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 140
    return-object v0

    .line 136
    :cond_2b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 98
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 11

    .line 146
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 148
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v0}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v0, v0, v1

    .line 149
    .local v0, "oldElements":J
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v4}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    iget v5, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v6, v4, v5

    iget-wide v8, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    not-long v8, v8

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 150
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v4}, Ljava/util/JumboEnumSet;->-$$Nest$fgetelements(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    iget v5, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v4, v4, v5

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3b

    .line 151
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v4}, Ljava/util/JumboEnumSet;->-$$Nest$fgetsize(Ljava/util/JumboEnumSet;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/util/JumboEnumSet;->-$$Nest$fputsize(Ljava/util/JumboEnumSet;I)V

    .line 153
    :cond_3b
    iput-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 154
    return-void

    .line 147
    .end local v0    # "oldElements":J
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
