.class Ljava/lang/StringUTF16$CharsSpliterator;
.super Ljava/lang/Object;
.source "StringUTF16.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringUTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsSpliterator"
.end annotation


# instance fields
.field private final blacklist array:[B

.field private final blacklist cs:I

.field private final blacklist fence:I

.field private blacklist index:I


# direct methods
.method constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "array"    # [B
    .param p2, "acs"    # I

    .line 1173
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/lang/StringUTF16$CharsSpliterator;-><init>([BIII)V

    .line 1174
    return-void
.end method

.method constructor blacklist <init>([BIII)V
    .registers 6
    .param p1, "array"    # [B
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "acs"    # I

    .line 1176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    iput-object p1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->array:[B

    .line 1178
    iput p2, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    .line 1179
    iput p3, p0, Ljava/lang/StringUTF16$CharsSpliterator;->fence:I

    .line 1180
    or-int/lit8 v0, p4, 0x10

    or-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->cs:I

    .line 1182
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1223
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->cs:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1219
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->fence:I

    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1166
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CharsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1195
    if-eqz p1, :cond_22

    .line 1197
    iget-object v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->array:[B

    move-object v1, v0

    .local v1, "a":[B
    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    iget v2, p0, Ljava/lang/StringUTF16$CharsSpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-lt v0, v2, :cond_21

    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    move v2, v0

    .local v2, "i":I
    if-ltz v0, :cond_21

    iput v3, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    if-ge v2, v3, :cond_21

    .line 1200
    :cond_16
    invoke-static {v1, v2}, Ljava/lang/StringUTF16;->charAt([BI)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1201
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_16

    .line 1203
    .end local v2    # "i":I
    :cond_21
    return-void

    .line 1196
    .end local v1    # "a":[B
    .end local v3    # "hi":I
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1166
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/StringUTF16$CharsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1207
    if-eqz p1, :cond_1c

    .line 1209
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    .line 1210
    .local v0, "i":I
    if-ltz v0, :cond_1a

    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->fence:I

    if-ge v0, v1, :cond_1a

    .line 1211
    iget-object v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->array:[B

    invoke-static {v1, v0}, Ljava/lang/StringUTF16;->charAt([BI)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1212
    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    .line 1213
    return v2

    .line 1215
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 1208
    .end local v0    # "i":I
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 6

    .line 1186
    iget v0, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    .local v0, "lo":I
    iget v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->fence:I

    add-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 1187
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 1188
    const/4 v2, 0x0

    goto :goto_16

    .line 1189
    :cond_b
    new-instance v2, Ljava/lang/StringUTF16$CharsSpliterator;

    iget-object v3, p0, Ljava/lang/StringUTF16$CharsSpliterator;->array:[B

    iput v1, p0, Ljava/lang/StringUTF16$CharsSpliterator;->index:I

    iget v4, p0, Ljava/lang/StringUTF16$CharsSpliterator;->cs:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/StringUTF16$CharsSpliterator;-><init>([BIII)V

    .line 1187
    :goto_16
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CharsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1166
    invoke-virtual {p0}, Ljava/lang/StringUTF16$CharsSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
