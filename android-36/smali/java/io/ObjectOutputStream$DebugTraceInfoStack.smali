.class Ljava/io/ObjectOutputStream$DebugTraceInfoStack;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTraceInfoStack"
.end annotation


# instance fields
.field private final greylist-max-o stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 2551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    .line 2553
    return-void
.end method


# virtual methods
.method greylist-max-o clear()V
    .registers 2

    .line 2559
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2560
    return-void
.end method

.method greylist-max-o pop()V
    .registers 3

    .line 2566
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2567
    return-void
.end method

.method greylist-max-o push(Ljava/lang/String;)V
    .registers 5
    .param p1, "entry"    # Ljava/lang/String;

    .line 2573
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2574
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2581
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2582
    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_13
    if-lez v1, :cond_3e

    .line 2583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2e

    const-string v3, "\n"

    goto :goto_30

    :cond_2e
    const-string v3, ""

    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 2586
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
