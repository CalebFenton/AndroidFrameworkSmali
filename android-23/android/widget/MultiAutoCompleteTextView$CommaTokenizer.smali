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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    #@0
    .prologue
    .line 247
    move v0, p2

    #@1
    .line 248
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    .line 250
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 251
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v2

    #@b
    const/16 v3, 0x2c

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 252
    return v0

    #@10
    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 258
    :cond_1
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    #@0
    .prologue
    .line 234
    move v0, p2

    #@1
    .line 236
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@3
    add-int/lit8 v1, v0, -0x1

    #@5
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v1

    #@9
    const/16 v2, 0x2c

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 237
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 239
    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    #@12
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v1

    #@16
    const/16 v2, 0x20

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    .line 240
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 243
    :cond_1
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v6

    #@5
    .line 264
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    #@7
    add-int/lit8 v0, v6, -0x1

    #@9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    const/16 v2, 0x20

    #@f
    if-ne v0, v2, :cond_0

    #@11
    .line 265
    add-int/lit8 v6, v6, -0x1

    #@13
    goto :goto_0

    #@14
    .line 268
    :cond_0
    if-lez v6, :cond_1

    #@16
    add-int/lit8 v0, v6, -0x1

    #@18
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    const/16 v2, 0x2c

    #@1e
    if-ne v0, v2, :cond_1

    #@20
    .line 269
    return-object p1

    #@21
    .line 271
    :cond_1
    instance-of v0, p1, Landroid/text/Spanned;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 272
    new-instance v4, Landroid/text/SpannableString;

    #@27
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    const-string/jumbo v2, ", "

    #@33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    #@3e
    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, p1

    #@3f
    .line 273
    check-cast v0, Landroid/text/Spanned;

    #@41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@44
    move-result v2

    #@45
    .line 274
    const-class v3, Ljava/lang/Object;

    #@47
    move v5, v1

    #@48
    .line 273
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    #@4b
    .line 275
    return-object v4

    #@4c
    .line 277
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string/jumbo v1, ", "

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    return-object v0
.end method
