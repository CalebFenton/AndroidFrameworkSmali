.class Landroid/icu/text/PluralRules$SimpleTokenizer;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleTokenizer"
.end annotation


# static fields
.field static final BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

.field static final BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    const/16 v6, 0x2c

    #@4
    const/16 v5, 0x25

    #@6
    const/16 v4, 0x21

    #@8
    const/4 v3, 0x6

    #@9
    .line 1114
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@b
    new-array v1, v3, [I

    #@d
    fill-array-data v1, :array_0

    #@10
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@13
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    #@19
    .line 1115
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1b
    const/16 v1, 0xa

    #@1d
    new-array v1, v1, [I

    #@1f
    const/4 v2, 0x0

    #@20
    aput v4, v1, v2

    #@22
    const/4 v2, 0x1

    #@23
    aput v4, v1, v2

    #@25
    const/4 v2, 0x2

    #@26
    aput v5, v1, v2

    #@28
    const/4 v2, 0x3

    #@29
    aput v5, v1, v2

    #@2b
    const/4 v2, 0x4

    #@2c
    aput v6, v1, v2

    #@2e
    const/4 v2, 0x5

    #@2f
    aput v6, v1, v2

    #@31
    aput v7, v1, v3

    #@33
    const/4 v2, 0x7

    #@34
    aput v7, v1, v2

    #@36
    const/16 v2, 0x3d

    #@38
    const/16 v3, 0x8

    #@3a
    aput v2, v1, v3

    #@3c
    const/16 v2, 0x3d

    #@3e
    const/16 v3, 0x9

    #@40
    aput v2, v1, v3

    #@42
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@45
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@48
    move-result-object v0

    #@49
    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    #@4b
    .line 1113
    return-void

    #@4c
    .line 1114
    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1117
    const/4 v2, -0x1

    #@1
    .line 1118
    .local v2, "last":I
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 1119
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    if-ge v1, v4, :cond_4

    #@d
    .line 1120
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v0

    #@11
    .line 1121
    .local v0, "ch":C
    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    #@13
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 1122
    if-ltz v2, :cond_0

    #@1b
    .line 1123
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 1124
    const/4 v2, -0x1

    #@23
    .line 1119
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 1126
    :cond_1
    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    #@28
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 1127
    if-ltz v2, :cond_2

    #@30
    .line 1128
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 1130
    :cond_2
    add-int/lit8 v4, v1, 0x1

    #@39
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    .line 1131
    const/4 v2, -0x1

    #@41
    goto :goto_1

    #@42
    .line 1132
    :cond_3
    if-gez v2, :cond_0

    #@44
    .line 1133
    move v2, v1

    #@45
    goto :goto_1

    #@46
    .line 1136
    .end local v0    # "ch":C
    :cond_4
    if-ltz v2, :cond_5

    #@48
    .line 1137
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    .line 1139
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@52
    move-result v4

    #@53
    new-array v4, v4, [Ljava/lang/String;

    #@55
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    check-cast v4, [Ljava/lang/String;

    #@5b
    return-object v4
.end method
