.class Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static synthetic -android_icu_text_DisplayContext$TypeSwitchesValues:[I


# instance fields
.field private cache:Landroid/icu/text/LocaleDisplayNames;

.field private capitalization:Landroid/icu/text/DisplayContext;

.field private dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private locale:Landroid/icu/util/ULocale;

.field private nameLength:Landroid/icu/text/DisplayContext;


# direct methods
.method private static synthetic -getandroid_icu_text_DisplayContext$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/DisplayContext$Type;->values()[Landroid/icu/text/DisplayContext$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

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
    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-android_icu_text_DisplayContext$TypeSwitchesValues:[I

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

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dialectHandling"    # Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2
    if-ne p2, v0, :cond_1

    #@4
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@6
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 656
    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@c
    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    #@e
    if-ne v0, v1, :cond_1

    #@10
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    #@12
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 655
    :goto_0
    if-nez v0, :cond_0

    #@18
    .line 657
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    #@1a
    .line 658
    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@1c
    .line 659
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@1e
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    #@20
    .line 660
    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@22
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    #@24
    .line 661
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl;

    #@26
    invoke-direct {v0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    #@29
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    #@2b
    .line 663
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    #@2d
    return-object v0

    #@2e
    .line 655
    :cond_1
    const/4 v0, 0x0

    #@2f
    goto :goto_0
.end method

.method public varargs get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 9
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "contexts"    # [Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 666
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@3
    .line 667
    .local v2, "dialectHandlingIn":Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@5
    .line 668
    .local v0, "capitalizationIn":Landroid/icu/text/DisplayContext;
    sget-object v3, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    #@7
    .line 669
    .local v3, "nameLengthIn":Landroid/icu/text/DisplayContext;
    array-length v6, p2

    #@8
    move v5, v4

    #@9
    :goto_0
    if-ge v5, v6, :cond_1

    #@b
    aget-object v1, p2, v5

    #@d
    .line 670
    .local v1, "contextItem":Landroid/icu/text/DisplayContext;
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->-getandroid_icu_text_DisplayContext$TypeSwitchesValues()[I

    #@10
    move-result-object v7

    #@11
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@14
    move-result-object v8

    #@15
    invoke-virtual {v8}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    #@18
    move-result v8

    #@19
    aget v7, v7, v8

    #@1b
    packed-switch v7, :pswitch_data_0

    #@1e
    .line 669
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@20
    goto :goto_0

    #@21
    .line 672
    :pswitch_0
    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->value()I

    #@24
    move-result v7

    #@25
    sget-object v8, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    #@27
    invoke-virtual {v8}, Landroid/icu/text/DisplayContext;->value()I

    #@2a
    move-result v8

    #@2b
    if-ne v7, v8, :cond_0

    #@2d
    .line 673
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@2f
    goto :goto_1

    #@30
    :cond_0
    sget-object v2, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@32
    goto :goto_1

    #@33
    .line 676
    :pswitch_1
    move-object v0, v1

    #@34
    .line 677
    goto :goto_1

    #@35
    .line 679
    :pswitch_2
    move-object v3, v1

    #@36
    .line 680
    goto :goto_1

    #@37
    .line 685
    .end local v1    # "contextItem":Landroid/icu/text/DisplayContext;
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@39
    if-ne v2, v5, :cond_2

    #@3b
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    #@3d
    if-ne v0, v5, :cond_2

    #@3f
    .line 686
    iget-object v5, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    #@41
    if-ne v3, v5, :cond_2

    #@43
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    #@45
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v4

    #@49
    .line 685
    :cond_2
    if-nez v4, :cond_3

    #@4b
    .line 687
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    #@4d
    .line 688
    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    #@4f
    .line 689
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    #@51
    .line 690
    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    #@53
    .line 691
    new-instance v4, Landroid/icu/impl/LocaleDisplayNamesImpl;

    #@55
    invoke-direct {v4, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    #@58
    iput-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    #@5a
    .line 693
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    #@5c
    return-object v4

    #@5d
    .line 670
    nop

    #@5e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
