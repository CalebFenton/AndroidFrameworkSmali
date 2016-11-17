.class Lcom/android/commands/content/Content$Parser;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_ARG:Ljava/lang/String; = "--arg"

.field private static final ARGUMENT_BIND:Ljava/lang/String; = "--bind"

.field private static final ARGUMENT_CALL:Ljava/lang/String; = "call"

.field private static final ARGUMENT_DELETE:Ljava/lang/String; = "delete"

.field private static final ARGUMENT_EXTRA:Ljava/lang/String; = "--extra"

.field private static final ARGUMENT_INSERT:Ljava/lang/String; = "insert"

.field private static final ARGUMENT_METHOD:Ljava/lang/String; = "--method"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_PROJECTION:Ljava/lang/String; = "--projection"

.field private static final ARGUMENT_QUERY:Ljava/lang/String; = "query"

.field private static final ARGUMENT_READ:Ljava/lang/String; = "read"

.field private static final ARGUMENT_SORT:Ljava/lang/String; = "--sort"

.field private static final ARGUMENT_UPDATE:Ljava/lang/String; = "update"

.field private static final ARGUMENT_URI:Ljava/lang/String; = "--uri"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final ARGUMENT_WHERE:Ljava/lang/String; = "--where"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "d"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "f"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final TYPE_LONG:Ljava/lang/String; = "l"

.field private static final TYPE_STRING:Ljava/lang/String; = "s"


