.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/NumberPicker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2222
    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 20
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 2240
    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    iget-object v3, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSetSelectionCommand(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2241
    iget-object v3, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSetSelectionCommand(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    .line 2244
    :cond_17
    iget-object v3, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v3, :cond_7d

    .line 2245
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2246
    .local v3, "filtered":Ljava/lang/CharSequence;
    if-nez v3, :cond_2c

    .line 2247
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2250
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2251
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2253
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 2254
    return-object v4

    .line 2256
    :cond_58
    iget-object v6, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6, v4}, Landroid/widget/NumberPicker;->-$$Nest$mgetSelectedPos(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v6

    .line 2265
    .local v6, "val":I
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I

    move-result v7

    if-gt v6, v7, :cond_7c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v8}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_7b

    goto :goto_7c

    .line 2268
    :cond_7b
    return-object v3

    .line 2266
    :cond_7c
    :goto_7c
    return-object v5

    .line 2271
    .end local v3    # "filtered":Ljava/lang/CharSequence;
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "val":I
    :cond_7d
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2272
    .restart local v3    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 2273
    return-object v5

    .line 2275
    :cond_8c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2276
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2277
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2278
    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v8}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_c0
    if-ge v4, v9, :cond_e7

    aget-object v10, v8, v4

    .line 2279
    .local v10, "val":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 2280
    .local v11, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e4

    .line 2281
    iget-object v4, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/widget/NumberPicker;->-$$Nest$mpostSetSelectionCommand(Landroid/widget/NumberPicker;II)V

    .line 2282
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 2278
    .end local v10    # "val":Ljava/lang/String;
    .end local v11    # "valLowerCase":Ljava/lang/String;
    :cond_e4
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 2285
    :cond_e7
    return-object v5
.end method

.method protected whitelist getAcceptedChars()[C
    .registers 2

    .line 2232
    invoke-static {}, Landroid/widget/NumberPicker;->-$$Nest$sfgetDIGIT_CHARACTERS()[C

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 2227
    const/4 v0, 0x1

    return v0
.end method
