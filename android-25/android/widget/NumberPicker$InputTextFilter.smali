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
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    #@0
    .prologue
    .line 2076
    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    #@0
    .prologue
    .line 2094
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    #@5
    move-result-object v7

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 2095
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@a
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get16(Landroid/widget/NumberPicker;)Landroid/widget/NumberPicker$SetSelectionCommand;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7}, Landroid/widget/NumberPicker$SetSelectionCommand;->cancel()V

    #@11
    .line 2098
    :cond_0
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@13
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    if-nez v7, :cond_5

    #@19
    .line 2099
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@1c
    move-result-object v1

    #@1d
    .line 2100
    .local v1, "filtered":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    #@1f
    .line 2101
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    .line 2104
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const/4 v8, 0x0

    #@29
    move/from16 v0, p5

    #@2b
    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v8

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    .line 2105
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@3e
    move-result v8

    #@3f
    move/from16 v0, p6

    #@41
    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@44
    move-result-object v8

    #@45
    .line 2104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    .line 2107
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v7, ""

    #@50
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v7

    #@54
    if-eqz v7, :cond_2

    #@56
    .line 2108
    return-object v2

    #@57
    .line 2110
    :cond_2
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@59
    invoke-static {v7, v2}, Landroid/widget/NumberPicker;->-wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    #@5c
    move-result v4

    #@5d
    .line 2119
    .local v4, "val":I
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@5f
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    #@62
    move-result v7

    #@63
    if-gt v4, v7, :cond_3

    #@65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@68
    move-result v7

    #@69
    iget-object v8, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@6b
    invoke-static {v8}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    #@6e
    move-result v8

    #@6f
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@76
    move-result v8

    #@77
    if-le v7, v8, :cond_4

    #@79
    .line 2120
    :cond_3
    const-string/jumbo v7, ""

    #@7c
    return-object v7

    #@7d
    .line 2122
    :cond_4
    return-object v1

    #@7e
    .line 2125
    .end local v1    # "filtered":Ljava/lang/CharSequence;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "val":I
    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@81
    move-result-object v7

    #@82
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    .line 2126
    .restart local v1    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@89
    move-result v7

    #@8a
    if-eqz v7, :cond_6

    #@8c
    .line 2127
    const-string/jumbo v7, ""

    #@8f
    return-object v7

    #@90
    .line 2129
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const/4 v8, 0x0

    #@96
    move/from16 v0, p5

    #@98
    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@9b
    move-result-object v8

    #@9c
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v8

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    .line 2130
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@ab
    move-result v8

    #@ac
    move/from16 v0, p6

    #@ae
    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@b1
    move-result-object v8

    #@b2
    .line 2129
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    .line 2131
    .restart local v2    # "result":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    .line 2132
    .local v3, "str":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@c4
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@c7
    move-result-object v8

    #@c8
    const/4 v7, 0x0

    #@c9
    array-length v9, v8

    #@ca
    :goto_0
    if-ge v7, v9, :cond_8

    #@cc
    aget-object v5, v8, v7

    #@ce
    .line 2133
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    .line 2134
    .local v6, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d5
    move-result v10

    #@d6
    if-eqz v10, :cond_7

    #@d8
    .line 2135
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@da
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@dd
    move-result v8

    #@de
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@e1
    move-result v9

    #@e2
    invoke-static {v7, v8, v9}, Landroid/widget/NumberPicker;->-wrap8(Landroid/widget/NumberPicker;II)V

    #@e5
    .line 2136
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@e8
    move-result v7

    #@e9
    move/from16 v0, p5

    #@eb
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    #@ee
    move-result-object v7

    #@ef
    return-object v7

    #@f0
    .line 2132
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@f2
    goto :goto_0

    #@f3
    .line 2139
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "valLowerCase":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, ""

    #@f6
    return-object v7
.end method

.method protected getAcceptedChars()[C
    .locals 1

    #@0
    .prologue
    .line 2086
    invoke-static {}, Landroid/widget/NumberPicker;->-get0()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 2081
    const/4 v0, 0x1

    #@1
    return v0
.end method
