.class public final Landroid/util/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private greylist-max-o indent:Ljava/lang/String;

.field private greylist-max-o lenient:Z

.field private final greylist-max-o out:Ljava/io/Writer;

.field private greylist-max-o separator:Ljava/lang/String;

.field private final greylist-max-o stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    .line 128
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v0, ":"

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    .line 150
    if-eqz p1, :cond_1a

    .line 153
    iput-object p1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    .line 154
    return-void

    .line 151
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o beforeName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    .line 479
    .local v0, "context":Landroid/util/JsonScope;
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_10

    .line 480
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_14

    .line 481
    :cond_10
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_1d

    .line 484
    :goto_14
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 485
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 486
    return-void

    .line 482
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o beforeValue(Z)V
    .registers 5
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Landroid/util/JsonWriter$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :pswitch_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_32
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 518
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 519
    goto :goto_68

    .line 512
    :pswitch_3f
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 513
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 514
    goto :goto_68

    .line 507
    :pswitch_4a
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 508
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 509
    goto :goto_68

    .line 499
    :pswitch_53
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_62

    if-eqz p1, :cond_5a

    goto :goto_62

    .line 500
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_62
    :goto_62
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 504
    nop

    .line 528
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4a
        :pswitch_3f
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private greylist-max-o close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 8
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "nonempty"    # Landroid/util/JsonScope;
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/util/JsonScope;
    if-eq v0, p2, :cond_24

    if-ne v0, p1, :cond_9

    goto :goto_24

    .line 254
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v2, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    if-ne v0, p2, :cond_36

    .line 259
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 261
    :cond_36
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 262
    return-object p0
.end method

.method private greylist-max-o newline()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 464
    return-void

    .line 467
    :cond_5
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 469
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 471
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private greylist-max-o open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 241
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    return-object p0
.end method

.method private greylist-max-o peek()Landroid/util/JsonScope;
    .registers 3

    .line 269
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private greylist-max-o replaceTop(Landroid/util/JsonScope;)V
    .registers 4
    .param p1, "topOfStack"    # Landroid/util/JsonScope;

    .line 276
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method private greylist-max-o string(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_c
    if-ge v0, v2, :cond_7c

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 417
    .local v3, "c":C
    const-string v4, "\\u%04x"

    sparse-switch v3, :sswitch_data_82

    .line 450
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_74

    .line 451
    iget-object v5, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_79

    .line 446
    :sswitch_2d
    iget-object v5, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    goto :goto_79

    .line 420
    :sswitch_3f
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 421
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 422
    goto :goto_79

    .line 437
    :sswitch_4c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    goto :goto_79

    .line 441
    :sswitch_54
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    goto :goto_79

    .line 433
    :sswitch_5c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    goto :goto_79

    .line 425
    :sswitch_64
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 426
    goto :goto_79

    .line 429
    :sswitch_6c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 430
    goto :goto_79

    .line 453
    :cond_74
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 403
    .end local v3    # "c":C
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 459
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_7c
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    return-void

    :sswitch_data_82
    .sparse-switch
        0x8 -> :sswitch_6c
        0x9 -> :sswitch_64
        0xa -> :sswitch_5c
        0xc -> :sswitch_54
        0xd -> :sswitch_4c
        0x22 -> :sswitch_3f
        0x5c -> :sswitch_3f
        0x2028 -> :sswitch_2d
        0x2029 -> :sswitch_2d
    .end sparse-switch
.end method


# virtual methods
.method public whitelist beginArray()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist beginObject()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 396
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_e

    .line 399
    return-void

    .line 397
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist endArray()Landroid/util/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist endObject()Landroid/util/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 386
    return-void
.end method

.method public whitelist isLenient()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    return v0
.end method

.method public whitelist name(Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    if-eqz p1, :cond_9

    .line 289
    invoke-direct {p0}, Landroid/util/JsonWriter;->beforeName()V

    .line 290
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    .line 291
    return-object p0

    .line 287
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nullValue()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 316
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 317
    return-object p0
.end method

.method public whitelist setIndent(Ljava/lang/String;)V
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    .line 167
    const-string v0, ":"

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_14

    .line 169
    :cond_e
    iput-object p1, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    .line 170
    const-string v0, ": "

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    .line 172
    :goto_14
    return-void
.end method

.method public whitelist setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 187
    iput-boolean p1, p0, Landroid/util/JsonWriter;->lenient:Z

    .line 188
    return-void
.end method

.method public whitelist value(D)Landroid/util/JsonWriter;
    .registers 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_2a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 340
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 343
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 344
    return-object p0
.end method

.method public whitelist value(J)Landroid/util/JsonWriter;
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 354
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 355
    return-object p0
.end method

.method public whitelist value(Ljava/lang/Number;)Landroid/util/JsonWriter;
    .registers 6
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    if-nez p1, :cond_7

    .line 367
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0

    .line 370
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v1, :cond_41

    .line 372
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_41

    .line 373
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_41
    :goto_41
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 376
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 377
    return-object p0
.end method

.method public whitelist value(Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    if-nez p1, :cond_7

    .line 302
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0

    .line 304
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 305
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public whitelist value(Z)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 327
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_c

    const-string/jumbo v1, "true"

    goto :goto_e

    :cond_c
    const-string v1, "false"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-object p0
.end method
