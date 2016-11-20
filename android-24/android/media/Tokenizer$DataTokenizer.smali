.class Landroid/media/Tokenizer$DataTokenizer;
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
    name = "DataTokenizer"
.end annotation


# instance fields
.field private mData:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/Tokenizer;

    #@0
    .prologue
    .line 183
    iput-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "escape"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "pos"    # I

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@2
    invoke-static {v0}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 194
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@e
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@10
    invoke-static {v1}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@16
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 195
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 196
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v1

    #@2c
    add-int/2addr v1, p3

    #@2d
    invoke-static {v0, v1}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    #@30
    .line 197
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@32
    invoke-static {v0}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@35
    move-result v0

    #@36
    add-int/lit8 p3, v0, -0x1

    #@38
    .line 198
    const/4 v0, 0x1

    #@39
    return v0

    #@3a
    .line 200
    :cond_0
    const/4 v0, 0x0

    #@3b
    return v0
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    #@0
    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iput-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@7
    .line 189
    return-object p0
.end method

.method public tokenize()V
    .locals 5

    #@0
    .prologue
    .line 205
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@2
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    .line 206
    .local v0, "end":I
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@c
    invoke-static {v2}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@f
    move-result v1

    #@10
    .local v1, "pos":I
    :goto_0
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@12
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    if-ge v1, v2, :cond_2

    #@1c
    .line 207
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@1e
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v2

    #@26
    const/16 v3, 0x26

    #@28
    if-ne v2, v3, :cond_1

    #@2a
    .line 208
    const-string/jumbo v2, "&amp;"

    #@2d
    const-string/jumbo v3, "&"

    #@30
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_0

    #@36
    .line 209
    const-string/jumbo v2, "&lt;"

    #@39
    const-string/jumbo v3, "<"

    #@3c
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@3f
    move-result v2

    #@40
    .line 208
    if-nez v2, :cond_0

    #@42
    .line 210
    const-string/jumbo v2, "&gt;"

    #@45
    const-string/jumbo v3, ">"

    #@48
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@4b
    move-result v2

    #@4c
    .line 208
    if-nez v2, :cond_0

    #@4e
    .line 211
    const-string/jumbo v2, "&lrm;"

    #@51
    const-string/jumbo v3, "\u200e"

    #@54
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@57
    move-result v2

    #@58
    .line 208
    if-nez v2, :cond_0

    #@5a
    .line 212
    const-string/jumbo v2, "&rlm;"

    #@5d
    const-string/jumbo v3, "\u200f"

    #@60
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@63
    move-result v2

    #@64
    .line 208
    if-nez v2, :cond_0

    #@66
    .line 213
    const-string/jumbo v2, "&nbsp;"

    #@69
    const-string/jumbo v3, "\u00a0"

    #@6c
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    #@6f
    move-result v2

    #@70
    .line 208
    if-eqz v2, :cond_0

    #@72
    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@74
    goto :goto_0

    #@75
    .line 216
    :cond_1
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@77
    invoke-static {v2}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@7e
    move-result v2

    #@7f
    const/16 v3, 0x3c

    #@81
    if-ne v2, v3, :cond_0

    #@83
    .line 217
    move v0, v1

    #@84
    .line 218
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@86
    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@88
    invoke-static {v3}, Landroid/media/Tokenizer;->-get4(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    #@8b
    move-result-object v3

    #@8c
    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    #@8f
    move-result-object v3

    #@90
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->-set1(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    #@93
    .line 222
    :cond_2
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@95
    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@97
    invoke-static {v3}, Landroid/media/Tokenizer;->-get2(Landroid/media/Tokenizer;)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    iget-object v4, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@9d
    invoke-static {v4}, Landroid/media/Tokenizer;->-get1(Landroid/media/Tokenizer;)I

    #@a0
    move-result v4

    #@a1
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 224
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@aa
    invoke-static {v2}, Landroid/media/Tokenizer;->-get3(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    #@ad
    move-result-object v2

    #@ae
    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v3

    #@b4
    invoke-interface {v2, v3}, Landroid/media/Tokenizer$OnTokenListener;->onData(Ljava/lang/String;)V

    #@b7
    .line 225
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@b9
    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    #@bb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@be
    move-result v3

    #@bf
    const/4 v4, 0x0

    #@c0
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@c3
    .line 226
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    #@c5
    invoke-static {v2, v0}, Landroid/media/Tokenizer;->-set0(Landroid/media/Tokenizer;I)I

    #@c8
    .line 204
    return-void
.end method
