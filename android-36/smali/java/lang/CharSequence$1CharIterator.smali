.class Ljava/lang/CharSequence$1CharIterator;
.super Ljava/lang/Object;
.source "CharSequence.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharIterator"
.end annotation


# instance fields
.field blacklist cur:I

.field final synthetic blacklist this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    return-void
.end method


# virtual methods
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

    .line 149
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CharIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    .line 166
    nop

    :goto_1
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 167
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 166
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    goto :goto_1

    .line 169
    :cond_1d
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 153
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api nextInt()I
    .registers 4

    .line 157
    invoke-virtual {p0}, Ljava/lang/CharSequence$1CharIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 160
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
