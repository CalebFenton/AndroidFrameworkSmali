.class Landroid/net/Uri$StringUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x1


# instance fields
.field private authority:Landroid/net/Uri$Part;

.field private volatile cachedFsi:I

.field private volatile cachedSsi:I

.field private fragment:Landroid/net/Uri$Part;

.field private path:Landroid/net/Uri$PathPart;

.field private query:Landroid/net/Uri$Part;

.field private volatile scheme:Ljava/lang/String;

.field private ssp:Landroid/net/Uri$Part;

.field private final uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, -0x2

    #@2
    .line 473
    invoke-direct {p0, v1}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$AbstractHierarchicalUri;)V

    #@5
    .line 495
    iput v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    #@7
    .line 505
    iput v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    #@9
    .line 536
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    #@f
    .line 474
    if-nez p1, :cond_0

    #@11
    .line 475
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "uriString"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 478
    :cond_0
    iput-object p1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@1c
    .line 473
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$StringUri;)V
    .locals 0
    .param p1, "uriString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private findFragmentSeparator()I
    .locals 3

    #@0
    .prologue
    .line 509
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 510
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@7
    const/16 v1, 0x23

    #@9
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@c
    move-result v2

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    #@13
    .line 509
    :goto_0
    return v0

    #@14
    .line 511
    :cond_0
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    #@16
    goto :goto_0
.end method

.method private findSchemeSeparator()I
    .locals 2

    #@0
    .prologue
    .line 499
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 500
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@7
    const/16 v1, 0x3a

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    #@f
    .line 499
    :goto_0
    return v0

    #@10
    .line 501
    :cond_0
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    #@12
    goto :goto_0
.end method

