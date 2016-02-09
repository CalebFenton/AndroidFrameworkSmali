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
    .line 2077
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
    .line 2093
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@5
    move-result-object v7

    #@6
    if-nez v7, :cond_4

    #@8
    .line 2094
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    .line 2095
    .local v1, "filtered":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    #@e
    .line 2096
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 2099
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const/4 v8, 0x0

    #@18
    move/from16 v0, p5

    #@1a
    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@1d
    move-result-object v8

    #@1e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    .line 2100
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@2d
    move-result v8

    #@2e
    move/from16 v0, p6

    #@30
    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@33
    move-result-object v8

    #@34
    .line 2099
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 2102
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v7, ""

    #@3f
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_1

    #@45
    .line 2103
    return-object v2

    #@46
    .line 2105
    :cond_1
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@48
    invoke-static {v7, v2}, Landroid/widget/NumberPicker;->-wrap2(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    #@4b
    move-result v4

    #@4c
    .line 2114
    .local v4, "val":I
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@4e
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    #@51
    move-result v7

    #@52
    if-gt v4, v7, :cond_2

    #@54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@57
    move-result v7

    #@58
    iget-object v8, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@5a
    invoke-static {v8}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    #@5d
    move-result v8

    #@5e
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@65
    move-result v8

    #@66
    if-le v7, v8, :cond_3

    #@68
    .line 2115
    :cond_2
    const-string/jumbo v7, ""

    #@6b
    return-object v7

    #@6c
    .line 2117
    :cond_3
    return-object v1

    #@6d
    .line 2120
    .end local v1    # "filtered":Ljava/lang/CharSequence;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "val":I
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@70
    move-result-object v7

    #@71
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 2121
    .restart local v1    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@78
    move-result v7

    #@79
    if-eqz v7, :cond_5

    #@7b
    .line 2122
    const-string/jumbo v7, ""

    #@7e
    return-object v7

    #@7f
    .line 2124
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const/4 v8, 0x0

    #@85
    move/from16 v0, p5

    #@87
    invoke-interface {p4, v8, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@8a
    move-result-object v8

    #@8b
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    .line 2125
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@9a
    move-result v8

    #@9b
    move/from16 v0, p6

    #@9d
    invoke-interface {p4, v0, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    #@a0
    move-result-object v8

    #@a1
    .line 2124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    .line 2126
    .restart local v2    # "result":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    .line 2127
    .local v3, "str":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@b3
    invoke-static {v7}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    #@b6
    move-result-object v8

    #@b7
    const/4 v7, 0x0

    #@b8
    array-length v9, v8

    #@b9
    :goto_0
    if-ge v7, v9, :cond_7

    #@bb
    aget-object v5, v8, v7

    #@bd
    .line 2128
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    .line 2129
    .local v6, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c4
    move-result v10

    #@c5
    if-eqz v10, :cond_6

    #@c7
    .line 2130
    iget-object v7, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #@c9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@cc
    move-result v8

    #@cd
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@d0
    move-result v9

    #@d1
    invoke-static {v7, v8, v9}, Landroid/widget/NumberPicker;->-wrap8(Landroid/widget/NumberPicker;II)V

    #@d4
    .line 2131
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@d7
    move-result v7

    #@d8
    move/from16 v0, p5

    #@da
    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    #@dd
    move-result-object v7

    #@de
    return-object v7

    #@df
    .line 2127
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@e1
    goto :goto_0

    #@e2
    .line 2134
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "valLowerCase":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, ""

    #@e5
    return-object v7
.end method

.method protected getAcceptedChars()[C
    .locals 1

    #@0
    .prologue
    .line 2087
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
    .line 2082
    const/4 v0, 0x1

    #@1
    return v0
.end method
