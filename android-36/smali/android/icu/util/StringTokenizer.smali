.class public final Landroid/icu/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

.field private static final greylist-max-o EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

.field private static final greylist-max-o TOKEN_SIZE_:I = 0x64


# instance fields
.field private greylist-max-o delims:[Z

.field private greylist-max-o m_coalesceDelimiters_:Z

.field private greylist-max-o m_delimiters_:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o m_length_:I

.field private greylist-max-o m_nextOffset_:I

.field private greylist-max-o m_returnDelimiters_:Z

.field private greylist-max-o m_source_:Ljava/lang/String;

.field private greylist-max-o m_tokenLimit_:[I

.field private greylist-max-o m_tokenOffset_:I

.field private greylist-max-o m_tokenSize_:I

.field private greylist-max-o m_tokenStart_:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 576
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    sput-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    .line 585
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    sput-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    return-void

    :array_12
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 281
    sget-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    .line 282
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    .line 183
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;Z)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;
    .param p3, "returndelims"    # Z

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    .line 120
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Landroid/icu/text/UnicodeSet;
    .param p3, "returndelims"    # Z
    .param p4, "coalescedelims"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    .line 149
    if-nez p2, :cond_12

    .line 150
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    goto :goto_14

    .line 153
    :cond_12
    iput-object p2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 155
    :goto_14
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    .line 156
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 158
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 159
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez v1, :cond_24

    .line 161
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_2f

    .line 164
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 165
    if-nez p3, :cond_2f

    .line 166
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 169
    :cond_2f
    :goto_2f
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 267
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returndelims"    # Z

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 202
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returndelims"    # Z
    .param p4, "coalescedelims"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 231
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 232
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 233
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 234
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    .line 236
    :cond_1e
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    .line 237
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    .line 239
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 241
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 242
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez v1, :cond_36

    .line 244
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_41

    .line 247
    :cond_36
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 248
    if-nez p3, :cond_41

    .line 249
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 252
    :cond_41
    :goto_41
    return-void
.end method

.method private greylist-max-o getNextDelimiter(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 598
    if-ltz p1, :cond_3b

    .line 599
    move v0, p1

    .line 600
    .local v0, "result":I
    const/4 v1, 0x0

    .line 601
    .local v1, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v2, :cond_1e

    .line 603
    :cond_8
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 604
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 605
    goto :goto_36

    .line 607
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 608
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt v0, v2, :cond_8

    goto :goto_36

    .line 611
    :cond_1e
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 612
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_30

    .line 613
    goto :goto_36

    .line 615
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 616
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt v0, v2, :cond_1e

    .line 618
    :goto_36
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v0, v2, :cond_3b

    .line 619
    return v0

    .line 622
    .end local v0    # "result":I
    .end local v1    # "c":I
    :cond_3b
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o getNextNonDelimiter(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 634
    if-ltz p1, :cond_3b

    .line 635
    move v0, p1

    .line 636
    .local v0, "result":I
    const/4 v1, 0x0

    .line 637
    .local v1, "c":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v2, :cond_1e

    .line 639
    :cond_8
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 640
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 641
    goto :goto_36

    .line 643
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 644
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt v0, v2, :cond_8

    goto :goto_36

    .line 647
    :cond_1e
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 648
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_36

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_30

    .line 649
    goto :goto_36

    .line 651
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 652
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-lt v0, v2, :cond_1e

    .line 654
    :cond_36
    :goto_36
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v0, v2, :cond_3b

    .line 655
    return v0

    .line 658
    .end local v0    # "result":I
    .end local v1    # "c":I
    :cond_3b
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method greylist-max-o checkDelimiters()V
    .registers 7

    .line 662
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3c

    .line 665
    :cond_d
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v0

    .line 666
    .local v0, "maxChar":I
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_38

    .line 667
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    .line 668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->charAt(I)I

    move-result v3

    move v4, v3

    .local v4, "ch":I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_37

    .line 669
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aput-boolean v2, v3, v4

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .end local v1    # "i":I
    .end local v4    # "ch":I
    :cond_37
    goto :goto_41

    .line 672
    :cond_38
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    goto :goto_41

    .line 663
    .end local v0    # "maxChar":I
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    .line 675
    :goto_41
    return-void
.end method

.method public greylist-max-o countTokens()I
    .registers 8

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 465
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    if-ltz v1, :cond_11

    .line 466
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    sub-int/2addr v1, v2

    return v1

    .line 468
    :cond_11
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    if-nez v1, :cond_1f

    .line 469
    const/16 v1, 0x64

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    .line 470
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    .line 473
    :cond_1f
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_3e

    .line 474
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    .line 475
    .local v1, "temptokenindex":[I
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    .line 476
    .local v3, "temptokensize":[I
    array-length v4, v1

    .line 477
    .local v4, "originalsize":I
    add-int/lit8 v5, v4, 0x64

    .line 478
    .local v5, "newsize":I
    new-array v6, v5, [I

    iput-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    .line 479
    new-array v6, v5, [I

    iput-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    .line 480
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    invoke-static {v1, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    invoke-static {v3, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    .end local v1    # "temptokenindex":[I
    .end local v3    # "temptokensize":[I
    .end local v4    # "originalsize":I
    .end local v5    # "newsize":I
    :cond_3e
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    aput v3, v1, v0

    .line 486
    iget-boolean v1, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v1, :cond_9a

    .line 487
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v1, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 488
    .local v1, "c":I
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    const/4 v4, 0x1

    if-nez v3, :cond_5c

    .line 489
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    goto :goto_6a

    .line 490
    :cond_5c
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_69

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_69

    move v3, v4

    goto :goto_6a

    :cond_69
    move v3, v2

    :goto_6a
    nop

    .line 491
    .local v3, "contains":Z
    if-eqz v3, :cond_89

    .line 492
    iget-boolean v5, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v5, :cond_7c

    .line 493
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v5}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v5

    aput v5, v4, v0

    goto :goto_93

    .line 496
    :cond_7c
    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    add-int/2addr v5, v4

    .line 497
    .local v5, "p":I
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v5, v4, :cond_84

    .line 498
    const/4 v5, -0x1

    .line 500
    :cond_84
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aput v5, v4, v0

    .line 502
    .end local v5    # "p":I
    goto :goto_93

    .line 505
    :cond_89
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v5}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v5

    aput v5, v4, v0

    .line 507
    :goto_93
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v4, v4, v0

    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 508
    .end local v1    # "c":I
    .end local v3    # "contains":Z
    goto :goto_ae

    .line 510
    :cond_9a
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v3

    aput v3, v1, v0

    .line 511
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v1

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 513
    :goto_ae
    add-int/lit8 v0, v0, 0x1

    .line 514
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-gez v1, :cond_1f

    .line 515
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 516
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 517
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 519
    :cond_be
    return v0
.end method

.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 435
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasMoreTokens()Z
    .registers 2

    .line 297
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 450
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o nextToken()Ljava/lang/String;
    .registers 6

    .line 308
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    const/4 v1, 0x1

    const-string v2, "No more tokens in String"

    if-gez v0, :cond_90

    .line 309
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-ltz v0, :cond_8a

    .line 313
    iget-boolean v0, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v0, :cond_68

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "tokenlimit":I
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v2, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 316
    .local v2, "c":I
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v3, :cond_23

    .line 317
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    goto :goto_30

    .line 318
    :cond_23
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    nop

    .line 319
    .local v1, "contains":Z
    if-eqz v1, :cond_4c

    .line 320
    iget-boolean v3, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v3, :cond_3e

    .line 321
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    goto :goto_52

    .line 323
    :cond_3e
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int v0, v3, v4

    .line 324
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v0, v3, :cond_52

    .line 325
    const/4 v0, -0x1

    goto :goto_52

    .line 330
    :cond_4c
    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v0

    .line 333
    :cond_52
    :goto_52
    if-gez v0, :cond_5d

    .line 334
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto :goto_65

    .line 337
    .end local v3    # "result":Ljava/lang/String;
    :cond_5d
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3    # "result":Ljava/lang/String;
    :goto_65
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 340
    return-object v3

    .line 343
    .end local v0    # "tokenlimit":I
    .end local v1    # "contains":Z
    .end local v2    # "c":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_68
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v0

    .line 345
    .restart local v0    # "tokenlimit":I
    if-gez v0, :cond_7b

    .line 346
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_89

    .line 350
    .end local v1    # "result":Ljava/lang/String;
    :cond_7b
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1    # "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v2

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 354
    :goto_89
    return-object v1

    .line 310
    .end local v0    # "tokenlimit":I
    .end local v1    # "result":Ljava/lang/String;
    :cond_8a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_90
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-ge v0, v3, :cond_d4

    .line 362
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v0, v0, v2

    if-ltz v0, :cond_b1

    .line 363
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_bd

    .line 367
    .end local v0    # "result":Ljava/lang/String;
    :cond_b1
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v3, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0    # "result":Ljava/lang/String;
    :goto_bd
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 370
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 371
    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-ge v1, v2, :cond_d3

    .line 372
    iget-object v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 374
    :cond_d3
    return-object v0

    .line 359
    .end local v0    # "result":Ljava/lang/String;
    :cond_d4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;
    .registers 3
    .param p1, "delim"    # Landroid/icu/text/UnicodeSet;

    .line 415
    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 416
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    .line 418
    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    .line 419
    iget-boolean v0, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-nez v0, :cond_16

    .line 420
    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    .line 422
    :cond_16
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o nextToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "delim"    # Ljava/lang/String;

    .line 392
    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 393
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 394
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    .line 395
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 397
    :cond_18
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/util/StringTokenizer;->nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
