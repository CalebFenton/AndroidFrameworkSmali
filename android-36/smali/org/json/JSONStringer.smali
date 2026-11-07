.class public Lorg/json/JSONStringer;
.super Ljava/lang/Object;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/JSONStringer$Scope;
    }
.end annotation


# instance fields
.field private final greylist indent:Ljava/lang/String;

.field final greylist out:Ljava/lang/StringBuilder;

.field private final greylist stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONStringer$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    .line 128
    return-void
.end method

.method constructor greylist <init>(I)V
    .registers 4
    .param p1, "indentSpaces"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    .line 132
    new-array v0, p1, [C

    .line 133
    .local v0, "indentChars":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 134
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private greylist beforeKey()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    move-result-object v0

    .line 397
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_10

    .line 398
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 399
    :cond_10
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_1d

    .line 402
    :goto_14
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    .line 403
    sget-object v1, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    .line 404
    return-void

    .line 400
    :cond_1d
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Nesting problem"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist beforeValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    return-void

    .line 417
    :cond_9
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    move-result-object v0

    .line 418
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_1a

    .line 419
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    .line 420
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    goto :goto_45

    .line 421
    :cond_1a
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_29

    .line 422
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    goto :goto_45

    .line 424
    :cond_29
    sget-object v1, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_41

    .line 425
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v2, :cond_36

    const-string v2, ":"

    goto :goto_38

    :cond_36
    const-string v2, ": "

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    goto :goto_45

    .line 427
    :cond_41
    sget-object v1, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    if-ne v0, v1, :cond_46

    .line 430
    :goto_45
    return-void

    .line 428
    :cond_46
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Nesting problem"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist newline()V
    .registers 4

    .line 365
    iget-object v0, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 369
    :cond_5
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 371
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 373
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private greylist peek()Lorg/json/JSONStringer$Scope;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 217
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONStringer$Scope;

    return-object v0

    .line 215
    :cond_19
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist replaceTop(Lorg/json/JSONStringer$Scope;)V
    .registers 4
    .param p1, "topOfStack"    # Lorg/json/JSONStringer$Scope;

    .line 225
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method private greylist string(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_c
    if-ge v0, v2, :cond_69

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 323
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_70

    .line 351
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_61

    .line 352
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "\\u%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 327
    :sswitch_2d
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    goto :goto_66

    .line 343
    :sswitch_39
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    goto :goto_66

    .line 347
    :sswitch_41
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    goto :goto_66

    .line 339
    :sswitch_49
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    goto :goto_66

    .line 331
    :sswitch_51
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    goto :goto_66

    .line 335
    :sswitch_59
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    goto :goto_66

    .line 354
    :cond_61
    iget-object v4, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    .end local v3    # "c":C
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 360
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_69
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    return-void

    nop

    :sswitch_data_70
    .sparse-switch
        0x8 -> :sswitch_59
        0x9 -> :sswitch_51
        0xa -> :sswitch_49
        0xc -> :sswitch_41
        0xd -> :sswitch_39
        0x22 -> :sswitch_2d
        0x2f -> :sswitch_2d
        0x5c -> :sswitch_2d
    .end sparse-switch
.end method


# virtual methods
.method public whitelist test-api array()Lorg/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 144
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method greylist close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;
    .registers 7
    .param p1, "empty"    # Lorg/json/JSONStringer$Scope;
    .param p2, "nonempty"    # Lorg/json/JSONStringer$Scope;
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    move-result-object v0

    .line 197
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 198
    :cond_9
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Nesting problem"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_11
    :goto_11
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    iget-object v2, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    if-ne v0, p2, :cond_23

    .line 203
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    .line 205
    :cond_23
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    return-object p0
.end method

.method public whitelist test-api endArray()Lorg/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 153
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api endObject()Lorg/json/JSONStringer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api key(Ljava/lang/String;)Lorg/json/JSONStringer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 382
    if-eqz p1, :cond_9

    .line 385
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeKey()V

    .line 386
    invoke-direct {p0, p1}, Lorg/json/JSONStringer;->string(Ljava/lang/String;)V

    .line 387
    return-object p0

    .line 383
    :cond_9
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Names must be non-null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api object()Lorg/json/JSONStringer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method greylist open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;
    .registers 5
    .param p1, "empty"    # Lorg/json/JSONStringer$Scope;
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_19

    .line 182
    :cond_11
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem: multiple top-level roots"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_19
    :goto_19
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    .line 185
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 443
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public whitelist test-api value(D)Lorg/json/JSONStringer;
    .registers 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 292
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    .line 293
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    return-object p0

    .line 290
    :cond_19
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api value(J)Lorg/json/JSONStringer;
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 306
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    .line 307
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    return-object p0

    .line 304
    :cond_11
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 241
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_13

    .line 242
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    .line 243
    return-object p0

    .line 245
    :cond_13
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1e

    .line 246
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    .line 247
    return-object p0

    .line 250
    :cond_1e
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    .line 252
    if-eqz p1, :cond_45

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_45

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_2c

    goto :goto_45

    .line 257
    :cond_2c
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3d

    .line 258
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 261
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->string(Ljava/lang/String;)V

    goto :goto_4a

    .line 255
    :cond_45
    :goto_45
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    :goto_4a
    return-object p0

    .line 238
    :cond_4b
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api value(Z)Lorg/json/JSONStringer;
    .registers 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 276
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    .line 277
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    return-object p0

    .line 274
    :cond_11
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
