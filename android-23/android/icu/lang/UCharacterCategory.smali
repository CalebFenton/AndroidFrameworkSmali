.class public final Landroid/icu/lang/UCharacterCategory;
.super Ljava/lang/Object;
.source "UCharacterCategory.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "category"    # I

    #@0
    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    #@3
    .line 100
    const-string/jumbo v0, "Unassigned"

    #@6
    return-object v0

    #@7
    .line 42
    :pswitch_0
    const-string/jumbo v0, "Letter, Uppercase"

    #@a
    return-object v0

    #@b
    .line 44
    :pswitch_1
    const-string/jumbo v0, "Letter, Lowercase"

    #@e
    return-object v0

    #@f
    .line 46
    :pswitch_2
    const-string/jumbo v0, "Letter, Titlecase"

    #@12
    return-object v0

    #@13
    .line 48
    :pswitch_3
    const-string/jumbo v0, "Letter, Modifier"

    #@16
    return-object v0

    #@17
    .line 50
    :pswitch_4
    const-string/jumbo v0, "Letter, Other"

    #@1a
    return-object v0

    #@1b
    .line 52
    :pswitch_5
    const-string/jumbo v0, "Mark, Non-Spacing"

    #@1e
    return-object v0

    #@1f
    .line 54
    :pswitch_6
    const-string/jumbo v0, "Mark, Enclosing"

    #@22
    return-object v0

    #@23
    .line 56
    :pswitch_7
    const-string/jumbo v0, "Mark, Spacing Combining"

    #@26
    return-object v0

    #@27
    .line 58
    :pswitch_8
    const-string/jumbo v0, "Number, Decimal Digit"

    #@2a
    return-object v0

    #@2b
    .line 60
    :pswitch_9
    const-string/jumbo v0, "Number, Letter"

    #@2e
    return-object v0

    #@2f
    .line 62
    :pswitch_a
    const-string/jumbo v0, "Number, Other"

    #@32
    return-object v0

    #@33
    .line 64
    :pswitch_b
    const-string/jumbo v0, "Separator, Space"

    #@36
    return-object v0

    #@37
    .line 66
    :pswitch_c
    const-string/jumbo v0, "Separator, Line"

    #@3a
    return-object v0

    #@3b
    .line 68
    :pswitch_d
    const-string/jumbo v0, "Separator, Paragraph"

    #@3e
    return-object v0

    #@3f
    .line 70
    :pswitch_e
    const-string/jumbo v0, "Other, Control"

    #@42
    return-object v0

    #@43
    .line 72
    :pswitch_f
    const-string/jumbo v0, "Other, Format"

    #@46
    return-object v0

    #@47
    .line 74
    :pswitch_10
    const-string/jumbo v0, "Other, Private Use"

    #@4a
    return-object v0

    #@4b
    .line 76
    :pswitch_11
    const-string/jumbo v0, "Other, Surrogate"

    #@4e
    return-object v0

    #@4f
    .line 78
    :pswitch_12
    const-string/jumbo v0, "Punctuation, Dash"

    #@52
    return-object v0

    #@53
    .line 80
    :pswitch_13
    const-string/jumbo v0, "Punctuation, Open"

    #@56
    return-object v0

    #@57
    .line 82
    :pswitch_14
    const-string/jumbo v0, "Punctuation, Close"

    #@5a
    return-object v0

    #@5b
    .line 84
    :pswitch_15
    const-string/jumbo v0, "Punctuation, Connector"

    #@5e
    return-object v0

    #@5f
    .line 86
    :pswitch_16
    const-string/jumbo v0, "Punctuation, Other"

    #@62
    return-object v0

    #@63
    .line 88
    :pswitch_17
    const-string/jumbo v0, "Symbol, Math"

    #@66
    return-object v0

    #@67
    .line 90
    :pswitch_18
    const-string/jumbo v0, "Symbol, Currency"

    #@6a
    return-object v0

    #@6b
    .line 92
    :pswitch_19
    const-string/jumbo v0, "Symbol, Modifier"

    #@6e
    return-object v0

    #@6f
    .line 94
    :pswitch_1a
    const-string/jumbo v0, "Symbol, Other"

    #@72
    return-object v0

    #@73
    .line 96
    :pswitch_1b
    const-string/jumbo v0, "Punctuation, Initial quote"

    #@76
    return-object v0

    #@77
    .line 98
    :pswitch_1c
    const-string/jumbo v0, "Punctuation, Final quote"

    #@7a
    return-object v0

    #@7b
    .line 40
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method
