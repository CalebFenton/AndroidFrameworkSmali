.class public Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommaTokenizer"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist findTokenEnd(Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 247
    move v0, p2

    .line 248
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 250
    .local v1, "len":I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 251
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_10

    .line 252
    return v0

    .line 254
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 258
    :cond_13
    return v1
.end method

.method public whitelist findTokenStart(Ljava/lang/CharSequence;I)I
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 234
    move v0, p2

    .line 236
    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_10

    .line 237
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 239
    :cond_10
    :goto_10
    if-ge v0, p2, :cond_1d

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1d

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 243
    :cond_1d
    return v0
.end method

.method public whitelist terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    .local v0, "i":I
    :goto_4
    if-lez v0, :cond_13

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_13

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 268
    :cond_13
    if-lez v0, :cond_20

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_20

    .line 269
    return-object p1

    .line 271
    :cond_20
    instance-of v1, p1, Landroid/text/Spanned;

    const-string v2, ", "

    if-eqz v1, :cond_4c

    .line 272
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v7, v1

    .line 273
    .local v7, "sp":Landroid/text/SpannableString;
    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 275
    return-object v7

    .line 277
    .end local v7    # "sp":Landroid/text/SpannableString;
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
