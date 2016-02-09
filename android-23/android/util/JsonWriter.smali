.class public final Landroid/util/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static synthetic -android_util_JsonScopeSwitchesValues:[I


# instance fields
.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid_util_JsonScopeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/util/JsonWriter;->-android_util_JsonScopeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/util/JsonWriter;->-android_util_JsonScopeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/util/JsonScope;->values()[Landroid/util/JsonScope;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    #@10
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x6

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@19
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@22
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@2b
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@34
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x7

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@3d
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x4

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@46
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x5

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@4f
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Landroid/util/JsonWriter;->-android_util_JsonScopeSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@a
    .line 127
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@c
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 139
    const-string/jumbo v0, ":"

    #@14
    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    #@16
    .line 149
    if-nez p1, :cond_0

    #@18
    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "out == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 152
    :cond_0
    iput-object p1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@23
    .line 148
    return-void
.end method

.method private beforeName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 477
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    #@3
    move-result-object v0

    #@4
    .line 478
    .local v0, "context":Landroid/util/JsonScope;
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 479
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@a
    const/16 v2, 0x2c

    #@c
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@f
    .line 483
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    #@12
    .line 484
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@14
    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    #@17
    .line 476
    return-void

    #@18
    .line 480
    :cond_1
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@1a
    if-eq v0, v1, :cond_0

    #@1c
    .line 481
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Nesting problem: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method private beforeValue(Z)V
    .locals 3
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    invoke-static {}, Landroid/util/JsonWriter;->-getandroid_util_JsonScopeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@b
    move-result v1

    #@c
    aget v0, v0, v1

    #@e
    packed-switch v0, :pswitch_data_0

    #@11
    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Nesting problem: "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 498
    :pswitch_0
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    #@2f
    if-nez v0, :cond_0

    #@31
    if-eqz p1, :cond_1

    #@33
    .line 502
    :cond_0
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@35
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    #@38
    .line 495
    :goto_0
    return-void

    #@39
    .line 499
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3b
    .line 500
    const-string/jumbo v1, "JSON must start with an array or an object."

    #@3e
    .line 499
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 506
    :pswitch_1
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@44
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    #@47
    .line 507
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    #@4a
    goto :goto_0

    #@4b
    .line 511
    :pswitch_2
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@4d
    const/16 v1, 0x2c

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    #@52
    .line 512
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    #@55
    goto :goto_0

    #@56
    .line 516
    :pswitch_3
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@58
    iget-object v1, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    #@5a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@5d
    .line 517
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@5f
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    #@62
    goto :goto_0

    #@63
    .line 521
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@65
    .line 522
    const-string/jumbo v1, "JSON must have only one top-level value."

    #@68
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 4
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "nonempty"    # Landroid/util/JsonScope;
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 251
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    #@3
    move-result-object v0

    #@4
    .line 252
    .local v0, "context":Landroid/util/JsonScope;
    if-eq v0, p2, :cond_0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Nesting problem: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 256
    :cond_0
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@26
    iget-object v2, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@28
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@2b
    move-result v2

    #@2c
    add-int/lit8 v2, v2, -0x1

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@31
    .line 257
    if-ne v0, p2, :cond_1

    #@33
    .line 258
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    #@36
    .line 260
    :cond_1
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@38
    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@3b
    .line 261
    return-object p0
.end method

.method private newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    iget-object v1, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 463
    return-void

    #@5
    .line 466
    :cond_0
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@7
    const-string/jumbo v2, "\n"

    #@a
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d
    .line 467
    const/4 v0, 0x1

    #@e
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@10
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v1

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 468
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@18
    iget-object v2, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1d
    .line 467
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 461
    :cond_1
    return-void
.end method

.method private open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 1
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@4
    .line 240
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 241
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@b
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@e
    .line 242
    return-object p0
.end method

.method private peek()Landroid/util/JsonScope;
    .locals 2

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/util/JsonScope;

    #@10
    return-object v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .locals 2
    .param p1, "topOfStack"    # Landroid/util/JsonScope;

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 274
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 401
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@4
    const-string/jumbo v4, "\""

    #@7
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a
    .line 402
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 403
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 416
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@18
    .line 449
    const/16 v3, 0x1f

    #@1a
    if-gt v0, v3, :cond_0

    #@1c
    .line 450
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@1e
    const-string/jumbo v4, "\\u%04x"

    #@21
    new-array v5, v8, [Ljava/lang/Object;

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v6

    #@27
    aput-object v6, v5, v7

    #@29
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@30
    .line 402
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 419
    :sswitch_0
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@35
    const/16 v4, 0x5c

    #@37
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    #@3a
    .line 420
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@3c
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    #@3f
    goto :goto_1

    #@40
    .line 424
    :sswitch_1
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@42
    const-string/jumbo v4, "\\t"

    #@45
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@48
    goto :goto_1

    #@49
    .line 428
    :sswitch_2
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@4b
    const-string/jumbo v4, "\\b"

    #@4e
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@51
    goto :goto_1

    #@52
    .line 432
    :sswitch_3
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@54
    const-string/jumbo v4, "\\n"

    #@57
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@5a
    goto :goto_1

    #@5b
    .line 436
    :sswitch_4
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@5d
    const-string/jumbo v4, "\\r"

    #@60
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@63
    goto :goto_1

    #@64
    .line 440
    :sswitch_5
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@66
    const-string/jumbo v4, "\\f"

    #@69
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6c
    goto :goto_1

    #@6d
    .line 445
    :sswitch_6
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@6f
    const-string/jumbo v4, "\\u%04x"

    #@72
    new-array v5, v8, [Ljava/lang/Object;

    #@74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v6

    #@78
    aput-object v6, v5, v7

    #@7a
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@81
    goto :goto_1

    #@82
    .line 452
    :cond_0
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@84
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    #@87
    goto :goto_1

    #@88
    .line 458
    .end local v0    # "c":C
    :cond_1
    iget-object v3, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@8a
    const-string/jumbo v4, "\""

    #@8d
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@90
    .line 400
    return-void

    #@91
    .line 416
    nop

    #@92
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xc -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_0
        0x5c -> :sswitch_0
        0x2028 -> :sswitch_6
        0x2029 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()Landroid/util/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 203
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@2
    const-string/jumbo v1, "["

    #@5
    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public beginObject()Landroid/util/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    #@5
    .line 395
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 396
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Incomplete document"

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 392
    :cond_0
    return-void
.end method

.method public endArray()Landroid/util/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@2
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@4
    const-string/jumbo v2, "]"

    #@7
    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public endObject()Landroid/util/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@2
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@4
    const-string/jumbo v2, "}"

    #@7
    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    #@5
    .line 383
    return-void
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    #@2
    return v0
.end method

.method public name(Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    if-nez p1, :cond_0

    #@2
    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 288
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonWriter;->beforeName()V

    #@e
    .line 289
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    #@11
    .line 290
    return-object p0
.end method

.method public nullValue()Landroid/util/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@4
    .line 315
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@6
    const-string/jumbo v1, "null"

    #@9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@c
    .line 316
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 165
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    #@9
    .line 166
    const-string/jumbo v0, ":"

    #@c
    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    #@e
    .line 163
    :goto_0
    return-void

    #@f
    .line 168
    :cond_0
    iput-object p1, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    #@11
    .line 169
    const-string/jumbo v0, ": "

    #@14
    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    #@16
    goto :goto_0
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 186
    iput-boolean p1, p0, Landroid/util/JsonWriter;->lenient:Z

    #@2
    .line 185
    return-void
.end method

.method public value(D)Landroid/util/JsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    #@2
    if-nez v0, :cond_1

    #@4
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Numeric values must be finite, but was "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 341
    :cond_1
    const/4 v0, 0x0

    #@2b
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@2e
    .line 342
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@30
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@37
    .line 343
    return-object p0
.end method

.method public value(J)Landroid/util/JsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@4
    .line 353
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@d
    .line 354
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Landroid/util/JsonWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 365
    if-nez p1, :cond_0

    #@2
    .line 366
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 370
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/util/JsonWriter;->lenient:Z

    #@d
    if-nez v1, :cond_2

    #@f
    .line 371
    const-string/jumbo v1, "-Infinity"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1

    #@18
    const-string/jumbo v1, "Infinity"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    const-string/jumbo v1, "NaN"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    .line 370
    if-eqz v1, :cond_2

    #@2a
    .line 372
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Numeric values must be finite, but was "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 374
    :cond_2
    const/4 v1, 0x0

    #@45
    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@48
    .line 375
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@4a
    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    #@4d
    .line 376
    return-object p0
.end method

.method public value(Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    if-nez p1, :cond_0

    #@2
    .line 301
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    #@5
    move-result-object v0

    #@6
    return-object v0

    #@7
    .line 303
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@b
    .line 304
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    #@e
    .line 305
    return-object p0
.end method

.method public value(Z)Landroid/util/JsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    #@4
    .line 326
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    #@6
    if-eqz p1, :cond_0

    #@8
    const-string/jumbo v0, "true"

    #@b
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@e
    .line 327
    return-object p0

    #@f
    .line 326
    :cond_0
    const-string/jumbo v0, "false"

    #@12
    goto :goto_0
.end method
