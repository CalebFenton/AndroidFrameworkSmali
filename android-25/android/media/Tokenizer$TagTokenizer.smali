.class Landroid/media/Tokenizer$TagTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagTokenizer"
.end annotation


# instance fields
.field private mAnnotation:Ljava/lang/String;

.field private mAtAnnotation:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/Tokenizer;

    #@0
    .prologue
    .line 230
    iput-object p1, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private yield_tag()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 276
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@4
    const-string/jumbo v6, "/"

    #@7
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 277
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@f
    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    #@12
    move-result-object v3

    #@13
    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@15
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-interface {v3, v6}, Landroid/media/Tokenizer$OnTokenListener;->onEnd(Ljava/lang/String;)V

    #@1c
    .line 275
    :goto_0
    return-void

    #@1d
    .line 278
    :cond_0
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@1f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    if-lez v3, :cond_1

    #@25
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 281
    :try_start_0
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@33
    invoke-static {v3}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    #@36
    move-result-wide v4

    #@37
    .line 282
    .local v4, "timestampMs":J
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@39
    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    #@3c
    move-result-object v3

    #@3d
    invoke-interface {v3, v4, v5}, Landroid/media/Tokenizer$OnTokenListener;->onTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    goto :goto_0

    #@41
    .line 283
    .end local v4    # "timestampMs":J
    :catch_0
    move-exception v2

    #@42
    .line 284
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "Tokenizer"

    #@45
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "invalid timestamp tag: <"

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    const-string/jumbo v7, ">"

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_0

    #@66
    .line 287
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@68
    const-string/jumbo v6, "\\s+"

    #@6b
    const-string/jumbo v7, " "

    #@6e
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@74
    .line 288
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@76
    const-string/jumbo v6, " "

    #@79
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_2

    #@7f
    .line 289
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@81
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@87
    .line 291
    :cond_2
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@89
    const-string/jumbo v6, " "

    #@8c
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_3

    #@92
    .line 292
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@94
    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@96
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@99
    move-result v6

    #@9a
    add-int/lit8 v6, v6, -0x1

    #@9c
    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@a2
    .line 295
    :cond_3
    const/4 v0, 0x0

    #@a3
    .line 296
    .local v0, "classes":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@a5
    const/16 v6, 0x2e

    #@a7
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@aa
    move-result v1

    #@ab
    .line 297
    .local v1, "dotAt":I
    if-ltz v1, :cond_4

    #@ad
    .line 298
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@af
    add-int/lit8 v6, v1, 0x1

    #@b1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    const-string/jumbo v6, "\\."

    #@b8
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    .line 299
    .local v0, "classes":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@be
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    iput-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@c4
    .line 301
    .end local v0    # "classes":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@c6
    invoke-static {v3}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    #@c9
    move-result-object v3

    #@ca
    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@cc
    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@ce
    invoke-interface {v3, v6, v0, v7}, Landroid/media/Tokenizer$OnTokenListener;->onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #@d1
    goto/16 :goto_0
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    #@0
    .prologue
    .line 235
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@7
    .line 236
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    #@a
    .line 237
    return-object p0
.end method

.method public tokenize()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 242
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 243
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@7
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@a
    move-result v3

    #@b
    add-int/lit8 v3, v3, 0x1

    #@d
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    #@10
    .line 244
    :cond_0
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@12
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@18
    invoke-static {v3}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@1f
    move-result v3

    #@20
    if-ge v2, v3, :cond_2

    #@22
    .line 250
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    #@24
    if-nez v2, :cond_1

    #@26
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@28
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@2e
    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@31
    move-result v3

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v2

    #@36
    const/16 v3, 0x2f

    #@38
    if-ne v2, v3, :cond_4

    #@3a
    .line 251
    :cond_1
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@3c
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@42
    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@45
    move-result v3

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    const-string/jumbo v3, ">"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 255
    .local v1, "parts":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@53
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 256
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@59
    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@5c
    move-result v3

    #@5d
    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@5f
    invoke-static {v4}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@62
    move-result v4

    #@63
    aget-object v5, v1, v6

    #@65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@68
    move-result v5

    #@69
    add-int/2addr v4, v5

    #@6a
    .line 255
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    .line 257
    .local v0, "part":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@70
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@73
    move-result v3

    #@74
    aget-object v4, v1, v6

    #@76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@79
    move-result v4

    #@7a
    add-int/2addr v3, v4

    #@7b
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    #@7e
    .line 259
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    #@80
    if-eqz v2, :cond_5

    #@82
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    const-string/jumbo v3, " "

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v2

    #@9c
    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    #@9e
    .line 266
    .end local v0    # "part":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    #@9f
    iput-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    #@a1
    .line 268
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@a3
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@a6
    move-result v2

    #@a7
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@a9
    invoke-static {v3}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@b0
    move-result v3

    #@b1
    if-ge v2, v3, :cond_3

    #@b3
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@b5
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@bb
    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@be
    move-result v3

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@c2
    move-result v2

    #@c3
    const/16 v3, 0x3e

    #@c5
    if-ne v2, v3, :cond_3

    #@c7
    .line 269
    invoke-direct {p0}, Landroid/media/Tokenizer$TagTokenizer;->yield_tag()V

    #@ca
    .line 270
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@cc
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@ce
    invoke-static {v3}, Landroid/media/Tokenizer;->-get0(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    #@d1
    move-result-object v3

    #@d2
    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    #@d5
    move-result-object v3

    #@d6
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set1(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    #@d9
    .line 271
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@db
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@de
    move-result v3

    #@df
    add-int/lit8 v3, v3, 0x1

    #@e1
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    #@e4
    .line 241
    :cond_3
    return-void

    #@e5
    .line 253
    :cond_4
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@e7
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@ea
    move-result-object v2

    #@eb
    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    #@ed
    invoke-static {v3}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@f0
    move-result v3

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f4
    move-result-object v2

    #@f5
    const-string/jumbo v3, "[\t\u000c >]"

    #@f8
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    .restart local v1    # "parts":[Ljava/lang/String;
    goto/16 :goto_0

    #@fe
    .line 262
    .restart local v0    # "part":Ljava/lang/String;
    :cond_5
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    #@100
    goto :goto_1
.end method
