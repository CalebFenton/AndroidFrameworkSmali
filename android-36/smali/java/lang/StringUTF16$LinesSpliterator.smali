.class final Ljava/lang/StringUTF16$LinesSpliterator;
.super Ljava/lang/Object;
.source "StringUTF16.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringUTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinesSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist fence:I

.field private blacklist index:I

.field private blacklist value:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/StringUTF16$LinesSpliterator;-><init>(Ljava/lang/String;II)V

    .line 1026
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    .line 1035
    iput p2, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    .line 1036
    add-int v0, p2, p3

    iput v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    .line 1037
    return-void
.end method

.method private blacklist indexOfLineSeparator(I)I
    .registers 5
    .param p1, "start"    # I

    .line 1040
    move v0, p1

    .local v0, "current":I
    :goto_1
    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-ge v0, v1, :cond_18

    .line 1041
    iget-object v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/StringUTF16;->getChar(Ljava/lang/String;I)C

    move-result v1

    .line 1042
    .local v1, "ch":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_17

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    goto :goto_17

    .line 1040
    .end local v1    # "ch":C
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1043
    .restart local v1    # "ch":C
    :cond_17
    :goto_17
    return v0

    .line 1046
    .end local v0    # "current":I
    .end local v1    # "ch":C
    :cond_18
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    return v0
.end method

.method private blacklist next()Ljava/lang/String;
    .registers 5

    .line 1063
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    .line 1064
    .local v0, "start":I
    invoke-direct {p0, v0}, Ljava/lang/StringUTF16$LinesSpliterator;->indexOfLineSeparator(I)I

    move-result v1

    .line 1065
    .local v1, "end":I
    invoke-direct {p0, v1}, Ljava/lang/StringUTF16$LinesSpliterator;->skipLineSeparator(I)I

    move-result v2

    iput v2, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    .line 1066
    iget-object v2, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    sub-int v3, v1, v0

    invoke-static {v2, v0, v3}, Ljava/lang/StringUTF16;->newString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist skipLineSeparator(I)I
    .registers 5
    .param p1, "start"    # I

    .line 1050
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-ge p1, v0, :cond_24

    .line 1051
    iget-object v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/StringUTF16;->getChar(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_21

    .line 1052
    add-int/lit8 v0, p1, 0x1

    .line 1053
    .local v0, "next":I
    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/StringUTF16;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    .line 1054
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1057
    .end local v0    # "next":I
    :cond_21
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 1059
    :cond_24
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    return v0
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1110
    const/16 v0, 0x510

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1105
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1083
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    if-eqz p1, :cond_11

    .line 1086
    :goto_2
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-eq v0, v1, :cond_10

    .line 1087
    invoke-direct {p0}, Ljava/lang/StringUTF16$LinesSpliterator;->next()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 1089
    :cond_10
    return-void

    .line 1084
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "forEachRemaining action missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1071
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    if-eqz p1, :cond_13

    .line 1074
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-eq v0, v1, :cond_11

    .line 1075
    invoke-direct {p0}, Ljava/lang/StringUTF16$LinesSpliterator;->next()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1076
    const/4 v0, 0x1

    return v0

    .line 1078
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 1072
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tryAdvance action missing"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1093
    iget v0, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 1094
    .local v0, "half":I
    invoke-direct {p0, v0}, Ljava/lang/StringUTF16$LinesSpliterator;->indexOfLineSeparator(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringUTF16$LinesSpliterator;->skipLineSeparator(I)I

    move-result v1

    .line 1095
    .local v1, "mid":I
    iget v2, p0, Ljava/lang/StringUTF16$LinesSpliterator;->fence:I

    if-ge v1, v2, :cond_21

    .line 1096
    iget v2, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    .line 1097
    .local v2, "start":I
    iput v1, p0, Ljava/lang/StringUTF16$LinesSpliterator;->index:I

    .line 1098
    new-instance v3, Ljava/lang/StringUTF16$LinesSpliterator;

    iget-object v4, p0, Ljava/lang/StringUTF16$LinesSpliterator;->value:Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/StringUTF16$LinesSpliterator;-><init>(Ljava/lang/String;II)V

    return-object v3

    .line 1100
    .end local v2    # "start":I
    :cond_21
    const/4 v2, 0x0

    return-object v2
.end method
