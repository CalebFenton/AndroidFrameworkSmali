.class Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;
.super Landroid/icu/impl/personname/FieldModifierImpl;
.source "FieldModifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/FieldModifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitialModifier"
.end annotation


# instance fields
.field private final blacklist initialFormatter:Landroid/icu/text/SimpleFormatter;

.field private final blacklist initialSequenceFormatter:Landroid/icu/text/SimpleFormatter;

.field private final blacklist locale:Ljava/util/Locale;

.field private blacklist retainPunctuation:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "initialPattern"    # Ljava/lang/String;
    .param p3, "initialSequencePattern"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Landroid/icu/impl/personname/FieldModifierImpl;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->locale:Ljava/util/Locale;

    .line 123
    invoke-static {p2}, Landroid/icu/text/SimpleFormatter;->compile(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialFormatter:Landroid/icu/text/SimpleFormatter;

    .line 124
    invoke-static {p3}, Landroid/icu/text/SimpleFormatter;->compile(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialSequenceFormatter:Landroid/icu/text/SimpleFormatter;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->retainPunctuation:Z

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist modifyField(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "fieldValue"    # Ljava/lang/String;

    .line 134
    const-string v0, ""

    .line 135
    .local v0, "separator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    .line 137
    .local v2, "bi":Landroid/icu/text/BreakIterator;
    invoke-virtual {v2, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->first()I

    move-result v3

    .line 139
    .local v3, "wordStart":I
    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->next()I

    move-result v4

    .local v4, "wordEnd":I
    :goto_14
    const/4 v5, -0x1

    if-eq v4, v5, :cond_ae

    .line 140
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "word":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 142
    invoke-static {v5}, Landroid/icu/impl/personname/FieldModifierImpl;->-$$Nest$smgetFirstGrapheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "curInitial":Ljava/lang/String;
    const/4 v8, 0x1

    if-nez v1, :cond_38

    .line 144
    iget-object v9, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialFormatter:Landroid/icu/text/SimpleFormatter;

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v7, v8, v6

    invoke-virtual {v9, v8}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_75

    .line 145
    :cond_38
    iget-boolean v9, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->retainPunctuation:Z

    if-eqz v9, :cond_5e

    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialFormatter:Landroid/icu/text/SimpleFormatter;

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v7, v8, v6

    invoke-virtual {v10, v8}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v0, ""

    goto :goto_75

    .line 149
    :cond_5e
    iget-object v9, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialSequenceFormatter:Landroid/icu/text/SimpleFormatter;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    aput-object v1, v10, v6

    iget-object v11, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->initialFormatter:Landroid/icu/text/SimpleFormatter;

    new-array v12, v8, [Ljava/lang/CharSequence;

    aput-object v7, v12, v6

    invoke-virtual {v11, v12}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v8

    invoke-virtual {v9, v10}, Landroid/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .end local v7    # "curInitial":Ljava/lang/String;
    :goto_75
    goto :goto_a7

    :cond_76
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    .line 155
    :cond_96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .end local v5    # "word":Ljava/lang/String;
    :goto_a7
    move v3, v4

    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->next()I

    move-result v4

    goto/16 :goto_14

    .line 158
    .end local v4    # "wordEnd":I
    :cond_ae
    return-object v1
.end method

.method public blacklist setRetainPunctuation(Z)V
    .registers 2
    .param p1, "retain"    # Z

    .line 129
    iput-boolean p1, p0, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->retainPunctuation:Z

    .line 130
    return-void
.end method
