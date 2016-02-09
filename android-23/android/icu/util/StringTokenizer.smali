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
    .line 593
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
    .line 592
    sput-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    #@d
    .line 601
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    #@f
    sput-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@11
    .line 103
    return-void

    #@12
    .line 593
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
    .line 290
    sget-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    #@3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@6
    .line 288
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
    .line 188
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@4
    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;
    .param p3, "returndelims"    # Z

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    #@4
    .line 122
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
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 152
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@7
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@d
    .line 154
    if-nez p2, :cond_1

    #@f
    .line 155
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@11
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@13
    .line 160
    :goto_0
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@15
    .line 161
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@17
    .line 162
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@19
    .line 163
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@1b
    .line 164
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 166
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@21
    .line 150
    :cond_0
    :goto_1
    return-void

    #@22
    .line 158
    :cond_1
    iput-object p2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@24
    goto :goto_0

    #@25
    .line 169
    :cond_2
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@27
    .line 170
    if-nez p3, :cond_0

    #@29
    .line 171
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
    .line 274
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@4
    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returndelims"    # Z

    #@0
    .prologue
    .line 208
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    #@4
    .line 206
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
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 237
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@7
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@9
    .line 238
    if-eqz p2, :cond_0

    #@b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 239
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@13
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@18
    .line 240
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@1d
    .line 241
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    #@20
    .line 243
    :cond_0
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@22
    .line 244
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@24
    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@2a
    .line 246
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@2c
    .line 247
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@2e
    .line 248
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@30
    .line 249
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@32
    if-nez v0, :cond_2

    #@34
    .line 251
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@36
    .line 234
    :cond_1
    :goto_0
    return-void

    #@37
    .line 254
    :cond_2
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@39
    .line 255
    if-nez p3, :cond_1

    #@3b
    .line 256
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
    .line 614
    if-ltz p1, :cond_4

    #@2
    .line 615
    move v1, p1

    #@3
    .line 616
    .local v1, "result":I
    const/4 v0, 0x0

    #@4
    .line 617
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@6
    if-nez v2, :cond_3

    #@8
    .line 619
    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@a
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 620
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@10
    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 634
    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@18
    if-ge v1, v2, :cond_4

    #@1a
    .line 635
    return v1

    #@1b
    .line 623
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    .line 624
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@1f
    if-ge v1, v2, :cond_0

    #@21
    goto :goto_0

    #@22
    .line 631
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    .line 632
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@26
    if-ge v1, v2, :cond_0

    #@28
    .line 627
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@2a
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2d
    move-result v0

    #@2e
    .line 628
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
    .line 638
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
    .line 650
    if-ltz p1, :cond_5

    #@3
    .line 651
    move v1, p1

    #@4
    .line 652
    .local v1, "result":I
    const/4 v0, 0x0

    #@5
    .line 653
    .local v0, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@7
    if-nez v2, :cond_3

    #@9
    .line 655
    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    .line 656
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@11
    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 670
    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@19
    if-ge v1, v2, :cond_5

    #@1b
    .line 671
    return v1

    #@1c
    .line 659
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 660
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@20
    if-ge v1, v2, :cond_0

    #@22
    goto :goto_0

    #@23
    .line 667
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@25
    .line 668
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@27
    if-ge v1, v2, :cond_0

    #@29
    .line 663
    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@2b
    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@2e
    move-result v0

    #@2f
    .line 664
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
    .line 674
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
    .line 678
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
    .line 679
    :cond_0
    new-array v3, v4, [Z

    #@10
    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@12
    .line 677
    :cond_1
    :goto_0
    return-void

    #@13
    .line 681
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
    .line 682
    .local v2, "maxChar":I
    const/16 v3, 0x7f

    #@23
    if-ge v2, v3, :cond_3

    #@25
    .line 683
    add-int/lit8 v3, v2, 0x1

    #@27
    new-array v3, v3, [Z

    #@29
    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@2b
    .line 684
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
    .line 685
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@37
    const/4 v4, 0x1

    #@38
    aput-boolean v4, v3, v0

    #@3a
    .line 684
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 688
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
    const/16 v9, 0x64

    #@2
    const/4 v10, 0x0

    #@3
    .line 479
    const/4 v5, 0x0

    #@4
    .line 480
    .local v5, "result":I
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    #@7
    move-result v8

    #@8
    if-eqz v8, :cond_3

    #@a
    .line 481
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c
    if-ltz v8, :cond_0

    #@e
    .line 482
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@10
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@12
    sub-int/2addr v8, v9

    #@13
    return v8

    #@14
    .line 484
    :cond_0
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@16
    if-nez v8, :cond_1

    #@18
    .line 485
    new-array v8, v9, [I

    #@1a
    iput-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@1c
    .line 486
    new-array v8, v9, [I

    #@1e
    iput-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@20
    .line 489
    :cond_1
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@22
    array-length v8, v8

    #@23
    if-ne v8, v5, :cond_2

    #@25
    .line 490
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@27
    .line 491
    .local v6, "temptokenindex":[I
    iget-object v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@29
    .line 492
    .local v7, "temptokensize":[I
    array-length v3, v6

    #@2a
    .line 493
    .local v3, "originalsize":I
    add-int/lit8 v2, v3, 0x64

    #@2c
    .line 494
    .local v2, "newsize":I
    new-array v8, v2, [I

    #@2e
    iput-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@30
    .line 495
    new-array v8, v2, [I

    #@32
    iput-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@34
    .line 496
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@36
    invoke-static {v6, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@39
    .line 498
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@3b
    invoke-static {v7, v10, v8, v10, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@3e
    .line 501
    .end local v2    # "newsize":I
    .end local v3    # "originalsize":I
    .end local v6    # "temptokenindex":[I
    .end local v7    # "temptokensize":[I
    :cond_2
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@40
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@42
    aput v9, v8, v5

    #@44
    .line 502
    iget-boolean v8, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@46
    if-eqz v8, :cond_9

    #@48
    .line 503
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@4a
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@4c
    invoke-static {v8, v9}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@4f
    move-result v0

    #@50
    .line 504
    .local v0, "c":I
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@52
    if-nez v8, :cond_4

    #@54
    .line 505
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@56
    invoke-virtual {v8, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@59
    move-result v1

    #@5a
    .line 507
    :goto_0
    if-eqz v1, :cond_8

    #@5c
    .line 508
    iget-boolean v8, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@5e
    if-eqz v8, :cond_6

    #@60
    .line 509
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@62
    .line 510
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@64
    .line 509
    invoke-direct {p0, v9}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@67
    move-result v9

    #@68
    aput v9, v8, v5

    #@6a
    .line 523
    :goto_1
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@6c
    aget v8, v8, v5

    #@6e
    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@70
    .line 529
    .end local v0    # "c":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@72
    .line 530
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@74
    if-gez v8, :cond_1

    #@76
    .line 531
    iput v10, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@78
    .line 532
    iput v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@7a
    .line 533
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@7c
    aget v8, v8, v10

    #@7e
    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@80
    .line 535
    :cond_3
    return v5

    #@81
    .line 506
    .restart local v0    # "c":I
    :cond_4
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@83
    array-length v8, v8

    #@84
    if-ge v0, v8, :cond_5

    #@86
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@88
    aget-boolean v1, v8, v0

    #@8a
    .local v1, "contains":Z
    goto :goto_0

    #@8b
    .end local v1    # "contains":Z
    :cond_5
    const/4 v1, 0x0

    #@8c
    .local v1, "contains":Z
    goto :goto_0

    #@8d
    .line 512
    .end local v1    # "contains":Z
    :cond_6
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@8f
    add-int/lit8 v4, v8, 0x1

    #@91
    .line 513
    .local v4, "p":I
    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@93
    if-ne v4, v8, :cond_7

    #@95
    .line 514
    const/4 v4, -0x1

    #@96
    .line 516
    :cond_7
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@98
    aput v4, v8, v5

    #@9a
    goto :goto_1

    #@9b
    .line 521
    .end local v4    # "p":I
    :cond_8
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@9d
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@9f
    invoke-direct {p0, v9}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@a2
    move-result v9

    #@a3
    aput v9, v8, v5

    #@a5
    goto :goto_1

    #@a6
    .line 526
    .end local v0    # "c":I
    :cond_9
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@a8
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@aa
    invoke-direct {p0, v9}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@ad
    move-result v9

    #@ae
    aput v9, v8, v5

    #@b0
    .line 527
    iget-object v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@b2
    aget v8, v8, v5

    #@b4
    invoke-direct {p0, v8}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@b7
    move-result v8

    #@b8
    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@ba
    goto :goto_2
.end method

.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 449
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
    .line 307
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
    .line 465
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
    .line 319
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@2
    if-gez v4, :cond_9

    #@4
    .line 320
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@6
    if-gez v4, :cond_0

    #@8
    .line 321
    new-instance v4, Ljava/util/NoSuchElementException;

    #@a
    const-string/jumbo v5, "No more tokens in String"

    #@d
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 324
    :cond_0
    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@13
    if-eqz v4, :cond_7

    #@15
    .line 325
    const/4 v3, 0x0

    #@16
    .line 326
    .local v3, "tokenlimit":I
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@18
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@1a
    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    .line 327
    .local v0, "c":I
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@20
    if-nez v4, :cond_2

    #@22
    .line 328
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@24
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@27
    move-result v1

    #@28
    .line 330
    :goto_0
    if-eqz v1, :cond_5

    #@2a
    .line 331
    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    #@2c
    if-eqz v4, :cond_4

    #@2e
    .line 332
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@30
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@33
    move-result v3

    #@34
    .line 344
    :cond_1
    :goto_1
    if-gez v3, :cond_6

    #@36
    .line 345
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@38
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 350
    .local v2, "result":Ljava/lang/String;
    :goto_2
    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@40
    .line 351
    return-object v2

    #@41
    .line 329
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@43
    array-length v4, v4

    #@44
    if-ge v0, v4, :cond_3

    #@46
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    #@48
    aget-boolean v1, v4, v0

    #@4a
    .local v1, "contains":Z
    goto :goto_0

    #@4b
    .end local v1    # "contains":Z
    :cond_3
    const/4 v1, 0x0

    #@4c
    .local v1, "contains":Z
    goto :goto_0

    #@4d
    .line 334
    .end local v1    # "contains":Z
    :cond_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@4f
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@52
    move-result v5

    #@53
    add-int v3, v4, v5

    #@55
    .line 335
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    #@57
    if-ne v3, v4, :cond_1

    #@59
    .line 336
    const/4 v3, -0x1

    #@5a
    goto :goto_1

    #@5b
    .line 341
    :cond_5
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@5d
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@60
    move-result v3

    #@61
    goto :goto_1

    #@62
    .line 348
    :cond_6
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@64
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@66
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    #@6b
    .line 354
    .end local v0    # "c":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "tokenlimit":I
    :cond_7
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@6d
    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    #@70
    move-result v3

    #@71
    .line 356
    .restart local v3    # "tokenlimit":I
    if-gez v3, :cond_8

    #@73
    .line 357
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@75
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@77
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    .line 358
    .restart local v2    # "result":Ljava/lang/String;
    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@7d
    .line 365
    :goto_3
    return-object v2

    #@7e
    .line 361
    .end local v2    # "result":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@80
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@82
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 362
    .restart local v2    # "result":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@89
    move-result v4

    #@8a
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@8c
    goto :goto_3

    #@8d
    .line 369
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "tokenlimit":I
    :cond_9
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@8f
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@91
    if-lt v4, v5, :cond_a

    #@93
    .line 370
    new-instance v4, Ljava/util/NoSuchElementException;

    #@95
    const-string/jumbo v5, "No more tokens in String"

    #@98
    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v4

    #@9c
    .line 373
    :cond_a
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@9e
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@a0
    aget v4, v4, v5

    #@a2
    if-ltz v4, :cond_c

    #@a4
    .line 374
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@a6
    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@a8
    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@aa
    aget v5, v5, v6

    #@ac
    .line 375
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    #@ae
    iget v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@b0
    aget v6, v6, v7

    #@b2
    .line 374
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    .line 380
    .restart local v2    # "result":Ljava/lang/String;
    :goto_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@b8
    add-int/lit8 v4, v4, 0x1

    #@ba
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@bc
    .line 381
    const/4 v4, -0x1

    #@bd
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@bf
    .line 382
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c1
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@c3
    if-ge v4, v5, :cond_b

    #@c5
    .line 383
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@c7
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@c9
    aget v4, v4, v5

    #@cb
    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@cd
    .line 385
    :cond_b
    return-object v2

    #@ce
    .line 378
    .end local v2    # "result":Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    #@d0
    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    #@d2
    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@d4
    aget v5, v5, v6

    #@d6
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d9
    move-result-object v2

    #@da
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
    .line 428
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@3
    .line 429
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    #@6
    .line 430
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    #@8
    .line 431
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    #@a
    .line 432
    iget-boolean v0, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    #@c
    if-nez v0, :cond_0

    #@e
    .line 433
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@10
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    #@16
    .line 435
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
    .line 404
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    #@2
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@4
    .line 405
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 406
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@e
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@11
    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@13
    .line 407
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@18
    .line 409
    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-virtual {p0, v0}, Landroid/icu/util/StringTokenizer;->nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method
