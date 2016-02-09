.class public Lcom/google/android/util/SmileyParser;
.super Lcom/google/android/util/AbstractMessageParser;
.source "SmileyParser.java"


# instance fields
.field private mRes:Lcom/google/android/util/SmileyResources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/util/SmileyResources;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/google/android/util/SmileyResources;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 35
    const/4 v2, 0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v4, v3

    #@5
    move v5, v3

    #@6
    move v6, v3

    #@7
    move v7, v3

    #@8
    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    #@b
    .line 42
    iput-object p2, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    #@d
    .line 33
    return-void
.end method


# virtual methods
.method protected getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    #@2
    return-object v0
.end method

.method public getSpannableString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@6
    .line 58
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/google/android/util/SmileyParser;->getPartCount()I

    #@9
    move-result v8

    #@a
    if-nez v8, :cond_0

    #@c
    .line 59
    const-string/jumbo v8, ""

    #@f
    return-object v8

    #@10
    .line 63
    :cond_0
    invoke-virtual {p0, v9}, Lcom/google/android/util/SmileyParser;->getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;

    #@13
    move-result-object v3

    #@14
    .line 64
    .local v3, "part":Lcom/google/android/util/AbstractMessageParser$Part;
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    #@17
    move-result-object v7

    #@18
    .line 65
    .local v7, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/util/AbstractMessageParser$Token;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v2

    #@1c
    .line 66
    .local v2, "len":I
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@1f
    .line 67
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Token;

    #@25
    .line 68
    .local v6, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    #@28
    move-result v5

    #@29
    .line 69
    .local v5, "start":I
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@30
    .line 70
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@33
    move-result-object v8

    #@34
    sget-object v9, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@36
    if-ne v8, v9, :cond_1

    #@38
    .line 71
    iget-object v8, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    #@3a
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v8, v9}, Lcom/google/android/util/SmileyResources;->getSmileyRes(Ljava/lang/String;)I

    #@41
    move-result v4

    #@42
    .line 72
    .local v4, "resid":I
    const/4 v8, -0x1

    #@43
    if-eq v4, v8, :cond_1

    #@45
    .line 73
    new-instance v8, Landroid/text/style/ImageSpan;

    #@47
    invoke-direct {v8, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    #@4a
    .line 75
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    #@4d
    move-result v9

    #@4e
    .line 76
    const/16 v10, 0x21

    #@50
    .line 73
    invoke-virtual {v0, v8, v5, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@53
    .line 66
    .end local v4    # "resid":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    .line 80
    .end local v5    # "start":I
    .end local v6    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_2
    return-object v0
.end method
