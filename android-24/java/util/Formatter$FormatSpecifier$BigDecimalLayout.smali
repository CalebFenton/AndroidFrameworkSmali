.class Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter$FormatSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecimalLayout"
.end annotation


# instance fields
.field private dot:Z

.field private exp:Ljava/lang/StringBuilder;

.field private mant:Ljava/lang/StringBuilder;

.field private scale:I

.field final synthetic this$1:Ljava/util/Formatter$FormatSpecifier;


# direct methods
.method public constructor <init>(Ljava/util/Formatter$FormatSpecifier;Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .locals 1
    .param p1, "this$1"    # Ljava/util/Formatter$FormatSpecifier;
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    #@0
    .prologue
    .line 3753
    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->this$1:Ljava/util/Formatter$FormatSpecifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3750
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@8
    .line 3754
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V

    #@b
    .line 3753
    return-void
.end method

.method private layout(Ljava/math/BigInteger;ILjava/util/Formatter$BigDecimalLayoutForm;)V
    .locals 12
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Ljava/util/Formatter$BigDecimalLayoutForm;

    #@0
    .prologue
    .line 3794
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v4

    #@8
    .line 3795
    .local v4, "coeff":[C
    iput p2, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    #@a
    .line 3802
    new-instance v8, Ljava/lang/StringBuilder;

    #@c
    array-length v9, v4

    #@d
    add-int/lit8 v9, v9, 0xe

    #@f
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@14
    .line 3804
    if-nez p2, :cond_4

    #@16
    .line 3805
    array-length v6, v4

    #@17
    .line 3806
    .local v6, "len":I
    const/4 v8, 0x1

    #@18
    if-le v6, v8, :cond_3

    #@1a
    .line 3807
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@1c
    const/4 v9, 0x0

    #@1d
    aget-char v9, v4, v9

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 3808
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@24
    if-ne p3, v8, :cond_2

    #@26
    .line 3809
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@28
    const/16 v9, 0x2e

    #@2a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 3810
    const/4 v8, 0x1

    #@2e
    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@30
    .line 3811
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@32
    add-int/lit8 v9, v6, -0x1

    #@34
    const/4 v10, 0x1

    #@35
    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@38
    .line 3812
    new-instance v8, Ljava/lang/StringBuilder;

    #@3a
    const-string/jumbo v9, "+"

    #@3d
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@40
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@42
    .line 3813
    const/16 v8, 0xa

    #@44
    if-ge v6, v8, :cond_1

    #@46
    .line 3814
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@48
    const-string/jumbo v9, "0"

    #@4b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    add-int/lit8 v9, v6, -0x1

    #@51
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    .line 3825
    :cond_0
    :goto_0
    return-void

    #@55
    .line 3816
    :cond_1
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@57
    add-int/lit8 v9, v6, -0x1

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_0

    #@5d
    .line 3818
    :cond_2
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@5f
    add-int/lit8 v9, v6, -0x1

    #@61
    const/4 v10, 0x1

    #@62
    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@65
    goto :goto_0

    #@66
    .line 3821
    :cond_3
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@68
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@6b
    .line 3822
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->SCIENTIFIC:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@6d
    if-ne p3, v8, :cond_0

    #@6f
    .line 3823
    new-instance v8, Ljava/lang/StringBuilder;

    #@71
    const-string/jumbo v9, "+00"

    #@74
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@77
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@79
    goto :goto_0

    #@7a
    .line 3827
    .end local v6    # "len":I
    :cond_4
    int-to-long v8, p2

    #@7b
    neg-long v8, v8

    #@7c
    array-length v10, v4

    #@7d
    add-int/lit8 v10, v10, -0x1

    #@7f
    int-to-long v10, v10

    #@80
    add-long v2, v8, v10

    #@82
    .line 3828
    .local v2, "adjusted":J
    sget-object v8, Ljava/util/Formatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Ljava/util/Formatter$BigDecimalLayoutForm;

    #@84
    if-ne p3, v8, :cond_9

    #@86
    .line 3830
    array-length v8, v4

    #@87
    sub-int v7, p2, v8

    #@89
    .line 3831
    .local v7, "pad":I
    if-ltz v7, :cond_6

    #@8b
    .line 3833
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@8d
    const-string/jumbo v9, "0."

    #@90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 3834
    const/4 v8, 0x1

    #@94
    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@96
    .line 3835
    :goto_1
    if-lez v7, :cond_5

    #@98
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@9a
    const/16 v9, 0x30

    #@9c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9f
    add-int/lit8 v7, v7, -0x1

    #@a1
    goto :goto_1

    #@a2
    .line 3836
    :cond_5
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@a4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@a7
    .line 3793
    .end local v7    # "pad":I
    :goto_2
    return-void

    #@a8
    .line 3838
    .restart local v7    # "pad":I
    :cond_6
    neg-int v8, v7

    #@a9
    array-length v9, v4

    #@aa
    if-ge v8, v9, :cond_7

    #@ac
    .line 3840
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@ae
    neg-int v9, v7

    #@af
    const/4 v10, 0x0

    #@b0
    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@b3
    .line 3841
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@b5
    const/16 v9, 0x2e

    #@b7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ba
    .line 3842
    const/4 v8, 0x1

    #@bb
    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@bd
    .line 3843
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@bf
    neg-int v9, v7

    #@c0
    invoke-virtual {v8, v4, v9, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@c3
    goto :goto_2

    #@c4
    .line 3846
    :cond_7
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@c6
    array-length v9, v4

    #@c7
    const/4 v10, 0x0

    #@c8
    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@cb
    .line 3847
    const/4 v5, 0x0

    #@cc
    .local v5, "i":I
    :goto_3
    neg-int v8, p2

    #@cd
    if-ge v5, v8, :cond_8

    #@cf
    .line 3848
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@d1
    const/16 v9, 0x30

    #@d3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d6
    .line 3847
    add-int/lit8 v5, v5, 0x1

    #@d8
    goto :goto_3

    #@d9
    .line 3849
    :cond_8
    const/4 v8, 0x0

    #@da
    iput v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    #@dc
    goto :goto_2

    #@dd
    .line 3854
    .end local v5    # "i":I
    .end local v7    # "pad":I
    :cond_9
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@df
    const/4 v9, 0x0

    #@e0
    aget-char v9, v4, v9

    #@e2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e5
    .line 3855
    array-length v8, v4

    #@e6
    const/4 v9, 0x1

    #@e7
    if-le v8, v9, :cond_a

    #@e9
    .line 3856
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@eb
    const/16 v9, 0x2e

    #@ed
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f0
    .line 3857
    const/4 v8, 0x1

    #@f1
    iput-boolean v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@f3
    .line 3858
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@f5
    array-length v9, v4

    #@f6
    add-int/lit8 v9, v9, -0x1

    #@f8
    const/4 v10, 0x1

    #@f9
    invoke-virtual {v8, v4, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@fc
    .line 3860
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    iput-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@103
    .line 3861
    const-wide/16 v8, 0x0

    #@105
    cmp-long v8, v2, v8

    #@107
    if-eqz v8, :cond_d

    #@109
    .line 3862
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    #@10c
    move-result-wide v0

    #@10d
    .line 3864
    .local v0, "abs":J
    iget-object v9, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@10f
    const-wide/16 v10, 0x0

    #@111
    cmp-long v8, v2, v10

    #@113
    if-gez v8, :cond_c

    #@115
    const/16 v8, 0x2d

    #@117
    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11a
    .line 3865
    const-wide/16 v8, 0xa

    #@11c
    cmp-long v8, v0, v8

    #@11e
    if-gez v8, :cond_b

    #@120
    .line 3866
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@122
    const/16 v9, 0x30

    #@124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@127
    .line 3867
    :cond_b
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@129
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@12c
    goto/16 :goto_2

    #@12e
    .line 3864
    :cond_c
    const/16 v8, 0x2b

    #@130
    goto :goto_4

    #@131
    .line 3869
    .end local v0    # "abs":J
    :cond_d
    iget-object v8, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@133
    const-string/jumbo v9, "+00"

    #@136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    goto/16 :goto_2
.end method

.method private toCharArray(Ljava/lang/StringBuilder;)[C
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3786
    if-nez p1, :cond_0

    #@4
    .line 3787
    return-object v1

    #@5
    .line 3788
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [C

    #@b
    .line 3789
    .local v0, "result":[C
    array-length v1, v0

    #@c
    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    #@f
    .line 3790
    return-object v0
.end method


# virtual methods
.method public exponent()[C
    .locals 1

    #@0
    .prologue
    .line 3782
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasDot()Z
    .locals 1

    #@0
    .prologue
    .line 3758
    iget-boolean v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    #@2
    return v0
.end method

.method public layoutChars()[C
    .locals 2

    #@0
    .prologue
    .line 3767
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@7
    .line 3768
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 3769
    const/16 v1, 0x45

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 3770
    iget-object v1, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@15
    .line 3772
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public mantissa()[C
    .locals 1

    #@0
    .prologue
    .line 3776
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    #@2
    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public scale()I
    .locals 1

    #@0
    .prologue
    .line 3762
    iget v0, p0, Ljava/util/Formatter$FormatSpecifier$BigDecimalLayout;->scale:I

    #@2
    return v0
.end method
