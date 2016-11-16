.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@5
    .line 141
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 150
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@3
    instance-of v5, v5, Landroid/text/Spanned;

    #@5
    if-eqz v5, :cond_2

    #@7
    .line 151
    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@9
    check-cast v2, Landroid/text/Spanned;

    #@b
    .line 153
    .local v2, "sp":Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@d
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@10
    move-result v3

    #@11
    .line 154
    .local v3, "st":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@13
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@16
    move-result v1

    #@17
    .line 156
    .local v1, "en":I
    if-lt p1, v3, :cond_0

    #@19
    if-ge p1, v1, :cond_0

    #@1b
    .line 157
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@1d
    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@20
    move-result v5

    #@21
    return v5

    #@22
    .line 160
    :cond_0
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    #@25
    move-result v5

    #@26
    const-class v6, Landroid/text/method/PasswordTransformationMethod$Visible;

    #@28
    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    #@2e
    .line 162
    .local v4, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    #@2f
    .local v0, "a":I
    :goto_0
    array-length v5, v4

    #@30
    if-ge v0, v5, :cond_2

    #@32
    .line 163
    aget-object v5, v4, v0

    #@34
    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->-get0(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    #@37
    move-result-object v5

    #@38
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@3b
    move-result v5

    #@3c
    if-ltz v5, :cond_1

    #@3e
    .line 164
    aget-object v5, v4, v0

    #@40
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@43
    move-result v3

    #@44
    .line 165
    aget-object v5, v4, v0

    #@46
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@49
    move-result v1

    #@4a
    .line 167
    if-lt p1, v3, :cond_1

    #@4c
    if-ge p1, v1, :cond_1

    #@4e
    .line 168
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@50
    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@53
    move-result v5

    #@54
    return v5

    #@55
    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 174
    .end local v0    # "a":I
    .end local v1    # "en":I
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "st":I
    .end local v4    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-get0()C

    #@5b
    move-result v5

    #@5c
    return v5
.end method

.method public getChars(II[CI)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    #@0
    .prologue
    .line 189
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@4
    move/from16 v0, p1

    #@6
    move/from16 v1, p2

    #@8
    move-object/from16 v2, p3

    #@a
    move/from16 v3, p4

    #@c
    invoke-static {v14, v0, v1, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@f
    .line 191
    const/4 v10, -0x1

    #@10
    .local v10, "st":I
    const/4 v5, -0x1

    #@11
    .line 192
    .local v5, "en":I
    const/4 v8, 0x0

    #@12
    .line 193
    .local v8, "nvisible":I
    const/4 v11, 0x0

    #@13
    .local v11, "starts":[I
    const/4 v6, 0x0

    #@14
    .line 195
    .local v6, "ends":[I
    move-object/from16 v0, p0

    #@16
    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@18
    instance-of v14, v14, Landroid/text/Spanned;

    #@1a
    if-eqz v14, :cond_1

    #@1c
    .line 196
    move-object/from16 v0, p0

    #@1e
    iget-object v9, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@20
    check-cast v9, Landroid/text/Spanned;

    #@22
    .line 198
    .local v9, "sp":Landroid/text/Spanned;
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@24
    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@27
    move-result v10

    #@28
    .line 199
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@2a
    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@2d
    move-result v5

    #@2e
    .line 201
    invoke-interface {v9}, Landroid/text/Spanned;->length()I

    #@31
    move-result v14

    #@32
    const-class v15, Landroid/text/method/PasswordTransformationMethod$Visible;

    #@34
    const/16 v16, 0x0

    #@36
    move/from16 v0, v16

    #@38
    invoke-interface {v9, v0, v14, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@3b
    move-result-object v13

    #@3c
    check-cast v13, [Landroid/text/method/PasswordTransformationMethod$Visible;

    #@3e
    .line 202
    .local v13, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v8, v13

    #@3f
    .line 203
    new-array v11, v8, [I

    #@41
    .line 204
    .local v11, "starts":[I
    new-array v6, v8, [I

    #@43
    .line 206
    .local v6, "ends":[I
    const/4 v7, 0x0

    #@44
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    #@46
    .line 207
    aget-object v14, v13, v7

    #@48
    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod$Visible;->-get0(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    #@4b
    move-result-object v14

    #@4c
    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@4f
    move-result v14

    #@50
    if-ltz v14, :cond_0

    #@52
    .line 208
    aget-object v14, v13, v7

    #@54
    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@57
    move-result v14

    #@58
    aput v14, v11, v7

    #@5a
    .line 209
    aget-object v14, v13, v7

    #@5c
    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@5f
    move-result v14

    #@60
    aput v14, v6, v7

    #@62
    .line 206
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@64
    goto :goto_0

    #@65
    .line 214
    .end local v6    # "ends":[I
    .end local v7    # "i":I
    .end local v9    # "sp":Landroid/text/Spanned;
    .end local v11    # "starts":[I
    .end local v13    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_1
    move/from16 v7, p1

    #@67
    .restart local v7    # "i":I
    :goto_1
    move/from16 v0, p2

    #@69
    if-ge v7, v0, :cond_6

    #@6b
    .line 215
    if-lt v7, v10, :cond_2

    #@6d
    if-lt v7, v5, :cond_4

    #@6f
    .line 216
    :cond_2
    const/4 v12, 0x0

    #@70
    .line 218
    .local v12, "visible":Z
    const/4 v4, 0x0

    #@71
    .local v4, "a":I
    :goto_2
    if-ge v4, v8, :cond_3

    #@73
    .line 219
    aget v14, v11, v4

    #@75
    if-lt v7, v14, :cond_5

    #@77
    aget v14, v6, v4

    #@79
    if-ge v7, v14, :cond_5

    #@7b
    .line 220
    const/4 v12, 0x1

    #@7c
    .line 225
    :cond_3
    if-nez v12, :cond_4

    #@7e
    .line 226
    sub-int v14, v7, p1

    #@80
    add-int v14, v14, p4

    #@82
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-get0()C

    #@85
    move-result v15

    #@86
    aput-char v15, p3, v14

    #@88
    .line 214
    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@8a
    goto :goto_1

    #@8b
    .line 218
    .restart local v4    # "a":I
    .restart local v12    # "visible":Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@8d
    goto :goto_2

    #@8e
    .line 188
    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_6
    return-void
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 178
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 180
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    #@8
    .line 181
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v1, v0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