.method private getAuthorityPart()Landroid/net/Uri$Part;
    .locals 3

    #@0
    .prologue
    .line 576
    iget-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 578
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@9
    move-result v2

    #@a
    invoke-static {v1, v2}, Landroid/net/Uri$StringUri;->parseAuthority(Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 579
    .local v0, "encodedAuthority":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    #@14
    return-object v1

    #@15
    .line 582
    .end local v0    # "encodedAuthority":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    #@17
    return-object v1
.end method

.method private getFragmentPart()Landroid/net/Uri$Part;
    .locals 1

    #@0
    .prologue
    .line 678
    iget-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 679
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseFragment()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    #@e
    .line 678
    :goto_0
    return-object v0

    #@f
    .line 679
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    #@11
    goto :goto_0
.end method

.method private getPathPart()Landroid/net/Uri$PathPart;
    .locals 1

    #@0
    .prologue
    .line 596
    iget-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 597
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parsePath()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    #@e
    .line 596
    :goto_0
    return-object v0

    #@f
    .line 598
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    #@11
    goto :goto_0
.end method

.method private getQueryPart()Landroid/net/Uri$Part;
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 642
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseQuery()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    #@e
    .line 641
    :goto_0
    return-object v0

    #@f
    .line 642
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    #@11
    goto :goto_0
.end method

.method private getSsp()Landroid/net/Uri$Part;
    .locals 1

    #@0
    .prologue
    .line 552
    iget-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseSsp()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    #@11
    goto :goto_0
.end method

.method static parseAuthority(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    #@0
    .prologue
    const/16 v3, 0x2f

    #@2
    .line 708
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 711
    .local v1, "length":I
    add-int/lit8 v2, p1, 0x2

    #@8
    if-le v1, v2, :cond_1

    #@a
    .line 712
    add-int/lit8 v2, p1, 0x1

    #@c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 713
    add-int/lit8 v2, p1, 0x2

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 718
    add-int/lit8 v0, p1, 0x3

    #@1c
    .line 719
    .local v0, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1e
    .line 720
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v2

    #@22
    sparse-switch v2, :sswitch_data_0

    #@25
    .line 726
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 729
    :cond_0
    :sswitch_0
    add-int/lit8 v2, p1, 0x3

    #@2a
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    return-object v2

    #@2f
    .line 731
    .end local v0    # "end":I
    :cond_1
    const/4 v2, 0x0

    #@30
    return-object v2

    #@31
    .line 720
    nop

    #@32
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private parseFragment()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    #@3
    move-result v0

    #@4
    .line 688
    .local v0, "fsi":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@b
    add-int/lit8 v2, v0, 0x1

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    goto :goto_0
.end method

.method private parsePath()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 614
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@3
    .line 615
    .local v2, "uriString":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@6
    move-result v1

    #@7
    .line 618
    .local v1, "ssi":I
    const/4 v3, -0x1

    #@8
    if-le v1, v3, :cond_2

    #@a
    .line 620
    add-int/lit8 v3, v1, 0x1

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    if-ne v3, v4, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    .line 621
    .local v0, "schemeOnly":Z
    :goto_0
    if-eqz v0, :cond_1

    #@15
    .line 623
    return-object v5

    #@16
    .line 620
    .end local v0    # "schemeOnly":Z
    :cond_0
    const/4 v0, 0x0

    #@17
    .restart local v0    # "schemeOnly":Z
    goto :goto_0

    #@18
    .line 627
    :cond_1
    add-int/lit8 v3, v1, 0x1

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    const/16 v4, 0x2f

    #@20
    if-eq v3, v4, :cond_2

    #@22
    .line 629
    return-object v5

    #@23
    .line 635
    .end local v0    # "schemeOnly":Z
    :cond_2
    invoke-static {v2, v1}, Landroid/net/Uri$StringUri;->parsePath(Ljava/lang/String;I)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method static parsePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    #@0
    .prologue
    const/16 v4, 0x2f

    #@2
    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    .line 749
    .local v0, "length":I
    add-int/lit8 v3, p1, 0x2

    #@8
    if-le v0, v3, :cond_0

    #@a
    .line 750
    add-int/lit8 v3, p1, 0x1

    #@c
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v3

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 751
    add-int/lit8 v3, p1, 0x2

    #@14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v3

    #@18
    if-ne v3, v4, :cond_0

    #@1a
    .line 753
    add-int/lit8 v2, p1, 0x3

    #@1c
    .line 754
    .local v2, "pathStart":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@1e
    .line 755
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v3

    #@22
    sparse-switch v3, :sswitch_data_0

    #@25
    .line 762
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 758
    :sswitch_0
    const-string/jumbo v3, ""

    #@2b
    return-object v3

    #@2c
    .line 766
    .end local v2    # "pathStart":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    #@2e
    .line 770
    .restart local v2    # "pathStart":I
    :cond_1
    :sswitch_1
    move v1, v2

    #@2f
    .line 771
    .local v1, "pathEnd":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@31
    .line 772
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v3

    #@35
    sparse-switch v3, :sswitch_data_1

    #@38
    .line 777
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 780
    :cond_2
    :sswitch_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 755
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    #@4e
    .line 772
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_2
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method private parseQuery()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 652
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@4
    const/16 v3, 0x3f

    #@6
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@9
    move-result v4

    #@a
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    #@d
    move-result v1

    #@e
    .line 653
    .local v1, "qsi":I
    if-ne v1, v5, :cond_0

    #@10
    .line 654
    return-object v6

    #@11
    .line 657
    :cond_0
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    #@14
    move-result v0

    #@15
    .line 659
    .local v0, "fsi":I
    if-ne v0, v5, :cond_1

    #@17
    .line 660
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@19
    add-int/lit8 v3, v1, 0x1

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 663
    :cond_1
    if-ge v0, v1, :cond_2

    #@22
    .line 665
    return-object v6

    #@23
    .line 668
    :cond_2
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@25
    add-int/lit8 v3, v1, 0x1

    #@27
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method private parseScheme()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 545
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@3
    move-result v0

    #@4
    .line 546
    .local v0, "ssi":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v1, 0x0

    #@8
    :goto_0
    return-object v1

    #@9
    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method private parseSsp()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 564
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@3
    move-result v1

    #@4
    .line 565
    .local v1, "ssi":I
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    #@7
    move-result v0

    #@8
    .line 568
    .local v0, "fsi":I
    const/4 v2, -0x1

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 569
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@d
    add-int/lit8 v3, v1, 0x1

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 568
    :goto_0
    return-object v2

    #@14
    .line 570
    :cond_0
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@16
    add-int/lit8 v3, v1, 0x1

    #@18
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    goto :goto_0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 482
    new-instance v0, Landroid/net/Uri$StringUri;

    #@2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    #@0
    .prologue
    .line 784
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->isHierarchical()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 785
    new-instance v0, Landroid/net/Uri$Builder;

    #@8
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@b
    .line 786
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 787
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    #@16
    move-result-object v1

    #@17
    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 788
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    #@1e
    move-result-object v1

    #@1f
    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@22
    move-result-object v0

    #@23
    .line 789
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    #@26
    move-result-object v1

    #@27
    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@2a
    move-result-object v0

    #@2b
    .line 790
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    #@2e
    move-result-object v1

    #@2f
    .line 785
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@32
    move-result-object v0

    #@33
    return-object v0

    #@34
    .line 792
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    #@36
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@39
    .line 793
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 792
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@40
    move-result-object v0

    #@41
    .line 794
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    #@44
    move-result-object v1

    #@45
    .line 792
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@48
    move-result-object v0

    #@49
    .line 795
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    #@4c
    move-result-object v1

    #@4d
    .line 792
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 486
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 590
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 586
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 606
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 556
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 692
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 610
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 672
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 540
    iget-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 541
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 540
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "cached":Z
    goto :goto_0

    #@10
    .line 541
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseScheme()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    #@16
    goto :goto_1
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 560
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public isHierarchical()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 515
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@5
    move-result v0

    #@6
    .line 517
    .local v0, "ssi":I
    const/4 v3, -0x1

    #@7
    if-ne v0, v3, :cond_0

    #@9
    .line 519
    return v1

    #@a
    .line 522
    :cond_0
    iget-object v3, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    add-int/lit8 v4, v0, 0x1

    #@12
    if-ne v3, v4, :cond_1

    #@14
    .line 524
    return v2

    #@15
    .line 528
    :cond_1
    iget-object v3, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@17
    add-int/lit8 v4, v0, 0x1

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0x2f

    #@1f
    if-ne v3, v4, :cond_2

    #@21
    :goto_0
    return v1

    #@22
    :cond_2
    move v1, v2

    #@23
    goto :goto_0
.end method

.method public isRelative()Z
    .locals 2

    #@0
    .prologue
    .line 533
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 490
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4
    .line 491
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 489
    return-void
.end method
