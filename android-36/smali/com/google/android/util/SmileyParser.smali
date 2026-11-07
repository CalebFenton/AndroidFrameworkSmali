.class public Lcom/google/android/util/SmileyParser;
.super Lcom/google/android/util/AbstractMessageParser;
.source "SmileyParser.java"


# instance fields
.field private blacklist mRes:Lcom/google/android/util/SmileyResources;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/google/android/util/SmileyResources;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "res"    # Lcom/google/android/util/SmileyResources;

    .line 34
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 42
    iput-object p2, v0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    return-object v0
.end method

.method public blacklist getSpannableString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/google/android/util/SmileyParser;->getPartCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 59
    const-string v1, ""

    return-object v1

    .line 63
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/util/SmileyParser;->getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v1

    .line 64
    .local v1, "part":Lcom/google/android/util/AbstractMessageParser$Part;
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/util/AbstractMessageParser$Token;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 66
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_55

    .line 67
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 68
    .local v5, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 69
    .local v6, "start":I
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v7

    sget-object v8, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    if-ne v7, v8, :cond_52

    .line 71
    iget-object v7, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/util/SmileyResources;->getSmileyRes(Ljava/lang/String;)I

    move-result v7

    .line 72
    .local v7, "resid":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_52

    .line 73
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, p1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 73
    const/16 v10, 0x21

    invoke-virtual {v0, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    .end local v5    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    .end local v6    # "start":I
    .end local v7    # "resid":I
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 80
    .end local v4    # "i":I
    :cond_55
    return-object v0
.end method