# instance fields
.field private final mTokenizer:Lcom/android/commands/content/Content$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    new-instance v0, Lcom/android/commands/content/Content$Tokenizer;

    #@5
    invoke-direct {v0, p1}, Lcom/android/commands/content/Content$Tokenizer;-><init>([Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@a
    .line 156
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@2
    invoke-static {v1}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 372
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const-string/jumbo v1, "--"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 373
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "No value for argument: "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 375
    :cond_1
    return-object v0
.end method

.method private parseBindValue(Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 342
    iget-object v6, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@3
    invoke-static {v6}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 343
    .local v0, "argument":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 344
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v7, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v8, "Binding not well formed: "

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v7

    #@23
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v6

    #@27
    .line 346
    :cond_0
    const-string/jumbo v6, ":"

    #@2a
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2d
    move-result v2

    #@2e
    .line 347
    .local v2, "firstColonIndex":I
    if-gez v2, :cond_1

    #@30
    .line 348
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "Binding not well formed: "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v6

    #@4a
    .line 350
    :cond_1
    const-string/jumbo v6, ":"

    #@4d
    add-int/lit8 v7, v2, 0x1

    #@4f
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@52
    move-result v3

    #@53
    .line 351
    .local v3, "secondColonIndex":I
    if-gez v3, :cond_2

    #@55
    .line 352
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@57
    new-instance v7, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v8, "Binding not well formed: "

    #@5f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v7

    #@6b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 354
    :cond_2
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    .line 355
    .local v1, "column":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    #@75
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 356
    .local v4, "type":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    #@7b
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7e
    move-result-object v5

    #@7f
    .line 357
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "s"

    #@82
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v6

    #@86
    if-eqz v6, :cond_3

    #@88
    .line 358
    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@8b
    .line 341
    :goto_0
    return-void

    #@8c
    .line 359
    :cond_3
    const-string/jumbo v6, "b"

    #@8f
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@92
    move-result v6

    #@93
    if-eqz v6, :cond_4

    #@95
    .line 360
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@98
    move-result v6

    #@99
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@a0
    goto :goto_0

    #@a1
    .line 361
    :cond_4
    const-string/jumbo v6, "i"

    #@a4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a7
    move-result v6

    #@a8
    if-nez v6, :cond_5

    #@aa
    const-string/jumbo v6, "l"

    #@ad
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b0
    move-result v6

    #@b1
    if-eqz v6, :cond_6

    #@b3
    .line 362
    :cond_5
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b6
    move-result-wide v6

    #@b7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ba
    move-result-object v6

    #@bb
    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@be
    goto :goto_0

    #@bf
    .line 363
    :cond_6
    const-string/jumbo v6, "f"

    #@c2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@c5
    move-result v6

    #@c6
    if-nez v6, :cond_7

    #@c8
    const-string/jumbo v6, "d"

    #@cb
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ce
    move-result v6

    #@cf
    if-eqz v6, :cond_8

    #@d1
    .line 364
    :cond_7
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@d4
    move-result-wide v6

    #@d5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@d8
    move-result-object v6

    #@d9
    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@dc
    goto :goto_0

    #@dd
    .line 366
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@df
    new-instance v7, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v8, "Unsupported type: "

    #@e7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v7

    #@ef
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v7

    #@f3
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f6
    throw v6
.end method

.method private parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;
    .locals 7

    #@0
    .prologue
    .line 212
    const/4 v1, 0x0

    #@1
    .line 213
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    #@2
    .line 214
    .local v2, "userId":I
    const/4 v3, 0x0

    #@3
    .line 215
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@5
    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@b
    .line 216
    const-string/jumbo v4, "--uri"

    #@e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 217
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@1d
    .line 218
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v4, "--user"

    #@20
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 219
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2d
    move-result v2

    #@2e
    goto :goto_0

    #@2f
    .line 220
    :cond_1
    const-string/jumbo v4, "--where"

    #@32
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_2

    #@38
    .line 221
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .local v3, "where":Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 223
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Unsupported argument: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v4

    #@57
    .line 226
    :cond_3
    if-nez v1, :cond_4

    #@59
    .line 227
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string/jumbo v5, "Content provider URI not specified. Did you specify --uri argument?"

    #@5e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v4

    #@62
    .line 230
    :cond_4
    new-instance v4, Lcom/android/commands/content/Content$DeleteCommand;

    #@64
    invoke-direct {v4, v1, v2, v3}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;)V

    #@67
    return-object v4
.end method

.method private parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;
    .locals 7

    #@0
    .prologue
    .line 186
    const/4 v1, 0x0

    #@1
    .line 187
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    #@2
    .line 188
    .local v2, "userId":I
    new-instance v3, Landroid/content/ContentValues;

    #@4
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@7
    .line 189
    .end local v1    # "uri":Landroid/net/Uri;
    .local v3, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@9
    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@f
    .line 190
    const-string/jumbo v4, "--uri"

    #@12
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 191
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1f
    move-result-object v1

    #@20
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@21
    .line 192
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v4, "--user"

    #@24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 193
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@31
    move-result v2

    #@32
    goto :goto_0

    #@33
    .line 194
    :cond_1
    const-string/jumbo v4, "--bind"

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_2

    #@3c
    .line 195
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    #@3f
    goto :goto_0

    #@40
    .line 197
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "Unsupported argument: "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v5

    #@56
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v4

    #@5a
    .line 200
    :cond_3
    if-nez v1, :cond_4

    #@5c
    .line 201
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@5e
    const-string/jumbo v5, "Content provider URI not specified. Did you specify --uri argument?"

    #@61
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v4

    #@65
    .line 204
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    #@68
    move-result v4

    #@69
    if-nez v4, :cond_5

    #@6b
    .line 205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v5, "Bindings not specified. Did you specify --bind argument(s)?"

    #@70
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v4

    #@74
    .line 208
    :cond_5
    new-instance v4, Lcom/android/commands/content/Content$InsertCommand;

    #@76
    invoke-direct {v4, v1, v2, v3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;)V

    #@79
    return-object v4
.end method

.method private parseReadCommand()Lcom/android/commands/content/Content$ReadCommand;
    .locals 6

    #@0
    .prologue
    .line 295
    const/4 v1, 0x0

    #@1
    .line 296
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    #@2
    .line 297
    .end local v1    # "uri":Landroid/net/Uri;
    .local v2, "userId":I
    :goto_0
    iget-object v3, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@4
    invoke-static {v3}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@a
    .line 298
    const-string/jumbo v3, "--uri"

    #@d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 299
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@1c
    .line 300
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v3, "--user"

    #@1f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 301
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2c
    move-result v2

    #@2d
    goto :goto_0

    #@2e
    .line 303
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "Unsupported argument: "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3

    #@48
    .line 306
    :cond_2
    if-nez v1, :cond_3

    #@4a
    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4c
    const-string/jumbo v4, "Content provider URI not specified. Did you specify --uri argument?"

    #@4f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 310
    :cond_3
    new-instance v3, Lcom/android/commands/content/Content$ReadCommand;

    #@55
    invoke-direct {v3, v1, v2}, Lcom/android/commands/content/Content$ReadCommand;-><init>(Landroid/net/Uri;I)V

    #@58
    return-object v3
.end method

.method private parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;
    .locals 8

    #@0
    .prologue
    .line 234
    const/4 v1, 0x0

    #@1
    .line 235
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    #@2
    .line 236
    .local v2, "userId":I
    const/4 v4, 0x0

    #@3
    .line 237
    .local v4, "where":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    #@5
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 238
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v4    # "where":Ljava/lang/String;
    .local v3, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@a
    invoke-static {v5}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@10
    .line 239
    const-string/jumbo v5, "--uri"

    #@13
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    .line 240
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v1

    #@21
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@22
    .line 241
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v5, "--user"

    #@25
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_1

    #@2b
    .line 242
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@32
    move-result v2

    #@33
    goto :goto_0

    #@34
    .line 243
    :cond_1
    const-string/jumbo v5, "--where"

    #@37
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_2

    #@3d
    .line 244
    invoke-direct {p0, v0}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .local v4, "where":Ljava/lang/String;
    goto :goto_0

    #@42
    .line 245
    .end local v4    # "where":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "--bind"

    #@45
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_3

    #@4b
    .line 246
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    #@4e
    goto :goto_0

    #@4f
    .line 248
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "Unsupported argument: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@68
    throw v5

    #@69
    .line 251
    :cond_4
    if-nez v1, :cond_5

    #@6b
    .line 252
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v6, "Content provider URI not specified. Did you specify --uri argument?"

    #@70
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v5

    #@74
    .line 255
    :cond_5
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    #@77
    move-result v5

    #@78
    if-nez v5, :cond_6

    #@7a
    .line 256
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v6, "Bindings not specified. Did you specify --bind argument(s)?"

    #@7f
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v5

    #@83
    .line 259
    :cond_6
    new-instance v5, Lcom/android/commands/content/Content$UpdateCommand;

    #@85
    invoke-direct {v5, v1, v2, v3, v4}, Lcom/android/commands/content/Content$UpdateCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;)V

    #@88
    return-object v5
.end method


# virtual methods
.method public parseCallCommand()Lcom/android/commands/content/Content$CallCommand;
    .locals 9

    #@0
    .prologue
    .line 263
    const/4 v3, 0x0

    #@1
    .line 264
    .local v3, "method":Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .line 265
    .local v2, "userId":I
    const/4 v4, 0x0

    #@3
    .line 266
    .local v4, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .line 267
    .local v1, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    #@6
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    #@9
    .line 268
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "arg":Ljava/lang/String;
    .local v5, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@b
    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    .local v6, "argument":Ljava/lang/String;
    if-eqz v6, :cond_5

    #@11
    .line 269
    const-string/jumbo v0, "--uri"

    #@14
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 270
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@23
    .line 271
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "--user"

    #@26
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 272
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@33
    move-result v2

    #@34
    goto :goto_0

    #@35
    .line 273
    :cond_1
    const-string/jumbo v0, "--method"

    #@38
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 274
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    .local v3, "method":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 275
    .end local v3    # "method":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "--arg"

    #@46
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_3

    #@4c
    .line 276
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .local v4, "arg":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 277
    .end local v4    # "arg":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "--extra"

    #@54
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_4

    #@5a
    .line 278
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    #@5d
    goto :goto_0

    #@5e
    .line 280
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@60
    new-instance v7, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v8, "Unsupported argument: "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v7

    #@74
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v0

    #@78
    .line 284
    :cond_5
    if-nez v1, :cond_6

    #@7a
    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v7, "Content provider URI not specified. Did you specify --uri argument?"

    #@7f
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v0

    #@83
    .line 288
    :cond_6
    if-nez v3, :cond_7

    #@85
    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@87
    const-string/jumbo v7, "Content provider method not specified."

    #@8a
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v0

    #@8e
    .line 291
    :cond_7
    new-instance v0, Lcom/android/commands/content/Content$CallCommand;

    #@90
    invoke-direct/range {v0 .. v5}, Lcom/android/commands/content/Content$CallCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    #@93
    return-object v0
.end method

.method public parseCommand()Lcom/android/commands/content/Content$Command;
    .locals 5

    #@0
    .prologue
    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@2
    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 163
    .local v1, "operation":Ljava/lang/String;
    const-string/jumbo v2, "insert"

    #@9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 164
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 165
    :cond_0
    const-string/jumbo v2, "delete"

    #@17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 166
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 167
    :cond_1
    const-string/jumbo v2, "update"

    #@25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 168
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 169
    :cond_2
    const-string/jumbo v2, "query"

    #@33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3

    #@39
    .line 170
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 171
    :cond_3
    const-string/jumbo v2, "call"

    #@41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_4

    #@47
    .line 172
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseCallCommand()Lcom/android/commands/content/Content$CallCommand;

    #@4a
    move-result-object v2

    #@4b
    return-object v2

    #@4c
    .line 173
    :cond_4
    const-string/jumbo v2, "read"

    #@4f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_5

    #@55
    .line 174
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseReadCommand()Lcom/android/commands/content/Content$ReadCommand;

    #@58
    move-result-object v2

    #@59
    return-object v2

    #@5a
    .line 176
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance v3, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v4, "Unsupported operation: "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 178
    .end local v1    # "operation":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@75
    .line 179
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@77
    const-string/jumbo v3, "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--user <USER_ID>] [--where <WHERE>]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\'new_setting\'\"\n\nusage: adb shell content delete --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\'new_setting\'\"\n\nusage: adb shell content query --uri <URI> [--user <USER_ID>] [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_ORDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\'new_setting\'\" --sort \"name ASC\"\n\nusage: adb shell content call --uri <URI> --method <METHOD> [--arg <ARG>]\n       [--extra <BINDING> ...]\n  <METHOD> is the name of a provider-defined method\n  <ARG> is an optional string argument\n  <BINDING> is like --bind above, typed data of the form <KEY>:{b,s,i,l,f,d}:<VAL>\n\nusage: adb shell content read --uri <URI> [--user <USER_ID>]\n  Example:\n  # cat default ringtone to a file, then pull to host\n  adb shell \'content read --uri content://settings/system/ringtone > /mnt/sdcard/tmp.ogg\' && adb pull /mnt/sdcard/tmp.ogg\n\n"

    #@7a
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7d
    .line 180
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7f
    new-instance v3, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v4, "[ERROR] "

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v3

    #@93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9a
    .line 181
    const/4 v2, 0x0

    #@9b
    return-object v2
.end method

.method public parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;
    .locals 9

    #@0
    .prologue
    .line 314
    const/4 v1, 0x0

    #@1
    .line 315
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    #@2
    .line 316
    .local v2, "userId":I
    const/4 v3, 0x0

    #@3
    .line 317
    .local v3, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    #@4
    .line 318
    .local v5, "sort":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .line 319
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v5    # "sort":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    #@7
    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->-wrap0(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    #@a
    move-result-object v6

    #@b
    .local v6, "argument":Ljava/lang/String;
    if-eqz v6, :cond_5

    #@d
    .line 320
    const-string/jumbo v0, "--uri"

    #@10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 321
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    #@1f
    .line 322
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "--user"

    #@22
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 323
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v2

    #@30
    goto :goto_0

    #@31
    .line 324
    :cond_1
    const-string/jumbo v0, "--where"

    #@34
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 325
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    .local v4, "where":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 326
    .end local v4    # "where":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "--sort"

    #@42
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v0

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 327
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .local v5, "sort":Ljava/lang/String;
    goto :goto_0

    #@4d
    .line 328
    .end local v5    # "sort":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "--projection"

    #@50
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_4

    #@56
    .line 329
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    const-string/jumbo v7, "[\\s]*:[\\s]*"

    #@5d
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    .local v3, "projection":[Ljava/lang/String;
    goto :goto_0

    #@62
    .line 331
    .end local v3    # "projection":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@64
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Unsupported argument: "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v7

    #@78
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0

    #@7c
    .line 334
    :cond_5
    if-nez v1, :cond_6

    #@7e
    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@80
    const-string/jumbo v7, "Content provider URI not specified. Did you specify --uri argument?"

    #@83
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@86
    throw v0

    #@87
    .line 338
    :cond_6
    new-instance v0, Lcom/android/commands/content/Content$QueryCommand;

    #@89
    invoke-direct/range {v0 .. v5}, Lcom/android/commands/content/Content$QueryCommand;-><init>(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8c
    return-object v0
.end method
