.class public Landroid/icu/impl/SimplePatternFormatter;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SimplePatternFormatter$State;,
        Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;,
        Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;,
        Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_impl_SimplePatternFormatter$StateSwitchesValues:[I


# instance fields
.field private final firstPlaceholderReused:Z

.field private final patternWithoutPlaceholders:Ljava/lang/String;

.field private final placeholderCount:I

.field private final placeholderIdsOrderedByOffset:[I


# direct methods
.method private static synthetic -getandroid_icu_impl_SimplePatternFormatter$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/SimplePatternFormatter;->-android_icu_impl_SimplePatternFormatter$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/SimplePatternFormatter;->-android_icu_impl_SimplePatternFormatter$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/impl/SimplePatternFormatter$State;->values()[Landroid/icu/impl/SimplePatternFormatter$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->APOSTROPHE:Landroid/icu/impl/SimplePatternFormatter$State;

    #@10
    invoke-virtual {v1}, Landroid/icu/impl/SimplePatternFormatter$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@19
    invoke-virtual {v1}, Landroid/icu/impl/SimplePatternFormatter$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/impl/SimplePatternFormatter$State;->PLACEHOLDER:Landroid/icu/impl/SimplePatternFormatter$State;

    #@22
    invoke-virtual {v1}, Landroid/icu/impl/SimplePatternFormatter$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/impl/SimplePatternFormatter;->-android_icu_impl_SimplePatternFormatter$StateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@5
    .line 47
    invoke-virtual {p2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->getPlaceholderIdsOrderedByOffset()[I

    #@8
    move-result-object v0

    #@9
    .line 46
    iput-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@b
    .line 48
    invoke-virtual {p2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->getPlaceholderCount()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderCount:I

    #@11
    .line 49
    invoke-virtual {p2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->getFirstPlaceholderReused()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Landroid/icu/impl/SimplePatternFormatter;->firstPlaceholderReused:Z

    #@17
    .line 44
    return-void
.end method

.method public static compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 10
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v9, 0x27

    #@3
    const/16 v8, 0x7b

    #@5
    .line 58
    new-instance v4, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;

    #@7
    invoke-direct {v4, v6}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;-><init>(Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;)V

    #@a
    .line 59
    .local v4, "placeholdersBuilder":Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;
    new-instance v2, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;

    #@c
    invoke-direct {v2, v6}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;-><init>(Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;)V

    #@f
    .line 60
    .local v2, "idBuilder":Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 61
    .local v3, "newPattern":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@16
    .line 62
    .local v5, "state":Landroid/icu/impl/SimplePatternFormatter$State;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1a
    move-result v6

    #@1b
    if-ge v1, v6, :cond_6

    #@1d
    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v0

    #@21
    .line 64
    .local v0, "ch":C
    invoke-static {}, Landroid/icu/impl/SimplePatternFormatter;->-getandroid_icu_impl_SimplePatternFormatter$StateSwitchesValues()[I

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v5}, Landroid/icu/impl/SimplePatternFormatter$State;->ordinal()I

    #@28
    move-result v7

    #@29
    aget v6, v6, v7

    #@2b
    packed-switch v6, :pswitch_data_0

    #@2e
    .line 100
    new-instance v6, Ljava/lang/IllegalStateException;

    #@30
    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    #@33
    throw v6

    #@34
    .line 66
    :pswitch_0
    if-ne v0, v9, :cond_0

    #@36
    .line 67
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->APOSTROPHE:Landroid/icu/impl/SimplePatternFormatter$State;

    #@38
    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 68
    :cond_0
    if-ne v0, v8, :cond_1

    #@3d
    .line 69
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->PLACEHOLDER:Landroid/icu/impl/SimplePatternFormatter$State;

    #@3f
    .line 70
    invoke-virtual {v2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->reset()V

    #@42
    goto :goto_1

    #@43
    .line 72
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    goto :goto_1

    #@47
    .line 76
    :pswitch_1
    if-ne v0, v9, :cond_2

    #@49
    .line 77
    const-string/jumbo v6, "\'"

    #@4c
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 84
    :goto_2
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@51
    goto :goto_1

    #@52
    .line 78
    :cond_2
    if-ne v0, v8, :cond_3

    #@54
    .line 79
    const-string/jumbo v6, "{"

    #@57
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_2

    #@5b
    .line 81
    :cond_3
    const-string/jumbo v6, "\'"

    #@5e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    goto :goto_2

    #@65
    .line 87
    :pswitch_2
    const/16 v6, 0x30

    #@67
    if-lt v0, v6, :cond_4

    #@69
    const/16 v6, 0x39

    #@6b
    if-gt v0, v6, :cond_4

    #@6d
    .line 88
    invoke-virtual {v2, v0}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->add(C)V

    #@70
    goto :goto_1

    #@71
    .line 89
    :cond_4
    const/16 v6, 0x7d

    #@73
    if-ne v0, v6, :cond_5

    #@75
    invoke-virtual {v2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->isValid()Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_5

    #@7b
    .line 90
    invoke-virtual {v2}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->getId()I

    #@7e
    move-result v6

    #@7f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@82
    move-result v7

    #@83
    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;->add(II)V

    #@86
    .line 91
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@88
    goto :goto_1

    #@89
    .line 93
    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8c
    .line 94
    invoke-virtual {v2, v3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->appendTo(Ljava/lang/StringBuilder;)V

    #@8f
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@92
    .line 96
    sget-object v5, Landroid/icu/impl/SimplePatternFormatter$State;->INIT:Landroid/icu/impl/SimplePatternFormatter$State;

    #@94
    goto :goto_1

    #@95
    .line 103
    .end local v0    # "ch":C
    :cond_6
    invoke-static {}, Landroid/icu/impl/SimplePatternFormatter;->-getandroid_icu_impl_SimplePatternFormatter$StateSwitchesValues()[I

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v5}, Landroid/icu/impl/SimplePatternFormatter$State;->ordinal()I

    #@9c
    move-result v7

    #@9d
    aget v6, v6, v7

    #@9f
    packed-switch v6, :pswitch_data_1

    #@a2
    .line 114
    new-instance v6, Ljava/lang/IllegalStateException;

    #@a4
    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    #@a7
    throw v6

    #@a8
    .line 107
    :pswitch_3
    const-string/jumbo v6, "\'"

    #@ab
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 116
    :goto_3
    :pswitch_4
    new-instance v6, Landroid/icu/impl/SimplePatternFormatter;

    #@b0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    invoke-direct {v6, v7, v4}, Landroid/icu/impl/SimplePatternFormatter;-><init>(Ljava/lang/String;Landroid/icu/impl/SimplePatternFormatter$PlaceholdersBuilder;)V

    #@b7
    return-object v6

    #@b8
    .line 110
    :pswitch_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bb
    .line 111
    invoke-virtual {v2, v3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->appendTo(Ljava/lang/StringBuilder;)V

    #@be
    goto :goto_3

    #@bf
    .line 64
    nop

    #@c0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@ca
    .line 103
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private formatReturningOffsetLength(Ljava/lang/StringBuilder;[ILandroid/icu/impl/SimplePatternFormatter$PlaceholderValues;)I
    .locals 7
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 243
    if-nez p2, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    .line 244
    .local v1, "offsetLen":I
    :goto_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@8
    .line 245
    const/4 v3, -0x1

    #@9
    aput v3, p2, v0

    #@b
    .line 244
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_1

    #@e
    .line 243
    .end local v0    # "i":I
    .end local v1    # "offsetLen":I
    :cond_0
    array-length v1, p2

    #@f
    .restart local v1    # "offsetLen":I
    goto :goto_0

    #@10
    .line 247
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@12
    array-length v3, v3

    #@13
    if-nez v3, :cond_2

    #@15
    .line 248
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 249
    return v1

    #@1b
    .line 252
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@1d
    .line 254
    iget-object v4, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@1f
    aget v4, v4, v5

    #@21
    .line 251
    invoke-virtual {p1, v3, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@24
    .line 256
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@26
    aget v3, v3, v6

    #@28
    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@2b
    move-result v4

    #@2c
    .line 255
    invoke-static {v3, v4, p2, v1}, Landroid/icu/impl/SimplePatternFormatter;->setPlaceholderOffset(II[II)V

    #@2f
    .line 260
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@31
    aget v3, v3, v6

    #@33
    invoke-virtual {p3, v3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->get(I)Ljava/lang/CharSequence;

    #@36
    move-result-object v2

    #@37
    .line 261
    .local v2, "placeholderValue":Ljava/lang/CharSequence;
    if-eq v2, p1, :cond_3

    #@39
    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3c
    .line 264
    :cond_3
    const/4 v0, 0x2

    #@3d
    :goto_2
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@3f
    array-length v3, v3

    #@40
    if-ge v0, v3, :cond_5

    #@42
    .line 266
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@44
    .line 267
    iget-object v4, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@46
    add-int/lit8 v5, v0, -0x2

    #@48
    aget v4, v4, v5

    #@4a
    .line 268
    iget-object v5, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@4c
    aget v5, v5, v0

    #@4e
    .line 265
    invoke-virtual {p1, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@51
    .line 270
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@53
    add-int/lit8 v4, v0, 0x1

    #@55
    aget v3, v3, v4

    #@57
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5a
    move-result v4

    #@5b
    .line 269
    invoke-static {v3, v4, p2, v1}, Landroid/icu/impl/SimplePatternFormatter;->setPlaceholderOffset(II[II)V

    #@5e
    .line 274
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@60
    add-int/lit8 v4, v0, 0x1

    #@62
    aget v3, v3, v4

    #@64
    invoke-virtual {p3, v3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->get(I)Ljava/lang/CharSequence;

    #@67
    move-result-object v2

    #@68
    .line 275
    if-eq v2, p1, :cond_4

    #@6a
    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6d
    .line 264
    :cond_4
    add-int/lit8 v0, v0, 0x2

    #@6f
    goto :goto_2

    #@70
    .line 280
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@72
    .line 281
    iget-object v4, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@74
    iget-object v5, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@76
    array-length v5, v5

    #@77
    add-int/lit8 v5, v5, -0x2

    #@79
    aget v4, v4, v5

    #@7b
    .line 282
    iget-object v5, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@7d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@80
    move-result v5

    #@81
    .line 279
    invoke-virtual {p1, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@84
    .line 283
    return v1
.end method

.method private getUniquePlaceholderAtStart()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 293
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@3
    array-length v0, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 294
    iget-boolean v0, p0, Landroid/icu/impl/SimplePatternFormatter;->firstPlaceholderReused:Z

    #@8
    .line 293
    if-nez v0, :cond_0

    #@a
    .line 294
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@c
    aget v0, v0, v1

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 295
    :cond_0
    const/4 v0, -0x1

    #@11
    return v0

    #@12
    .line 297
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderIdsOrderedByOffset:[I

    #@14
    const/4 v1, 0x1

    #@15
    aget v0, v0, v1

    #@17
    return v0
.end method

.method private static setPlaceholderOffset(II[II)V
    .locals 0
    .param p0, "placeholderId"    # I
    .param p1, "offset"    # I
    .param p2, "offsets"    # [I
    .param p3, "offsetLen"    # I

    #@0
    .prologue
    .line 302
    if-ge p0, p3, :cond_0

    #@2
    .line 303
    aput p1, p2, p0

    #@4
    .line 301
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public varargs formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 150
    array-length v1, p3

    #@1
    iget v2, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderCount:I

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Too few values."

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 153
    :cond_0
    new-instance v0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;

    #@10
    invoke-direct {v0, p3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;-><init>([Ljava/lang/CharSequence;)V

    #@13
    .line 154
    .local v0, "placeholderValues":Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;
    const/4 v1, -0x1

    #@14
    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->isAppendToInAnyIndexExcept(Ljava/lang/CharSequence;I)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v2, "Parameter values cannot be the same as appendTo."

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 157
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/SimplePatternFormatter;->formatReturningOffsetLength(Ljava/lang/StringBuilder;[ILandroid/icu/impl/SimplePatternFormatter$PlaceholderValues;)I

    #@26
    .line 158
    return-object p1
.end method

.method public varargs formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "offsets"    # [I
    .param p3, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 177
    array-length v3, p3

    #@2
    iget v4, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderCount:I

    #@4
    if-ge v3, v4, :cond_0

    #@6
    .line 178
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "Too few values."

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 180
    :cond_0
    new-instance v2, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;

    #@11
    invoke-direct {v2, p3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;-><init>([Ljava/lang/CharSequence;)V

    #@14
    .line 181
    .local v2, "placeholderValues":Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;
    invoke-direct {p0}, Landroid/icu/impl/SimplePatternFormatter;->getUniquePlaceholderAtStart()I

    #@17
    move-result v1

    #@18
    .line 185
    .local v1, "placeholderAtStart":I
    if-ltz v1, :cond_3

    #@1a
    aget-object v3, p3, v1

    #@1c
    if-ne v3, p1, :cond_3

    #@1e
    .line 188
    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->isAppendToInAnyIndexExcept(Ljava/lang/CharSequence;I)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 189
    invoke-virtual {v2, p1}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->snapshotAppendTo(Ljava/lang/CharSequence;)V

    #@27
    .line 190
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@2a
    .line 191
    invoke-direct {p0, p1, p2, v2}, Landroid/icu/impl/SimplePatternFormatter;->formatReturningOffsetLength(Ljava/lang/StringBuilder;[ILandroid/icu/impl/SimplePatternFormatter$PlaceholderValues;)I

    #@2d
    .line 192
    return-object p1

    #@2e
    .line 196
    :cond_1
    invoke-direct {p0, p1, p2, v2}, Landroid/icu/impl/SimplePatternFormatter;->formatReturningOffsetLength(Ljava/lang/StringBuilder;[ILandroid/icu/impl/SimplePatternFormatter$PlaceholderValues;)I

    #@31
    move-result v0

    #@32
    .line 200
    .local v0, "offsetLength":I
    if-le v0, v1, :cond_2

    #@34
    .line 201
    aput v5, p2, v1

    #@36
    .line 203
    :cond_2
    return-object p1

    #@37
    .line 205
    .end local v0    # "offsetLength":I
    :cond_3
    const/4 v3, -0x1

    #@38
    invoke-virtual {v2, p1, v3}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->isAppendToInAnyIndexExcept(Ljava/lang/CharSequence;I)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_4

    #@3e
    .line 206
    invoke-virtual {v2, p1}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->snapshotAppendTo(Ljava/lang/CharSequence;)V

    #@41
    .line 208
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    #@44
    .line 209
    invoke-direct {p0, p1, p2, v2}, Landroid/icu/impl/SimplePatternFormatter;->formatReturningOffsetLength(Ljava/lang/StringBuilder;[ILandroid/icu/impl/SimplePatternFormatter$PlaceholderValues;)I

    #@47
    .line 210
    return-object p1
.end method

.method public getPatternWithNoPlaceholders()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->patternWithoutPlaceholders:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter;->placeholderCount:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [Ljava/lang/String;

    #@6
    .line 220
    .local v1, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 221
    const-string/jumbo v2, "{%d}"

    #@d
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    aput-object v2, v1, v0

    #@1d
    .line 220
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const/4 v3, 0x0

    #@26
    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2
.end method
