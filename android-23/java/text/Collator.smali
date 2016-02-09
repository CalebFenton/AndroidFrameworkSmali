.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x1

.field public static final FULL_DECOMPOSITION:I = 0x2

.field public static final IDENTICAL:I = 0x3

.field public static final NO_DECOMPOSITION:I = 0x0

.field public static final PRIMARY:I = 0x0

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# instance fields
.field icuColl:Llibcore/icu/RuleBasedCollatorICU;


# direct methods
.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 158
    new-instance v0, Llibcore/icu/RuleBasedCollatorICU;

    #@5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    #@c
    iput-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@e
    .line 157
    return-void
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .locals 0
    .param p1, "icuColl"    # Llibcore/icu/RuleBasedCollatorICU;

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@5
    .line 150
    return-void
.end method

.method private decompositionMode_ICU_Java(I)I
    .locals 1
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 346
    move v0, p1

    #@1
    .line 347
    .local v0, "javaMode":I
    packed-switch p1, :pswitch_data_0

    #@4
    .line 355
    :goto_0
    return v0

    #@5
    .line 349
    :pswitch_0
    const/4 v0, 0x0

    #@6
    .line 350
    goto :goto_0

    #@7
    .line 352
    :pswitch_1
    const/4 v0, 0x1

    #@8
    .line 353
    goto :goto_0

    #@9
    .line 347
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private decompositionMode_Java_ICU(I)I
    .locals 3
    .param p1, "mode"    # I

    #@0
    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    #@3
    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Bad mode: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 338
    :pswitch_0
    const/16 v0, 0x11

    #@1f
    return v0

    #@20
    .line 340
    :pswitch_1
    const/16 v0, 0x10

    #@22
    return v0

    #@23
    .line 336
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 251
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance()Ljava/text/Collator;
    .locals 1

    #@0
    .prologue
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 288
    if-nez p0, :cond_0

    #@2
    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "locale == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 291
    :cond_0
    new-instance v0, Ljava/text/RuleBasedCollator;

    #@d
    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    #@f
    invoke-direct {v1, p0}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/util/Locale;)V

    #@12
    invoke-direct {v0, v1}, Ljava/text/RuleBasedCollator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    #@15
    return-object v0
.end method

.method private strength_ICU_Java(I)I
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 373
    move v0, p1

    #@1
    .line 374
    .local v0, "javaValue":I
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 388
    :goto_0
    return v0

    #@5
    .line 376
    :sswitch_0
    const/4 v0, 0x0

    #@6
    .line 377
    goto :goto_0

    #@7
    .line 379
    :sswitch_1
    const/4 v0, 0x1

    #@8
    .line 380
    goto :goto_0

    #@9
    .line 382
    :sswitch_2
    const/4 v0, 0x2

    #@a
    .line 383
    goto :goto_0

    #@b
    .line 385
    :sswitch_3
    const/4 v0, 0x3

    #@c
    .line 386
    goto :goto_0

    #@d
    .line 374
    nop

    #@e
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private strength_Java_ICU(I)I
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    #@3
    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Bad strength: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 361
    :pswitch_0
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 363
    :pswitch_1
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 365
    :pswitch_2
    const/4 v0, 0x2

    #@22
    return v0

    #@23
    .line 367
    :pswitch_3
    const/16 v0, 0xf

    #@25
    return v0

    #@26
    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 171
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/Collator;

    #@6
    .line 172
    .local v0, "clone":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@8
    invoke-virtual {v2}, Llibcore/icu/RuleBasedCollatorICU;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Llibcore/icu/RuleBasedCollatorICU;

    #@e
    iput-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 173
    return-object v0

    #@11
    .line 174
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_0
    move-exception v1

    #@12
    .line 175
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@17
    throw v2
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 194
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "object1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "object2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 223
    instance-of v2, p1, Ljava/text/Collator;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 224
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 226
    check-cast v0, Ljava/text/Collator;

    #@9
    .line 227
    .local v0, "collator":Ljava/text/Collator;
    iget-object v2, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@b
    if-nez v2, :cond_2

    #@d
    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@f
    if-nez v2, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    :cond_1
    :goto_0
    return v1

    #@13
    :cond_2
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@15
    iget-object v2, v0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@17
    invoke-virtual {v1, v2}, Llibcore/icu/RuleBasedCollatorICU;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "string1"    # Ljava/lang/String;
    .param p2, "string2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getDecomposition()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getStrength()I
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getStrength()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Ljava/text/Collator;->strength_ICU_Java(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public abstract hashCode()I
.end method

.method public setDecomposition(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setDecomposition(I)V

    #@9
    .line 318
    return-void
.end method

.method public setStrength(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    #@2
    invoke-direct {p0, p1}, Ljava/text/Collator;->strength_Java_ICU(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Llibcore/icu/RuleBasedCollatorICU;->setStrength(I)V

    #@9
    .line 331
    return-void
.end method
