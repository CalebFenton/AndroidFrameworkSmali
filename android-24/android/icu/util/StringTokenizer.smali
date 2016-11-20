.class public final Landroid/icu/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

.field private static final EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

.field private static final TOKEN_SIZE_:I = 0x64


# instance fields
.field private delims:[Z

.field private m_coalesceDelimiters_:Z

.field private m_delimiters_:Landroid/icu/text/UnicodeSet;

.field private m_length_:I

.field private m_nextOffset_:I

.field private m_returnDelimiters_:Z

.field private m_source_:Ljava/lang/String;

.field private m_tokenLimit_:[I

.field private m_tokenOffset_:I

.field private m_tokenSize_:I

.field private m_tokenStart_:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 575
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    const/4 v1, 0x6

    #@3
    new-array v1, v1, [I

    #@5
    fill-array-data v1, :array_0

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    #@b
    .line 574
    sput-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    #@d
    .line 583
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@f
    sput-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@11
    .line 97
    return-void

    #@12
    .line 575
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 279
    sget-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    #@3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@6
    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 180
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@4
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;
    .param p3, "returndelims"    # Z

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@4
    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;
    .param p3, "returndelims"    # Z
    .param p4, "coalescedelims"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 145
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@7
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@d
    .line 147
    if-nez p2, :cond_1

    #@f
    .line 148
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@11
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@13
    .line 153
    :goto_0
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@15
    .line 154
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@17
    .line 155
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@19
    .line 156
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@1b
    .line 157
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 159
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@21
    .line 143
    :cond_0
    :goto_1
    return-void

    #@22
    .line 151
    :cond_1
    iput-object p2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@24
    goto :goto_0

    #@25
    .line 162
    :cond_2
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@27
    .line 163
    if-nez p3, :cond_0

    #@29
    .line 164
    invoke-direct {p0, v2}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@2f
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 264
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@4
    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returndelims"    # Z

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@4
    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returndelims"    # Z
    .param p4, "coalescedelims"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 228
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@7
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@9
    .line 229
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 230
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@13
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@18
    .line 231
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@1d
    .line 232
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    #@20
    .line 234
    :cond_0
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@22
    .line 235
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@24
    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@2a
    .line 237
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@2c
    .line 238
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@2e
    .line 239
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@30
    .line 240
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@32
    if-nez v0, :cond_2

    #@34
    .line 242
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@36
    .line 225
    :cond_1
    :goto_0
    return-void

    #@37
    .line 245
    :cond_2
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@39
    .line 246
    if-nez p3, :cond_1

    #@3b
    .line 247
    invoke-direct {p0, v1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@41
    goto :goto_0
.end method

.method private getNextDelimiter(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 596
    if-ltz p1, :cond_4

    #@2
    .line 597
    move v1, p1

    #@3
    .line 598
    .local v1, "result":I
    const/4 v0, 0x0

    #@4
    .line 599
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@6
    if-nez v2, :cond_3

    #@8
    .line 601
    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@a
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 602
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@10
    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 616
    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@18
    if-ge v1, v2, :cond_4

    #@1a
    .line 617
    return v1

    #@1b
    .line 605
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 606
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@1f
    if-ge v1, v2, :cond_0

    #@21
    goto :goto_0

    #@22
    .line 613
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    .line 614
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@26
    if-ge v1, v2, :cond_0

    #@28
    .line 609
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@2a
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2d
    move-result v0

    #@2e
    .line 610
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@30
    array-length v2, v2

    #@31
    if-ge v0, v2, :cond_2

    #@33
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@35
    aget-boolean v2, v2, v0

    #@37
    if-eqz v2, :cond_2

    #@39
    goto :goto_1

    #@3a
    .line 620
    .end local v0    # "c":I
    .end local v1    # "result":I
    :cond_4
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@3c
    rsub-int/lit8 v2, v2, -0x1

    #@3e
    return v2
.end method

.method private getNextNonDelimiter(I)I
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 632
    if-ltz p1, :cond_5

    #@3
    .line 633
    move v1, p1

    #@4
    .line 634
    .local v1, "result":I
    const/4 v0, 0x0

    #@5
    .line 635
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@7
    if-nez v2, :cond_3

    #@9
    .line 637
    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 638
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@11
    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 652
    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@19
    if-ge v1, v2, :cond_5

    #@1b
    .line 653
    return v1

    #@1c
    .line 641
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 642
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@20
    if-ge v1, v2, :cond_0

    #@22
    goto :goto_0

    #@23
    .line 649
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@25
    .line 650
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@27
    if-ge v1, v2, :cond_0

    #@29
    .line 645
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@2b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2e
    move-result v0

    #@2f
    .line 646
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@31
    array-length v2, v2

    #@32
    if-ge v0, v2, :cond_4

    #@34
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@36
    aget-boolean v2, v2, v0

    #@38
    :goto_2
    if-nez v2, :cond_2

    #@3a
    goto :goto_1

    #@3b
    :cond_4
    move v2, v3

    #@3c
    goto :goto_2

    #@3d
    .line 656
    .end local v0    # "c":I
    .end local v1    # "result":I
    :cond_5
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@3f
    rsub-int/lit8 v2, v2, -0x1

    #@41
    return v2
.end method


# virtual methods
.method checkDelimiters()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 660
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@8
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->size()I

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_2

    #@e
    .line 661
    :cond_0
    new-array v3, v4, [Z

    #@10
    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@12
    .line 659
    :cond_1
    :goto_0
    return-void

    #@13
    .line 663
    :cond_2
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@15
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@17
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@1a
    move-result v4

    #@1b
    add-int/lit8 v4, v4, -0x1

    #@1d
    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@20
    move-result v2

    #@21
    .line 664
    .local v2, "maxChar":I
    const/16 v3, 0x7f

    #@23
    if-ge v2, v3, :cond_3

    #@25
    .line 665
    add-int/lit8 v3, v2, 0x1

    #@27
    new-array v3, v3, [Z

    #@29
    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@2b
    .line 666
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@2e
    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->charAt(I)I

    #@31
    move-result v0

    #@32
    .local v0, "ch":I
    const/4 v3, -0x1

    #@33
    if-eq v3, v0, :cond_1

    #@35
    .line 667
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@37
    const/4 v4, 0x1

    #@38
    aput-boolean v4, v3, v0

    #@3a
    .line 666
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 670
    .end local v0    # "ch":I
    .end local v1    # "i":I
    :cond_3
    iput-object v5, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@3f
    goto :goto_0
.end method

.method public countTokens()I
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x64

    #@2
    const/4 v8, 0x0

    #@3
    .line 461
    const/4 v5, 0x0

    #@4
    .line 462
    .local v5, "result":I
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    #@7
    move-result v9

    #@8
    if-eqz v9, :cond_3

    #@a
    .line 463
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c
    if-ltz v9, :cond_0

    #@e
    .line 464
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@10
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@12
    sub-int/2addr v8, v9

    #@13
    return v8

    #@14
    .line 466
    :cond_0
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@16
    if-nez v9, :cond_1

    #@18
    .line 467
    new-array v9, v10, [I

    #@1a
    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@1c
    .line 468
    new-array v9, v10, [I

    #@1e
    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@20
    .line 471
    :cond_1
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@22
    array-length v9, v9

    #@23
    if-ne v9, v5, :cond_2

    #@25
    .line 472
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@27
    .line 473
    .local v6, "temptokenindex":[I
    iget-object v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@29
    .line 474
    .local v7, "temptokensize":[I
    array-length v3, v6

    #@2a
    .line 475
    .local v3, "originalsize":I
    add-int/lit8 v2, v3, 0x64

    #@2c
    .line 476
    .local v2, "newsize":I
    new-array v9, v2, [I

    #@2e
    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@30
    .line 477
    new-array v9, v2, [I

    #@32
    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@34
    .line 478
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@36
    invoke-static {v6, v8, v9, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@39
    .line 480
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@3b
    invoke-static {v7, v8, v9, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@3e
    .line 483
    .end local v2    # "newsize":I
    .end local v3    # "originalsize":I
    .end local v6    # "temptokenindex":[I
    .end local v7    # "temptokensize":[I
    :cond_2
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@40
    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@42
    aput v10, v9, v5

    #@44
    .line 484
    iget-boolean v9, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@46
    if-eqz v9, :cond_9

    #@48
    .line 485
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@4a
    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@4c
    invoke-static {v9, v10}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@4f
    move-result v0

    #@50
    .line 486
    .local v0, "c":I
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@52
    if-nez v9, :cond_4

    #@54
    .line 487
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@56
    invoke-virtual {v9, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@59
    move-result v1

    #@5a
    .line 489
    .local v1, "contains":Z
    :goto_0
    if-eqz v1, :cond_8

    #@5c
    .line 490
    iget-boolean v9, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@5e
    if-eqz v9, :cond_6

    #@60
    .line 491
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@62
    .line 492
    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@64
    .line 491
    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@67
    move-result v10

    #@68
    aput v10, v9, v5

    #@6a
    .line 505
    :goto_1
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@6c
    aget v9, v9, v5

    #@6e
    iput v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@70
    .line 511
    .end local v0    # "c":I
    .end local v1    # "contains":Z
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@72
    .line 512
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@74
    if-gez v9, :cond_1

    #@76
    .line 513
    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@78
    .line 514
    iput v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@7a
    .line 515
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@7c
    aget v8, v9, v8

    #@7e
    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@80
    .line 517
    :cond_3
    return v5

    #@81
    .line 488
    .restart local v0    # "c":I
    :cond_4
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@83
    array-length v9, v9

    #@84
    if-ge v0, v9, :cond_5

    #@86
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@88
    aget-boolean v1, v9, v0

    #@8a
    goto :goto_0

    #@8b
    :cond_5
    move v1, v8

    #@8c
    goto :goto_0

    #@8d
    .line 494
    .restart local v1    # "contains":Z
    :cond_6
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@8f
    add-int/lit8 v4, v9, 0x1

    #@91
    .line 495
    .local v4, "p":I
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@93
    if-ne v4, v9, :cond_7

    #@95
    .line 496
    const/4 v4, -0x1

    #@96
    .line 498
    :cond_7
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@98
    aput v4, v9, v5

    #@9a
    goto :goto_1

    #@9b
    .line 503
    .end local v4    # "p":I
    :cond_8
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@9d
    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@9f
    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@a2
    move-result v10

    #@a3
    aput v10, v9, v5

    #@a5
    goto :goto_1

    #@a6
    .line 508
    .end local v0    # "c":I
    .end local v1    # "contains":Z
    :cond_9
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@a8
    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@aa
    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@ad
    move-result v10

    #@ae
    aput v10, v9, v5

    #@b0
    .line 509
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@b2
    aget v9, v9, v5

    #@b4
    invoke-direct {p0, v9}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@b7
    move-result v9

    #@b8
    iput v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@ba
    goto :goto_2
.end method

.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hasMoreTokens()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 295
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 448
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 306
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@3
    if-gez v4, :cond_9

    #@5
    .line 307
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@7
    if-gez v4, :cond_0

    #@9
    .line 308
    new-instance v4, Ljava/util/NoSuchElementException;

    #@b
    const-string/jumbo v5, "No more tokens in String"

    #@e
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 311
    :cond_0
    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@14
    if-eqz v4, :cond_7

    #@16
    .line 312
    const/4 v3, 0x0

    #@17
    .line 313
    .local v3, "tokenlimit":I
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@19
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@1b
    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@1e
    move-result v0

    #@1f
    .line 314
    .local v0, "c":I
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@21
    if-nez v4, :cond_3

    #@23
    .line 315
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@25
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@28
    move-result v1

    #@29
    .line 317
    .local v1, "contains":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    #@2b
    .line 318
    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@2d
    if-eqz v4, :cond_4

    #@2f
    .line 319
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@31
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@34
    move-result v3

    #@35
    .line 331
    :cond_2
    :goto_1
    if-gez v3, :cond_6

    #@37
    .line 332
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@39
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 337
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@41
    .line 338
    return-object v2

    #@42
    .line 316
    .end local v1    # "contains":Z
    .end local v2    # "result":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@44
    array-length v4, v4

    #@45
    if-ge v0, v4, :cond_1

    #@47
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@49
    aget-boolean v1, v4, v0

    #@4b
    goto :goto_0

    #@4c
    .line 321
    .restart local v1    # "contains":Z
    :cond_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@4e
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@51
    move-result v5

    #@52
    add-int v3, v4, v5

    #@54
    .line 322
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@56
    if-ne v3, v4, :cond_2

    #@58
    .line 323
    const/4 v3, -0x1

    #@59
    goto :goto_1

    #@5a
    .line 328
    :cond_5
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@5c
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@5f
    move-result v3

    #@60
    goto :goto_1

    #@61
    .line 335
    :cond_6
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@63
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@65
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    #@6a
    .line 341
    .end local v0    # "c":I
    .end local v1    # "contains":Z
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "tokenlimit":I
    :cond_7
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@6c
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@6f
    move-result v3

    #@70
    .line 343
    .restart local v3    # "tokenlimit":I
    if-gez v3, :cond_8

    #@72
    .line 344
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@74
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@76
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    .line 345
    .restart local v2    # "result":Ljava/lang/String;
    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@7c
    .line 352
    :goto_3
    return-object v2

    #@7d
    .line 348
    .end local v2    # "result":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@7f
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@81
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    .line 349
    .restart local v2    # "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@88
    move-result v4

    #@89
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@8b
    goto :goto_3

    #@8c
    .line 356
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "tokenlimit":I
    :cond_9
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@8e
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@90
    if-lt v4, v5, :cond_a

    #@92
    .line 357
    new-instance v4, Ljava/util/NoSuchElementException;

    #@94
    const-string/jumbo v5, "No more tokens in String"

    #@97
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v4

    #@9b
    .line 360
    :cond_a
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@9d
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@9f
    aget v4, v4, v5

    #@a1
    if-ltz v4, :cond_c

    #@a3
    .line 361
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@a5
    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@a7
    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@a9
    aget v5, v5, v6

    #@ab
    .line 362
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@ad
    iget v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@af
    aget v6, v6, v7

    #@b1
    .line 361
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v2

    #@b5
    .line 367
    .restart local v2    # "result":Ljava/lang/String;
    :goto_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@b7
    add-int/lit8 v4, v4, 0x1

    #@b9
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@bb
    .line 368
    const/4 v4, -0x1

    #@bc
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@be
    .line 369
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c0
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@c2
    if-ge v4, v5, :cond_b

    #@c4
    .line 370
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@c6
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c8
    aget v4, v4, v5

    #@ca
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@cc
    .line 372
    :cond_b
    return-object v2

    #@cd
    .line 365
    .end local v2    # "result":Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@cf
    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@d1
    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@d3
    aget v5, v5, v6

    #@d5
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d8
    move-result-object v2

    #@d9
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_4
.end method

.method public nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;
    .locals 1
    .param p1, "delim"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 413
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@3
    .line 414
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    #@6
    .line 415
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@8
    .line 416
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@a
    .line 417
    iget-boolean v0, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 418
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@10
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@16
    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@2
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@4
    .line 391
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 392
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@e
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@11
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@13
    .line 393
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@18
    .line 395
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-virtual {p0, v0}, Landroid/icu/util/StringTokenizer;->nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
