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
.field cur:I

.field final synthetic this$0:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "this$0"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 132
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@8
    .line 131
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "block"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "block":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/CharSequence$1CharIterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "block"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 148
    :goto_0
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@2
    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 149
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    #@c
    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@e
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@15
    .line 148
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    iput v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@1b
    goto :goto_0

    #@1c
    .line 147
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 135
    iget v0, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@2
    iget-object v1, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextInt()I
    .locals 3

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/CharSequence$1CharIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 140
    iget-object v0, p0, Ljava/lang/CharSequence$1CharIterator;->this$0:Ljava/lang/CharSequence;

    #@8
    iget v1, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@a
    add-int/lit8 v2, v1, 0x1

    #@c
    iput v2, p0, Ljava/lang/CharSequence$1CharIterator;->cur:I

    #@e
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 142
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@15
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@18
    throw v0
.end method
