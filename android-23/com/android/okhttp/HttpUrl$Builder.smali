.class public final Lcom/android/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field fragment:Ljava/lang/String;

.field host:Ljava/lang/String;

.field password:Ljava/lang/String;

.field pathBuilder:Ljava/lang/StringBuilder;

.field port:I

.field query:Ljava/lang/String;

.field scheme:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 265
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@8
    .line 268
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@b
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@12
    .line 273
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/HttpUrl;)V
    .locals 1
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 265
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@8
    .line 268
    const/4 v0, -0x1

    #@9
    iput v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@b
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@12
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@14
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@17
    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/HttpUrl;Lcom/android/okhttp/HttpUrl$Builder;)V
    .locals 0
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;-><init>(Lcom/android/okhttp/HttpUrl;)V

    #@3
    return-void
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 735
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    #@0
    .prologue
    .line 682
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    #@3
    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-eq v1, v2, :cond_0

    #@e
    return v0

    #@f
    .line 682
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 685
    :cond_1
    return p2
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 739
    return-object p0
.end method

.method private fragment(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 762
    const-string/jumbo v0, ""

    #@3
    invoke-static {p1, p2, p3, v0}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static host(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 715
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;II)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 718
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string/jumbo v3, "["

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    const-string/jumbo v3, "]"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 719
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v3

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    const/4 v4, 0x1

    #@1d
    invoke-static {v2, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    return-object v3

    #@22
    .line 723
    :cond_0
    invoke-static {v2}, Lcom/android/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 726
    .local v0, "idnDecoded":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@29
    move-result v1

    #@2a
    .line 727
    .local v1, "length":I
    const-string/jumbo v3, "\u0000\t\n\r #%/:?@[\\]"

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-static {v0, v4, v1, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@31
    move-result v3

    #@32
    if-eq v3, v1, :cond_1

    #@34
    .line 728
    const/4 v3, 0x0

    #@35
    return-object v3

    #@36
    .line 731
    :cond_1
    return-object v0
.end method

.method private password(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 709
    const-string/jumbo v0, " \"\':;<=>@[]\\^`{}|"

    #@3
    invoke-static {p1, p2, p3, v0}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private pathSegment(Ljava/lang/String;II)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, " \"<>^`{}|"

    #@5
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;IILjava/lang/String;)V

    #@8
    .line 753
    return-void
.end method

.method private pop()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    .line 581
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@4
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v2, v2, -0x1

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@f
    move-result v1

    #@10
    if-eq v1, v3, :cond_0

    #@12
    new-instance v1, Ljava/lang/IllegalStateException;

    #@14
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@17
    throw v1

    #@18
    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1d
    move-result v1

    #@1e
    add-int/lit8 v0, v1, -0x2

    #@20
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@22
    .line 584
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@27
    move-result v1

    #@28
    if-ne v1, v3, :cond_1

    #@2a
    .line 585
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@2c
    add-int/lit8 v2, v0, 0x1

    #@2e
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@33
    move-result v3

    #@34
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@37
    .line 586
    return-void

    #@38
    .line 583
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 580
    :cond_2
    return-void
.end method

.method private port(Ljava/lang/String;II)I
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 744
    :try_start_0
    const-string/jumbo v3, ""

    #@4
    invoke-static {p1, p2, p3, v3}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 745
    .local v2, "portString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 746
    .local v1, "i":I
    if-lez v1, :cond_0

    #@e
    const v3, 0xffff

    #@11
    if-gt v1, v3, :cond_0

    #@13
    return v1

    #@14
    .line 747
    :cond_0
    return v4

    #@15
    .line 748
    .end local v1    # "i":I
    .end local v2    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@16
    .line 749
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v4
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 690
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    #@3
    .line 691
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 690
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 693
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    #@f
    if-ge v0, p2, :cond_0

    #@11
    .line 694
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    const/16 v2, 0x5d

    #@17
    if-ne v1, v2, :cond_1

    #@19
    goto :goto_1

    #@1a
    .line 698
    :sswitch_1
    return v0

    #@1b
    .line 701
    :cond_2
    return p2

    #@1c
    .line 691
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private query(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 758
    const-string/jumbo v0, " \"\'<>"

    #@3
    invoke-static {p1, p2, p3, v0}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/16 v9, 0x7a

    #@2
    const/16 v8, 0x61

    #@4
    const/16 v7, 0x5a

    #@6
    const/16 v6, 0x41

    #@8
    const/4 v5, -0x1

    #@9
    .line 638
    sub-int v3, p2, p1

    #@b
    const/4 v4, 0x2

    #@c
    if-ge v3, v4, :cond_0

    #@e
    return v5

    #@f
    .line 640
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .line 641
    .local v1, "c0":C
    if-lt v1, v8, :cond_1

    #@15
    if-le v1, v9, :cond_3

    #@17
    :cond_1
    if-lt v1, v6, :cond_2

    #@19
    if-le v1, v7, :cond_3

    #@1b
    :cond_2
    return v5

    #@1c
    .line 643
    :cond_3
    add-int/lit8 v2, p1, 0x1

    #@1e
    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_8

    #@20
    .line 644
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 646
    .local v0, "c":C
    if-lt v0, v8, :cond_5

    #@26
    if-gt v0, v9, :cond_5

    #@28
    .line 643
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 647
    :cond_5
    if-lt v0, v6, :cond_6

    #@2d
    if-le v0, v7, :cond_4

    #@2f
    .line 648
    :cond_6
    const/16 v3, 0x2b

    #@31
    if-eq v0, v3, :cond_4

    #@33
    .line 649
    const/16 v3, 0x2d

    #@35
    if-eq v0, v3, :cond_4

    #@37
    .line 650
    const/16 v3, 0x2e

    #@39
    if-eq v0, v3, :cond_4

    #@3b
    .line 652
    const/16 v3, 0x3a

    #@3d
    if-ne v0, v3, :cond_7

    #@3f
    .line 653
    return v2

    #@40
    .line 655
    :cond_7
    return v5

    #@41
    .line 659
    .end local v0    # "c":C
    :cond_8
    return v5
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 598
    move v0, p2

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    #@3
    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v1

    #@7
    sparse-switch v1, :sswitch_data_0

    #@a
    .line 607
    return v0

    #@b
    .line 598
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 610
    :cond_0
    return p3

    #@f
    .line 599
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 618
    add-int/lit8 v0, p3, -0x1

    #@2
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    #@4
    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v1

    #@8
    sparse-switch v1, :sswitch_data_0

    #@b
    .line 627
    add-int/lit8 v1, v0, 0x1

    #@d
    return v1

    #@e
    .line 618
    :sswitch_0
    add-int/lit8 v0, v0, -0x1

    #@10
    goto :goto_0

    #@11
    .line 630
    :cond_0
    return p2

    #@12
    .line 619
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 664
    const/4 v1, 0x0

    #@1
    .line 665
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    #@3
    .line 666
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 667
    .local v0, "c":C
    const/16 v2, 0x5c

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/16 v2, 0x2f

    #@d
    if-ne v0, v2, :cond_1

    #@f
    .line 668
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 669
    add-int/lit8 p1, p1, 0x1

    #@13
    .line 667
    goto :goto_0

    #@14
    .line 674
    .end local v0    # "c":C
    :cond_1
    return v1
.end method

.method private username(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 705
    const-string/jumbo v0, " \"\';<=>@[]^`{}|"

    #@3
    invoke-static {p1, p2, p3, v0}, Lcom/android/okhttp/HttpUrl;->encode(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 318
    if-nez p1, :cond_0

    #@2
    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "encodedPathSegment == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 321
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "encodedName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 342
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "encodedValue == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 343
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@18
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1b
    throw v0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "pathSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 313
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "pathSegment == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 314
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 335
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "value == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 336
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@18
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1b
    throw v0
.end method

.method public build()Lcom/android/okhttp/HttpUrl;
    .locals 13

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/16 v1, 0x3a

    #@3
    const/4 v10, 0x0

    #@4
    .line 373
    new-instance v12, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 374
    .local v12, "url":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@b
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 375
    const-string/jumbo v0, "://"

    #@11
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 377
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@16
    if-eqz v0, :cond_0

    #@18
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@1a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_7

    #@20
    :cond_0
    const/4 v3, 0x0

    #@21
    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@2d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 380
    if-eqz v3, :cond_2

    #@32
    .line 381
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 382
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 384
    :cond_2
    const/16 v0, 0x40

    #@3a
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 387
    :cond_3
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@42
    move-result v0

    #@43
    if-eq v0, v2, :cond_8

    #@45
    .line 389
    const/16 v0, 0x5b

    #@47
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 390
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@4c
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 391
    const/16 v0, 0x5d

    #@51
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 396
    :goto_1
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@56
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@59
    move-result v11

    #@5a
    .line 397
    .local v11, "defaultPort":I
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@5c
    if-eq v0, v2, :cond_9

    #@5e
    iget v5, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@60
    .line 398
    .local v5, "effectivePort":I
    :goto_2
    if-eq v5, v11, :cond_4

    #@62
    .line 399
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 400
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@67
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 403
    :cond_4
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6f
    move-result v0

    #@70
    if-lez v0, :cond_a

    #@72
    .line 404
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 406
    .local v6, "effectivePath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 408
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->query:Ljava/lang/String;

    #@7d
    if-eqz v0, :cond_5

    #@7f
    .line 409
    const/16 v0, 0x3f

    #@81
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    .line 410
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->query:Ljava/lang/String;

    #@86
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 413
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->fragment:Ljava/lang/String;

    #@8b
    if-eqz v0, :cond_6

    #@8d
    .line 414
    const/16 v0, 0x23

    #@8f
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@92
    .line 415
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->fragment:Ljava/lang/String;

    #@94
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 418
    :cond_6
    new-instance v0, Lcom/android/okhttp/HttpUrl;

    #@99
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@9b
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@9d
    iget-object v4, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@9f
    .line 419
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->query:Ljava/lang/String;

    #@a1
    iget-object v8, p0, Lcom/android/okhttp/HttpUrl$Builder;->fragment:Ljava/lang/String;

    #@a3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v9

    #@a7
    .line 418
    invoke-direct/range {v0 .. v10}, Lcom/android/okhttp/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/okhttp/HttpUrl;)V

    #@aa
    return-object v0

    #@ab
    .line 377
    .end local v5    # "effectivePort":I
    .end local v6    # "effectivePath":Ljava/lang/String;
    .end local v11    # "defaultPort":I
    :cond_7
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@ad
    .local v3, "effectivePassword":Ljava/lang/String;
    goto/16 :goto_0

    #@af
    .line 393
    .end local v3    # "effectivePassword":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@b1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    goto :goto_1

    #@b5
    .line 397
    .restart local v11    # "defaultPort":I
    :cond_9
    move v5, v11

    #@b6
    .restart local v5    # "effectivePort":I
    goto :goto_2

    #@b7
    .line 405
    :cond_a
    const-string/jumbo v6, "/"

    #@ba
    .restart local v6    # "effectivePath":Ljava/lang/String;
    goto :goto_3
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "encodedPassword"    # Ljava/lang/String;

    #@0
    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "encodedPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "encodedQuery"    # Ljava/lang/String;

    #@0
    .prologue
    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public encodedUser(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "encodedUser"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .locals 21
    .param p1, "base"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 423
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const/4 v4, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    move-object/from16 v1, p2

    #@9
    invoke-direct {v0, v1, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    #@c
    move-result v5

    #@d
    .line 424
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@10
    move-result v3

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, p2

    #@15
    invoke-direct {v0, v1, v5, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    #@18
    move-result v12

    #@19
    .line 427
    .local v12, "limit":I
    move-object/from16 v0, p2

    #@1b
    invoke-static {v0, v5, v12}, Lcom/android/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    #@1e
    move-result v18

    #@1f
    .line 428
    .local v18, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    #@20
    move/from16 v0, v18

    #@22
    if-eq v0, v3, :cond_3

    #@24
    .line 429
    const-string/jumbo v6, "https:"

    #@27
    const/4 v4, 0x1

    #@28
    const/4 v7, 0x0

    #@29
    const/4 v8, 0x6

    #@2a
    move-object/from16 v3, p2

    #@2c
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 430
    const-string/jumbo v3, "https"

    #@35
    move-object/from16 v0, p0

    #@37
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@39
    .line 431
    const-string/jumbo v3, "https:"

    #@3c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3f
    move-result v3

    #@40
    add-int/2addr v5, v3

    #@41
    .line 445
    :goto_0
    const/4 v11, 0x0

    #@42
    .line 446
    .local v11, "hasUsername":Z
    move-object/from16 v0, p2

    #@44
    invoke-static {v0, v5, v12}, Lcom/android/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    #@47
    move-result v20

    #@48
    .line 447
    .local v20, "slashCount":I
    const/4 v3, 0x2

    #@49
    move/from16 v0, v20

    #@4b
    if-ge v0, v3, :cond_0

    #@4d
    if-nez p1, :cond_5

    #@4f
    .line 457
    :cond_0
    add-int v5, v5, v20

    #@51
    .line 460
    :goto_1
    const-string/jumbo v3, "@/\\?#"

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-static {v0, v5, v12, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@59
    move-result v10

    #@5a
    .line 461
    .local v10, "componentDelimiterOffset":I
    if-eq v10, v12, :cond_c

    #@5c
    .line 462
    move-object/from16 v0, p2

    #@5e
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v9

    #@62
    .line 464
    .local v9, "c":I
    :goto_2
    sparse-switch v9, :sswitch_data_0

    #@65
    goto :goto_1

    #@66
    .line 491
    :sswitch_0
    move-object/from16 v0, p2

    #@68
    invoke-static {v0, v5, v10}, Lcom/android/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    #@6b
    move-result v16

    #@6c
    .line 492
    .local v16, "portColonOffset":I
    add-int/lit8 v3, v16, 0x1

    #@6e
    if-ge v3, v10, :cond_10

    #@70
    .line 493
    move-object/from16 v0, p2

    #@72
    move/from16 v1, v16

    #@74
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;II)Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    move-object/from16 v0, p0

    #@7a
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@7c
    .line 494
    add-int/lit8 v3, v16, 0x1

    #@7e
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, p2

    #@82
    invoke-direct {v0, v1, v3, v10}, Lcom/android/okhttp/HttpUrl$Builder;->port(Ljava/lang/String;II)I

    #@85
    move-result v3

    #@86
    move-object/from16 v0, p0

    #@88
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@8a
    .line 495
    move-object/from16 v0, p0

    #@8c
    iget v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@8e
    const/4 v4, -0x1

    #@8f
    if-ne v3, v4, :cond_11

    #@91
    const/4 v3, 0x0

    #@92
    return-object v3

    #@93
    .line 432
    .end local v9    # "c":I
    .end local v10    # "componentDelimiterOffset":I
    .end local v11    # "hasUsername":Z
    .end local v16    # "portColonOffset":I
    .end local v20    # "slashCount":I
    :cond_1
    const-string/jumbo v6, "http:"

    #@96
    const/4 v4, 0x1

    #@97
    const/4 v7, 0x0

    #@98
    const/4 v8, 0x5

    #@99
    move-object/from16 v3, p2

    #@9b
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_2

    #@a1
    .line 433
    const-string/jumbo v3, "http"

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@a8
    .line 434
    const-string/jumbo v3, "http:"

    #@ab
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@ae
    move-result v3

    #@af
    add-int/2addr v5, v3

    #@b0
    goto :goto_0

    #@b1
    .line 436
    :cond_2
    const/4 v3, 0x0

    #@b2
    return-object v3

    #@b3
    .line 438
    :cond_3
    if-eqz p1, :cond_4

    #@b5
    .line 439
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get5(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@bd
    goto :goto_0

    #@be
    .line 441
    :cond_4
    const/4 v3, 0x0

    #@bf
    return-object v3

    #@c0
    .line 447
    .restart local v11    # "hasUsername":Z
    .restart local v20    # "slashCount":I
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get5(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@c3
    move-result-object v3

    #@c4
    move-object/from16 v0, p0

    #@c6
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v3

    #@cc
    if-eqz v3, :cond_0

    #@ce
    .line 507
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get6(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@d1
    move-result-object v3

    #@d2
    move-object/from16 v0, p0

    #@d4
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@d6
    .line 508
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get1(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    move-object/from16 v0, p0

    #@dc
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@de
    .line 509
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    move-object/from16 v0, p0

    #@e4
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@e6
    .line 510
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get3(Lcom/android/okhttp/HttpUrl;)I

    #@e9
    move-result v3

    #@ea
    move-object/from16 v0, p0

    #@ec
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@ee
    .line 511
    if-eq v5, v12, :cond_13

    #@f0
    .line 512
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@f5
    move-result v9

    #@f6
    .line 514
    .restart local v9    # "c":I
    :goto_3
    sparse-switch v9, :sswitch_data_1

    #@f9
    .line 530
    move-object/from16 v0, p0

    #@fb
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@fd
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    .line 531
    move-object/from16 v0, p0

    #@106
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@108
    const/16 v4, 0x2f

    #@10a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10d
    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    #@110
    .line 538
    :goto_4
    :sswitch_1
    const-string/jumbo v3, "?#"

    #@113
    move-object/from16 v0, p2

    #@115
    invoke-static {v0, v5, v12, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@118
    move-result v14

    #@119
    .line 539
    .local v14, "pathDelimiterOffset":I
    :cond_6
    :goto_5
    if-ge v5, v14, :cond_18

    #@11b
    .line 540
    const-string/jumbo v3, "/\\"

    #@11e
    move-object/from16 v0, p2

    #@120
    invoke-static {v0, v5, v14, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@123
    move-result v15

    #@124
    .line 541
    .local v15, "pathSegmentDelimiterOffset":I
    sub-int v19, v15, v5

    #@126
    .line 543
    .local v19, "segmentLength":I
    const/4 v3, 0x2

    #@127
    move/from16 v0, v19

    #@129
    if-ne v0, v3, :cond_7

    #@12b
    const-string/jumbo v6, ".."

    #@12e
    const/4 v4, 0x0

    #@12f
    const/4 v7, 0x0

    #@130
    const/4 v8, 0x2

    #@131
    move-object/from16 v3, p2

    #@133
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@136
    move-result v3

    #@137
    if-nez v3, :cond_a

    #@139
    .line 544
    :cond_7
    const/4 v3, 0x4

    #@13a
    move/from16 v0, v19

    #@13c
    if-ne v0, v3, :cond_8

    #@13e
    const-string/jumbo v6, "%2e."

    #@141
    const/4 v4, 0x1

    #@142
    const/4 v7, 0x0

    #@143
    const/4 v8, 0x4

    #@144
    move-object/from16 v3, p2

    #@146
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@149
    move-result v3

    #@14a
    .line 543
    if-nez v3, :cond_a

    #@14c
    .line 545
    :cond_8
    const/4 v3, 0x4

    #@14d
    move/from16 v0, v19

    #@14f
    if-ne v0, v3, :cond_9

    #@151
    const-string/jumbo v6, ".%2e"

    #@154
    const/4 v4, 0x1

    #@155
    const/4 v7, 0x0

    #@156
    const/4 v8, 0x4

    #@157
    move-object/from16 v3, p2

    #@159
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@15c
    move-result v3

    #@15d
    .line 543
    if-nez v3, :cond_a

    #@15f
    .line 546
    :cond_9
    const/4 v3, 0x6

    #@160
    move/from16 v0, v19

    #@162
    if-ne v0, v3, :cond_14

    #@164
    const-string/jumbo v6, "%2e%2e"

    #@167
    const/4 v4, 0x1

    #@168
    const/4 v7, 0x0

    #@169
    const/4 v8, 0x6

    #@16a
    move-object/from16 v3, p2

    #@16c
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@16f
    move-result v3

    #@170
    .line 543
    if-eqz v3, :cond_14

    #@172
    .line 547
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    #@175
    .line 558
    :cond_b
    :goto_6
    move v5, v15

    #@176
    .line 559
    if-ge v15, v14, :cond_6

    #@178
    .line 560
    add-int/lit8 v5, v5, 0x1

    #@17a
    goto :goto_5

    #@17b
    .line 463
    .end local v9    # "c":I
    .end local v14    # "pathDelimiterOffset":I
    .end local v15    # "pathSegmentDelimiterOffset":I
    .end local v19    # "segmentLength":I
    .restart local v10    # "componentDelimiterOffset":I
    :cond_c
    const/4 v9, -0x1

    #@17c
    .restart local v9    # "c":I
    goto/16 :goto_2

    #@17e
    .line 467
    :sswitch_2
    move-object/from16 v0, p0

    #@180
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@182
    if-nez v3, :cond_f

    #@184
    .line 469
    const-string/jumbo v3, ":"

    #@187
    .line 468
    move-object/from16 v0, p2

    #@189
    invoke-static {v0, v5, v10, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@18c
    move-result v13

    #@18d
    .line 470
    .local v13, "passwordColonOffset":I
    if-eqz v11, :cond_e

    #@18f
    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    #@191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@194
    move-object/from16 v0, p0

    #@196
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v3

    #@19c
    const-string/jumbo v4, "%40"

    #@19f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v3

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, p2

    #@1a7
    invoke-direct {v0, v1, v5, v13}, Lcom/android/okhttp/HttpUrl$Builder;->username(Ljava/lang/String;II)Ljava/lang/String;

    #@1aa
    move-result-object v4

    #@1ab
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v3

    #@1af
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v3

    #@1b3
    .line 470
    :goto_7
    move-object/from16 v0, p0

    #@1b5
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->username:Ljava/lang/String;

    #@1b7
    .line 473
    if-eq v13, v10, :cond_d

    #@1b9
    .line 475
    add-int/lit8 v3, v13, 0x1

    #@1bb
    .line 474
    move-object/from16 v0, p0

    #@1bd
    move-object/from16 v1, p2

    #@1bf
    invoke-direct {v0, v1, v3, v10}, Lcom/android/okhttp/HttpUrl$Builder;->password(Ljava/lang/String;II)Ljava/lang/String;

    #@1c2
    move-result-object v3

    #@1c3
    move-object/from16 v0, p0

    #@1c5
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@1c7
    .line 477
    :cond_d
    const/4 v11, 0x1

    #@1c8
    .line 482
    .end local v13    # "passwordColonOffset":I
    :goto_8
    add-int/lit8 v5, v10, 0x1

    #@1ca
    .line 483
    goto/16 :goto_1

    #@1cc
    .line 472
    .restart local v13    # "passwordColonOffset":I
    :cond_e
    move-object/from16 v0, p0

    #@1ce
    move-object/from16 v1, p2

    #@1d0
    invoke-direct {v0, v1, v5, v13}, Lcom/android/okhttp/HttpUrl$Builder;->username(Ljava/lang/String;II)Ljava/lang/String;

    #@1d3
    move-result-object v3

    #@1d4
    goto :goto_7

    #@1d5
    .line 479
    .end local v13    # "passwordColonOffset":I
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@1de
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v3

    #@1e2
    const-string/jumbo v4, "%40"

    #@1e5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v3

    #@1e9
    .line 480
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, p2

    #@1ed
    invoke-direct {v0, v1, v5, v10}, Lcom/android/okhttp/HttpUrl$Builder;->password(Ljava/lang/String;II)Ljava/lang/String;

    #@1f0
    move-result-object v4

    #@1f1
    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f4
    move-result-object v3

    #@1f5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f8
    move-result-object v3

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->password:Ljava/lang/String;

    #@1fd
    goto :goto_8

    #@1fe
    .line 497
    .restart local v16    # "portColonOffset":I
    :cond_10
    move-object/from16 v0, p2

    #@200
    move/from16 v1, v16

    #@202
    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;II)Ljava/lang/String;

    #@205
    move-result-object v3

    #@206
    move-object/from16 v0, p0

    #@208
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@20a
    .line 498
    move-object/from16 v0, p0

    #@20c
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    #@20e
    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    #@211
    move-result v3

    #@212
    move-object/from16 v0, p0

    #@214
    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    #@216
    .line 500
    :cond_11
    move-object/from16 v0, p0

    #@218
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    #@21a
    if-nez v3, :cond_12

    #@21c
    const/4 v3, 0x0

    #@21d
    return-object v3

    #@21e
    .line 501
    :cond_12
    move v5, v10

    #@21f
    .line 502
    goto/16 :goto_4

    #@221
    .line 513
    .end local v9    # "c":I
    .end local v10    # "componentDelimiterOffset":I
    .end local v16    # "portColonOffset":I
    :cond_13
    const/4 v9, -0x1

    #@222
    .restart local v9    # "c":I
    goto/16 :goto_3

    #@224
    .line 517
    :sswitch_3
    move-object/from16 v0, p0

    #@226
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@228
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@22b
    move-result-object v4

    #@22c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    .line 518
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get4(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@232
    move-result-object v3

    #@233
    move-object/from16 v0, p0

    #@235
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->query:Ljava/lang/String;

    #@237
    goto/16 :goto_4

    #@239
    .line 522
    :sswitch_4
    move-object/from16 v0, p0

    #@23b
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@23d
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    #@240
    move-result-object v4

    #@241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@244
    goto/16 :goto_4

    #@246
    .line 548
    .restart local v14    # "pathDelimiterOffset":I
    .restart local v15    # "pathSegmentDelimiterOffset":I
    .restart local v19    # "segmentLength":I
    :cond_14
    const/4 v3, 0x1

    #@247
    move/from16 v0, v19

    #@249
    if-ne v0, v3, :cond_15

    #@24b
    const-string/jumbo v6, "."

    #@24e
    const/4 v4, 0x0

    #@24f
    const/4 v7, 0x0

    #@250
    const/4 v8, 0x1

    #@251
    move-object/from16 v3, p2

    #@253
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@256
    move-result v3

    #@257
    if-nez v3, :cond_b

    #@259
    .line 549
    :cond_15
    const/4 v3, 0x3

    #@25a
    move/from16 v0, v19

    #@25c
    if-ne v0, v3, :cond_16

    #@25e
    const-string/jumbo v6, "%2e"

    #@261
    const/4 v4, 0x1

    #@262
    const/4 v7, 0x0

    #@263
    const/4 v8, 0x3

    #@264
    move-object/from16 v3, p2

    #@266
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@269
    move-result v3

    #@26a
    .line 548
    if-nez v3, :cond_b

    #@26c
    .line 551
    :cond_16
    if-ge v15, v14, :cond_17

    #@26e
    .line 552
    move-object/from16 v0, p0

    #@270
    move-object/from16 v1, p2

    #@272
    invoke-direct {v0, v1, v5, v15}, Lcom/android/okhttp/HttpUrl$Builder;->pathSegment(Ljava/lang/String;II)V

    #@275
    .line 553
    move-object/from16 v0, p0

    #@277
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->pathBuilder:Ljava/lang/StringBuilder;

    #@279
    const/16 v4, 0x2f

    #@27b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27e
    goto/16 :goto_6

    #@280
    .line 555
    :cond_17
    move-object/from16 v0, p0

    #@282
    move-object/from16 v1, p2

    #@284
    invoke-direct {v0, v1, v5, v15}, Lcom/android/okhttp/HttpUrl$Builder;->pathSegment(Ljava/lang/String;II)V

    #@287
    goto/16 :goto_6

    #@289
    .line 565
    .end local v15    # "pathSegmentDelimiterOffset":I
    .end local v19    # "segmentLength":I
    :cond_18
    if-ge v5, v12, :cond_19

    #@28b
    move-object/from16 v0, p2

    #@28d
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@290
    move-result v3

    #@291
    const/16 v4, 0x3f

    #@293
    if-ne v3, v4, :cond_19

    #@295
    .line 566
    const-string/jumbo v3, "#"

    #@298
    move-object/from16 v0, p2

    #@29a
    invoke-static {v0, v5, v12, v3}, Lcom/android/okhttp/HttpUrl$Builder;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    #@29d
    move-result v17

    #@29e
    .line 567
    .local v17, "queryDelimiterOffset":I
    add-int/lit8 v3, v5, 0x1

    #@2a0
    move-object/from16 v0, p0

    #@2a2
    move-object/from16 v1, p2

    #@2a4
    move/from16 v2, v17

    #@2a6
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/HttpUrl$Builder;->query(Ljava/lang/String;II)Ljava/lang/String;

    #@2a9
    move-result-object v3

    #@2aa
    move-object/from16 v0, p0

    #@2ac
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->query:Ljava/lang/String;

    #@2ae
    .line 568
    move/from16 v5, v17

    #@2b0
    .line 572
    .end local v17    # "queryDelimiterOffset":I
    :cond_19
    if-ge v5, v12, :cond_1a

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@2b7
    move-result v3

    #@2b8
    const/16 v4, 0x23

    #@2ba
    if-ne v3, v4, :cond_1a

    #@2bc
    .line 573
    add-int/lit8 v3, v5, 0x1

    #@2be
    move-object/from16 v0, p0

    #@2c0
    move-object/from16 v1, p2

    #@2c2
    invoke-direct {v0, v1, v3, v12}, Lcom/android/okhttp/HttpUrl$Builder;->fragment(Ljava/lang/String;II)Ljava/lang/String;

    #@2c5
    move-result-object v3

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->fragment:Ljava/lang/String;

    #@2ca
    .line 576
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    #@2cd
    move-result-object v3

    #@2ce
    return-object v3

    #@2cf
    .line 464
    nop

    #@2d0
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_2
        0x5c -> :sswitch_0
    .end sparse-switch

    #@2ea
    .line 514
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_3
        0x23 -> :sswitch_3
        0x2f -> :sswitch_1
        0x3f -> :sswitch_4
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    #@0
    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public port(I)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 364
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "encodedName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 365
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 359
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 360
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@d
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@10
    throw v0
.end method

.method public scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 353
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "encodedName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 354
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "encodedValue == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 355
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@18
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1b
    throw v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "name == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 348
    :cond_0
    if-nez p2, :cond_1

    #@d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "value == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 349
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@18
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1b
    throw v0
.end method

.method public user(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    #@0
    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
