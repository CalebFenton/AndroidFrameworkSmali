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
.field private greylist-max-o mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 146
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 8
    .param p1, "i"    # I

    .line 153
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_58

    .line 154
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 156
    .local v0, "sp":Landroid/text/Spanned;
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 157
    .local v1, "st":I
    sget-object v2, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 159
    .local v2, "en":I
    if-lt p1, v1, :cond_21

    if-ge p1, v2, :cond_21

    .line 160
    iget-object v3, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    return v3

    .line 163
    :cond_21
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 165
    .local v3, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2f
    array-length v5, v3

    if-ge v4, v5, :cond_58

    .line 166
    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_55

    .line 167
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 168
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 170
    if-lt p1, v1, :cond_55

    if-ge p1, v2, :cond_55

    .line 171
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    return v5

    .line 165
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 177
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "st":I
    .end local v2    # "en":I
    .end local v3    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    .end local v4    # "a":I
    :cond_58
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result v0

    return v0
.end method

.method public whitelist getChars(II[CI)V
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 192
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 194
    const/4 v0, -0x1

    .local v0, "st":I
    const/4 v1, -0x1

    .line 195
    .local v1, "en":I
    const/4 v2, 0x0

    .line 196
    .local v2, "nvisible":I
    const/4 v3, 0x0

    .local v3, "starts":[I
    const/4 v4, 0x0

    .line 198
    .local v4, "ends":[I
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_54

    .line 199
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 201
    .local v5, "sp":Landroid/text/Spanned;
    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 202
    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 204
    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 205
    .local v6, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v2, v6

    .line 206
    new-array v3, v2, [I

    .line 207
    new-array v4, v2, [I

    .line 209
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    if-ge v7, v2, :cond_54

    .line 210
    aget-object v8, v6, v7

    invoke-static {v8}, Landroid/text/method/PasswordTransformationMethod$Visible;->-$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_51

    .line 211
    aget-object v8, v6, v7

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aput v8, v3, v7

    .line 212
    aget-object v8, v6, v7

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    aput v8, v4, v7

    .line 209
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 217
    .end local v5    # "sp":Landroid/text/Spanned;
    .end local v6    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    .end local v7    # "i":I
    :cond_54
    move v5, p1

    .local v5, "i":I
    :goto_55
    if-ge v5, p2, :cond_7a

    .line 218
    if-lt v5, v0, :cond_5b

    if-lt v5, v1, :cond_77

    .line 219
    :cond_5b
    const/4 v6, 0x0

    .line 221
    .local v6, "visible":Z
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_5d
    if-ge v7, v2, :cond_6c

    .line 222
    aget v8, v3, v7

    if-lt v5, v8, :cond_69

    aget v8, v4, v7

    if-ge v5, v8, :cond_69

    .line 223
    const/4 v6, 0x1

    .line 224
    goto :goto_6c

    .line 221
    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 228
    .end local v7    # "a":I
    :cond_6c
    :goto_6c
    if-nez v6, :cond_77

    .line 229
    sub-int v7, v5, p1

    add-int/2addr v7, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-$$Nest$sfgetDOT()C

    move-result v8

    aput-char v8, p3, v7

    .line 217
    .end local v6    # "visible":Z
    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 233
    .end local v5    # "i":I
    :cond_7a
    return-void
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 181
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 183
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    .line 184
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
