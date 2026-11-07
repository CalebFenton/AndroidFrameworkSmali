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
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist lastReturned:J

.field final synthetic blacklist this$0:Ljava/util/RegularEnumSet;

.field blacklist unseen:J


# direct methods
.method constructor blacklist <init>(Ljava/util/RegularEnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iput-object p1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 93
    invoke-static {p1}, Ljava/util/RegularEnumSet;->-$$Nest$fgetelements(Ljava/util/RegularEnumSet;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    .line 94
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 97
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist next()Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 104
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 105
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    .line 106
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    iget-object v0, v0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    iget-wide v1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 103
    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 79
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/RegularEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 9

    .line 110
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 112
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    invoke-static {v0}, Ljava/util/RegularEnumSet;->-$$Nest$fgetelements(Ljava/util/RegularEnumSet;)J

    move-result-wide v4

    iget-wide v6, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    not-long v6, v6

    and-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Ljava/util/RegularEnumSet;->-$$Nest$fputelements(Ljava/util/RegularEnumSet;J)V

    .line 113
    iput-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 114
    return-void

    .line 111
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
