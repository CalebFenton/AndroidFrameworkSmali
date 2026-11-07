.class public final Landroid/icu/lang/UCharacterCategory;
.super Ljava/lang/Object;
.source "UCharacterCategory.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "category"    # I

    .line 41
    packed-switch p0, :pswitch_data_5e

    .line 101
    const-string v0, "Unassigned"

    return-object v0

    .line 99
    :pswitch_6
    const-string v0, "Punctuation, Final quote"

    return-object v0

    .line 97
    :pswitch_9
    const-string v0, "Punctuation, Initial quote"

    return-object v0

    .line 95
    :pswitch_c
    const-string v0, "Symbol, Other"

    return-object v0

    .line 93
    :pswitch_f
    const-string v0, "Symbol, Modifier"

    return-object v0

    .line 91
    :pswitch_12
    const-string v0, "Symbol, Currency"

    return-object v0

    .line 89
    :pswitch_15
    const-string v0, "Symbol, Math"

    return-object v0

    .line 87
    :pswitch_18
    const-string v0, "Punctuation, Other"

    return-object v0

    .line 85
    :pswitch_1b
    const-string v0, "Punctuation, Connector"

    return-object v0

    .line 83
    :pswitch_1e
    const-string v0, "Punctuation, Close"

    return-object v0

    .line 81
    :pswitch_21
    const-string v0, "Punctuation, Open"

    return-object v0

    .line 79
    :pswitch_24
    const-string v0, "Punctuation, Dash"

    return-object v0

    .line 77
    :pswitch_27
    const-string v0, "Other, Surrogate"

    return-object v0

    .line 75
    :pswitch_2a
    const-string v0, "Other, Private Use"

    return-object v0

    .line 73
    :pswitch_2d
    const-string v0, "Other, Format"

    return-object v0

    .line 71
    :pswitch_30
    const-string v0, "Other, Control"

    return-object v0

    .line 69
    :pswitch_33
    const-string v0, "Separator, Paragraph"

    return-object v0

    .line 67
    :pswitch_36
    const-string v0, "Separator, Line"

    return-object v0

    .line 65
    :pswitch_39
    const-string v0, "Separator, Space"

    return-object v0

    .line 63
    :pswitch_3c
    const-string v0, "Number, Other"

    return-object v0

    .line 61
    :pswitch_3f
    const-string v0, "Number, Letter"

    return-object v0

    .line 59
    :pswitch_42
    const-string v0, "Number, Decimal Digit"

    return-object v0

    .line 57
    :pswitch_45
    const-string v0, "Mark, Spacing Combining"

    return-object v0

    .line 55
    :pswitch_48
    const-string v0, "Mark, Enclosing"

    return-object v0

    .line 53
    :pswitch_4b
    const-string v0, "Mark, Non-Spacing"

    return-object v0

    .line 51
    :pswitch_4e
    const-string v0, "Letter, Other"

    return-object v0

    .line 49
    :pswitch_51
    const-string v0, "Letter, Modifier"

    return-object v0

    .line 47
    :pswitch_54
    const-string v0, "Letter, Titlecase"

    return-object v0

    .line 45
    :pswitch_57
    const-string v0, "Letter, Lowercase"

    return-object v0

    .line 43
    :pswitch_5a
    const-string v0, "Letter, Uppercase"

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
