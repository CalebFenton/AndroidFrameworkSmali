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
.field private final indent:Ljava/lang/String;

.field final out:Ljava/lang/StringBuilder;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONStringer$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@a
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@11
    .line 123
    const/4 v0, 0x0

    #@12
    iput-object v0, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    #@14
    .line 122
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "indentSpaces"    # I

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@a
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@11
    .line 127
    new-array v0, p1, [C

    #@13
    .line 128
    .local v0, "indentChars":[C
    const/16 v1, 0x20

    #@15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@18
    .line 129
    new-instance v1, Ljava/lang/String;

    #@1a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@1d
    iput-object v1, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    #@1f
    .line 126
    return-void
.end method

.method private beforeKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    #@3
    move-result-object v0

    #@4
    .line 385
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 386
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@a
    const/16 v2, 0x2c

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    .line 390
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    #@12
    .line 391
    sget-object v1, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    #@14
    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    #@17
    .line 383
    return-void

    #@18
    .line 387
    :cond_1
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@1a
    if-eq v0, v1, :cond_0

    #@1c
    .line 388
    new-instance v1, Lorg/json/JSONException;

    #@1e
    const-string/jumbo v2, "Nesting problem"

    #@21
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
.end method

.method private beforeValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 401
    return-void

    #@9
    .line 404
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    #@c
    move-result-object v0

    #@d
    .line 405
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    sget-object v1, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@f
    if-ne v0, v1, :cond_2

    #@11
    .line 406
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@13
    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    #@16
    .line 407
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    #@19
    .line 399
    :cond_1
    :goto_0
    return-void

    #@1a
    .line 408
    :cond_2
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@1c
    if-ne v0, v1, :cond_3

    #@1e
    .line 409
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@20
    const/16 v2, 0x2c

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 410
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    #@28
    goto :goto_0

    #@29
    .line 411
    :cond_3
    sget-object v1, Lorg/json/JSONStringer$Scope;->DANGLING_KEY:Lorg/json/JSONStringer$Scope;

    #@2b
    if-ne v0, v1, :cond_5

    #@2d
    .line 412
    iget-object v2, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@2f
    iget-object v1, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    #@31
    if-nez v1, :cond_4

    #@33
    const-string/jumbo v1, ":"

    #@36
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 413
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@3b
    invoke-direct {p0, v1}, Lorg/json/JSONStringer;->replaceTop(Lorg/json/JSONStringer$Scope;)V

    #@3e
    goto :goto_0

    #@3f
    .line 412
    :cond_4
    const-string/jumbo v1, ": "

    #@42
    goto :goto_1

    #@43
    .line 414
    :cond_5
    sget-object v1, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@45
    if-eq v0, v1, :cond_1

    #@47
    .line 415
    new-instance v1, Lorg/json/JSONException;

    #@49
    const-string/jumbo v2, "Nesting problem"

    #@4c
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1
.end method

.method private newline()V
    .locals 3

    #@0
    .prologue
    .line 354
    iget-object v1, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 355
    return-void

    #@5
    .line 358
    :cond_0
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@7
    const-string/jumbo v2, "\n"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 359
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@10
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v1

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 360
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@18
    iget-object v2, p0, Lorg/json/JSONStringer;->indent:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 359
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 353
    :cond_1
    return-void
.end method

.method private peek()Lorg/json/JSONStringer$Scope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 207
    new-instance v0, Lorg/json/JSONException;

    #@a
    const-string/jumbo v1, "Nesting problem"

    #@d
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 209
    :cond_0
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@13
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@15
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lorg/json/JSONStringer$Scope;

    #@21
    return-object v0
.end method

.method private replaceTop(Lorg/json/JSONStringer$Scope;)V
    .locals 2
    .param p1, "topOfStack"    # Lorg/json/JSONStringer$Scope;

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 215
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v4, "\""

    #@5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 304
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@f
    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 313
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@16
    .line 341
    const/16 v3, 0x1f

    #@18
    if-gt v0, v3, :cond_0

    #@1a
    .line 342
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@1c
    const-string/jumbo v4, "\\u%04x"

    #@1f
    const/4 v5, 0x1

    #@20
    new-array v5, v5, [Ljava/lang/Object;

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v6

    #@26
    const/4 v7, 0x0

    #@27
    aput-object v6, v5, v7

    #@29
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 304
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 317
    :sswitch_0
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@35
    const/16 v4, 0x5c

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_1

    #@3f
    .line 321
    :sswitch_1
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@41
    const-string/jumbo v4, "\\t"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_1

    #@48
    .line 325
    :sswitch_2
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@4a
    const-string/jumbo v4, "\\b"

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    goto :goto_1

    #@51
    .line 329
    :sswitch_3
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@53
    const-string/jumbo v4, "\\n"

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_1

    #@5a
    .line 333
    :sswitch_4
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@5c
    const-string/jumbo v4, "\\r"

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_1

    #@63
    .line 337
    :sswitch_5
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@65
    const-string/jumbo v4, "\\f"

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    goto :goto_1

    #@6c
    .line 344
    :cond_0
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@6e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    goto :goto_1

    #@72
    .line 350
    .end local v0    # "c":C
    :cond_1
    iget-object v3, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@74
    const-string/jumbo v4, "\""

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 302
    return-void

    #@7b
    .line 313
    nop

    #@7c
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public array()Lorg/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@2
    const-string/jumbo v1, "["

    #@5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;
    .locals 3
    .param p1, "empty"    # Lorg/json/JSONStringer$Scope;
    .param p2, "nonempty"    # Lorg/json/JSONStringer$Scope;
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Lorg/json/JSONStringer;->peek()Lorg/json/JSONStringer$Scope;

    #@3
    move-result-object v0

    #@4
    .line 190
    .local v0, "context":Lorg/json/JSONStringer$Scope;
    if-eq v0, p2, :cond_0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 191
    new-instance v1, Lorg/json/JSONException;

    #@a
    const-string/jumbo v2, "Nesting problem"

    #@d
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 194
    :cond_0
    iget-object v1, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@13
    iget-object v2, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@15
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@18
    move-result v2

    #@19
    add-int/lit8 v2, v2, -0x1

    #@1b
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1e
    .line 195
    if-ne v0, p2, :cond_1

    #@20
    .line 196
    invoke-direct {p0}, Lorg/json/JSONStringer;->newline()V

    #@23
    .line 198
    :cond_1
    iget-object v1, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@25
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 199
    return-object p0
.end method

.method public endArray()Lorg/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@2
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_ARRAY:Lorg/json/JSONStringer$Scope;

    #@4
    const-string/jumbo v2, "]"

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public endObject()Lorg/json/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@2
    sget-object v1, Lorg/json/JSONStringer$Scope;->NONEMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@4
    const-string/jumbo v2, "}"

    #@7
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public key(Ljava/lang/String;)Lorg/json/JSONStringer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    if-nez p1, :cond_0

    #@2
    .line 372
    new-instance v0, Lorg/json/JSONException;

    #@4
    const-string/jumbo v1, "Names must be non-null"

    #@7
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 374
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeKey()V

    #@e
    .line 375
    invoke-direct {p0, p1}, Lorg/json/JSONStringer;->string(Ljava/lang/String;)V

    #@11
    .line 376
    return-object p0
.end method

.method public object()Lorg/json/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    sget-object v0, Lorg/json/JSONStringer$Scope;->EMPTY_OBJECT:Lorg/json/JSONStringer$Scope;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;
    .locals 2
    .param p1, "empty"    # Lorg/json/JSONStringer$Scope;
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_0

    #@10
    .line 176
    new-instance v0, Lorg/json/JSONException;

    #@12
    const-string/jumbo v1, "Nesting problem: multiple top-level roots"

    #@15
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 178
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    #@1c
    .line 179
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@1e
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@21
    .line 180
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 181
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method public value(D)Lorg/json/JSONStringer;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 281
    new-instance v0, Lorg/json/JSONException;

    #@a
    const-string/jumbo v1, "Nesting problem"

    #@d
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 283
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    #@14
    .line 284
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@16
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 285
    return-object p0
.end method

.method public value(J)Lorg/json/JSONStringer;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 295
    new-instance v0, Lorg/json/JSONException;

    #@a
    const-string/jumbo v1, "Nesting problem"

    #@d
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 297
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    #@14
    .line 298
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    .line 299
    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 229
    new-instance v0, Lorg/json/JSONException;

    #@a
    const-string/jumbo v1, "Nesting problem"

    #@d
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 232
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 233
    check-cast p1, Lorg/json/JSONArray;

    #@17
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    #@1a
    .line 234
    return-object p0

    #@1b
    .line 236
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lorg/json/JSONObject;

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 237
    check-cast p1, Lorg/json/JSONObject;

    #@21
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    #@24
    .line 238
    return-object p0

    #@25
    .line 241
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    #@28
    .line 243
    if-eqz p1, :cond_3

    #@2a
    .line 244
    instance-of v0, p1, Ljava/lang/Boolean;

    #@2c
    .line 243
    if-nez v0, :cond_3

    #@2e
    .line 245
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@30
    if-ne p1, v0, :cond_4

    #@32
    .line 246
    :cond_3
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 255
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    #@38
    .line 248
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    #@3a
    if-eqz v0, :cond_5

    #@3c
    .line 249
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@3e
    check-cast p1, Ljava/lang/Number;

    #@40
    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    goto :goto_0

    #@48
    .line 252
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {p0, v0}, Lorg/json/JSONStringer;->string(Ljava/lang/String;)V

    #@4f
    goto :goto_0
.end method

.method public value(Z)Lorg/json/JSONStringer;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lorg/json/JSONStringer;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 265
    new-instance v0, Lorg/json/JSONException;

    #@a
    const-string/jumbo v1, "Nesting problem"

    #@d
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 267
    :cond_0
    invoke-direct {p0}, Lorg/json/JSONStringer;->beforeValue()V

    #@14
    .line 268
    iget-object v0, p0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    .line 269
    return-object p0
.end method
