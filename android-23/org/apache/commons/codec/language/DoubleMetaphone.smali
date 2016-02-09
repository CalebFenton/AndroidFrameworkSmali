.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field protected maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 52
    const/4 v0, 0x5

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    const-string/jumbo v1, "GN"

    #@b
    aput-object v1, v0, v3

    #@d
    const-string/jumbo v1, "KN"

    #@10
    aput-object v1, v0, v4

    #@12
    const-string/jumbo v1, "PN"

    #@15
    aput-object v1, v0, v5

    #@17
    const-string/jumbo v1, "WR"

    #@1a
    aput-object v1, v0, v6

    #@1c
    const-string/jumbo v1, "PS"

    #@1f
    aput-object v1, v0, v7

    #@21
    .line 51
    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    #@23
    .line 54
    const/16 v0, 0xa

    #@25
    new-array v0, v0, [Ljava/lang/String;

    #@27
    const-string/jumbo v1, "L"

    #@2a
    aput-object v1, v0, v3

    #@2c
    const-string/jumbo v1, "R"

    #@2f
    aput-object v1, v0, v4

    #@31
    const-string/jumbo v1, "N"

    #@34
    aput-object v1, v0, v5

    #@36
    const-string/jumbo v1, "M"

    #@39
    aput-object v1, v0, v6

    #@3b
    const-string/jumbo v1, "B"

    #@3e
    aput-object v1, v0, v7

    #@40
    const-string/jumbo v1, "H"

    #@43
    const/4 v2, 0x5

    #@44
    aput-object v1, v0, v2

    #@46
    const-string/jumbo v1, "F"

    #@49
    const/4 v2, 0x6

    #@4a
    aput-object v1, v0, v2

    #@4c
    const-string/jumbo v1, "V"

    #@4f
    const/4 v2, 0x7

    #@50
    aput-object v1, v0, v2

    #@52
    const-string/jumbo v1, "W"

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    const-string/jumbo v1, " "

    #@5c
    const/16 v2, 0x9

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 53
    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    #@62
    .line 56
    const/16 v0, 0xb

    #@64
    new-array v0, v0, [Ljava/lang/String;

    #@66
    const-string/jumbo v1, "ES"

    #@69
    aput-object v1, v0, v3

    #@6b
    const-string/jumbo v1, "EP"

    #@6e
    aput-object v1, v0, v4

    #@70
    const-string/jumbo v1, "EB"

    #@73
    aput-object v1, v0, v5

    #@75
    const-string/jumbo v1, "EL"

    #@78
    aput-object v1, v0, v6

    #@7a
    const-string/jumbo v1, "EY"

    #@7d
    aput-object v1, v0, v7

    #@7f
    const-string/jumbo v1, "IB"

    #@82
    const/4 v2, 0x5

    #@83
    aput-object v1, v0, v2

    #@85
    const-string/jumbo v1, "IL"

    #@88
    const/4 v2, 0x6

    #@89
    aput-object v1, v0, v2

    #@8b
    const-string/jumbo v1, "IN"

    #@8e
    const/4 v2, 0x7

    #@8f
    aput-object v1, v0, v2

    #@91
    const-string/jumbo v1, "IE"

    #@94
    const/16 v2, 0x8

    #@96
    aput-object v1, v0, v2

    #@98
    const-string/jumbo v1, "EI"

    #@9b
    const/16 v2, 0x9

    #@9d
    aput-object v1, v0, v2

    #@9f
    const-string/jumbo v1, "ER"

    #@a2
    const/16 v2, 0xa

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 55
    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    #@a8
    .line 58
    const/16 v0, 0x8

    #@aa
    new-array v0, v0, [Ljava/lang/String;

    #@ac
    const-string/jumbo v1, "L"

    #@af
    aput-object v1, v0, v3

    #@b1
    const-string/jumbo v1, "T"

    #@b4
    aput-object v1, v0, v4

    #@b6
    const-string/jumbo v1, "K"

    #@b9
    aput-object v1, v0, v5

    #@bb
    const-string/jumbo v1, "S"

    #@be
    aput-object v1, v0, v6

    #@c0
    const-string/jumbo v1, "N"

    #@c3
    aput-object v1, v0, v7

    #@c5
    const-string/jumbo v1, "M"

    #@c8
    const/4 v2, 0x5

    #@c9
    aput-object v1, v0, v2

    #@cb
    const-string/jumbo v1, "B"

    #@ce
    const/4 v2, 0x6

    #@cf
    aput-object v1, v0, v2

    #@d1
    const-string/jumbo v1, "Z"

    #@d4
    const/4 v2, 0x7

    #@d5
    aput-object v1, v0, v2

    #@d7
    .line 57
    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    #@d9
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    const/4 v0, 0x4

    #@4
    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    #@6
    .line 68
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 923
    if-nez p1, :cond_0

    #@3
    .line 924
    return-object v1

    #@4
    .line 926
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 928
    return-object v1

    #@f
    .line 930
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 814
    const-string/jumbo v2, "CHIA"

    #@5
    const/4 v3, 0x4

    #@6
    invoke-static {p1, p2, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 815
    return v1

    #@d
    .line 816
    :cond_0
    if-gt p2, v1, :cond_1

    #@f
    .line 817
    return v5

    #@10
    .line 818
    :cond_1
    add-int/lit8 v2, p2, -0x2

    #@12
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@15
    move-result v2

    #@16
    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 819
    return v5

    #@1d
    .line 820
    :cond_2
    add-int/lit8 v2, p2, -0x1

    #@1f
    const-string/jumbo v3, "ACH"

    #@22
    const/4 v4, 0x3

    #@23
    invoke-static {p1, v2, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_3

    #@29
    .line 821
    return v5

    #@2a
    .line 823
    :cond_3
    add-int/lit8 v2, p2, 0x2

    #@2c
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@2f
    move-result v0

    #@30
    .line 824
    .local v0, "c":C
    const/16 v2, 0x49

    #@32
    if-eq v0, v2, :cond_4

    #@34
    const/16 v2, 0x45

    #@36
    if-eq v0, v2, :cond_4

    #@38
    :goto_0
    return v1

    #@39
    .line 825
    :cond_4
    add-int/lit8 v1, p2, -0x2

    #@3b
    const-string/jumbo v2, "BACHER"

    #@3e
    const-string/jumbo v3, "MACHER"

    #@41
    const/4 v4, 0x6

    #@42
    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@45
    move-result v1

    #@46
    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x0

    #@2
    .line 833
    if-eqz p2, :cond_0

    #@4
    .line 834
    return v7

    #@5
    .line 835
    :cond_0
    add-int/lit8 v0, p2, 0x1

    #@7
    const-string/jumbo v1, "HARAC"

    #@a
    const-string/jumbo v2, "HARIS"

    #@d
    invoke-static {p1, v0, v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 836
    add-int/lit8 v1, p2, 0x1

    #@15
    const-string/jumbo v3, "HOR"

    #@18
    const-string/jumbo v4, "HYM"

    #@1b
    const-string/jumbo v5, "HIA"

    #@1e
    const-string/jumbo v6, "HEM"

    #@21
    const/4 v2, 0x3

    #@22
    move-object v0, p1

    #@23
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 838
    :cond_1
    const-string/jumbo v0, "CHORE"

    #@2c
    invoke-static {p1, v7, v8, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 839
    return v7

    #@33
    .line 837
    :cond_2
    return v7

    #@34
    .line 841
    :cond_3
    const/4 v0, 0x1

    #@35
    return v0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 849
    const-string/jumbo v0, "VAN "

    #@5
    const-string/jumbo v1, "VON "

    #@8
    const/4 v2, 0x4

    #@9
    invoke-static {p1, v8, v2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_3

    #@f
    .line 850
    const-string/jumbo v0, "SCH"

    #@12
    const/4 v1, 0x3

    #@13
    .line 849
    invoke-static {p1, v8, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_3

    #@19
    .line 851
    add-int/lit8 v1, p2, -0x2

    #@1b
    const-string/jumbo v3, "ORCHES"

    #@1e
    const-string/jumbo v4, "ARCHIT"

    #@21
    const-string/jumbo v5, "ORCHID"

    #@24
    const/4 v2, 0x6

    #@25
    move-object v0, p1

    #@26
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@29
    move-result v0

    #@2a
    .line 849
    if-nez v0, :cond_3

    #@2c
    .line 852
    add-int/lit8 v0, p2, 0x2

    #@2e
    const-string/jumbo v1, "T"

    #@31
    const-string/jumbo v2, "S"

    #@34
    invoke-static {p1, v0, v7, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@37
    move-result v0

    #@38
    .line 849
    if-nez v0, :cond_3

    #@3a
    .line 853
    add-int/lit8 v1, p2, -0x1

    #@3c
    const-string/jumbo v3, "A"

    #@3f
    const-string/jumbo v4, "O"

    #@42
    const-string/jumbo v5, "U"

    #@45
    const-string/jumbo v6, "E"

    #@48
    move-object v0, p1

    #@49
    move v2, v7

    #@4a
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@4d
    move-result v0

    #@4e
    if-nez v0, :cond_0

    #@50
    if-nez p2, :cond_2

    #@52
    .line 854
    :cond_0
    add-int/lit8 v0, p2, 0x2

    #@54
    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    #@56
    invoke-static {p1, v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@59
    move-result v0

    #@5a
    if-nez v0, :cond_1

    #@5c
    add-int/lit8 v0, p2, 0x1

    #@5e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@61
    move-result v1

    #@62
    add-int/lit8 v1, v1, -0x1

    #@64
    if-ne v0, v1, :cond_4

    #@66
    :cond_1
    move v0, v7

    #@67
    :goto_0
    move v8, v0

    #@68
    .line 849
    :cond_2
    :goto_1
    return v8

    #@69
    :cond_3
    move v8, v7

    #@6a
    goto :goto_1

    #@6b
    :cond_4
    move v0, v8

    #@6c
    .line 854
    goto :goto_0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    const/4 v6, 0x1

    #@2
    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x3

    #@8
    if-ne p2, v0, :cond_0

    #@a
    .line 862
    add-int/lit8 v1, p2, -0x1

    #@c
    const-string/jumbo v3, "ILLO"

    #@f
    const-string/jumbo v4, "ILLA"

    #@12
    const-string/jumbo v5, "ALLE"

    #@15
    move-object v0, p1

    #@16
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    .line 861
    if-eqz v0, :cond_0

    #@1c
    .line 863
    return v6

    #@1d
    .line 864
    :cond_0
    add-int/lit8 v0, p2, -0x1

    #@1f
    const-string/jumbo v1, "AS"

    #@22
    const-string/jumbo v3, "OS"

    #@25
    const/4 v4, 0x2

    #@26
    invoke-static {p1, v0, v4, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 865
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2f
    move-result v0

    #@30
    add-int/lit8 v0, v0, -0x1

    #@32
    const-string/jumbo v1, "A"

    #@35
    const-string/jumbo v3, "O"

    #@38
    invoke-static {p1, v0, v6, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    .line 864
    if-eqz v0, :cond_2

    #@3e
    .line 866
    :cond_1
    add-int/lit8 v0, p2, -0x1

    #@40
    const-string/jumbo v1, "ALLE"

    #@43
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@46
    move-result v0

    #@47
    .line 864
    if-eqz v0, :cond_2

    #@49
    .line 867
    return v6

    #@4a
    .line 869
    :cond_2
    const/4 v0, 0x0

    #@4b
    return v0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 877
    add-int/lit8 v1, p2, 0x1

    #@3
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@6
    move-result v1

    #@7
    const/16 v2, 0x4d

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 878
    return v0

    #@c
    .line 880
    :cond_0
    add-int/lit8 v1, p2, -0x1

    #@e
    const-string/jumbo v2, "UMB"

    #@11
    const/4 v3, 0x3

    #@12
    invoke-static {p1, v1, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 881
    add-int/lit8 v1, p2, 0x1

    #@1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v2

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    if-eq v1, v2, :cond_1

    #@22
    .line 882
    add-int/lit8 v0, p2, 0x2

    #@24
    const-string/jumbo v1, "ER"

    #@27
    const/4 v2, 0x2

    #@28
    .line 881
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 880
    :cond_1
    :goto_0
    return v0

    #@2d
    :cond_2
    const/4 v0, 0x0

    #@2e
    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    #@0
    .prologue
    .line 951
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    .line 950
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 960
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p4, v0, v1

    #@9
    .line 959
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    #@0
    .prologue
    .line 970
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p4, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p5, v0, v1

    #@c
    .line 969
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    #@0
    .prologue
    .line 980
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p4, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p5, v0, v1

    #@c
    .line 981
    const/4 v1, 0x3

    #@d
    aput-object p6, v0, v1

    #@f
    .line 979
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    #@0
    .prologue
    .line 992
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p4, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p5, v0, v1

    #@c
    .line 993
    const/4 v1, 0x3

    #@d
    aput-object p6, v0, v1

    #@f
    const/4 v1, 0x4

    #@10
    aput-object p7, v0, v1

    #@12
    .line 991
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1004
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p3, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p4, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p5, v0, v1

    #@c
    .line 1005
    const/4 v1, 0x3

    #@d
    aput-object p6, v0, v1

    #@f
    const/4 v1, 0x4

    #@10
    aput-object p7, v0, v1

    #@12
    const/4 v1, 0x5

    #@13
    aput-object p8, v0, v1

    #@15
    .line 1003
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1015
    const/4 v1, 0x0

    #@1
    .line 1016
    .local v1, "result":Z
    if-ltz p1, :cond_0

    #@3
    add-int v3, p1, p2

    #@5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-gt v3, v4, :cond_0

    #@b
    .line 1017
    add-int v3, p1, p2

    #@d
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 1019
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v3, p3

    #@13
    if-ge v0, v3, :cond_0

    #@15
    .line 1020
    aget-object v3, p3, v0

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1021
    const/4 v1, 0x1

    #@1e
    .line 1026
    .end local v0    # "i":I
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return v1

    #@1f
    .line 1019
    .restart local v0    # "i":I
    .restart local v2    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0
.end method

.method private handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 276
    if-nez p3, :cond_0

    #@2
    .line 277
    const/16 v0, 0x41

    #@4
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@7
    .line 279
    :cond_0
    add-int/lit8 v0, p3, 0x1

    #@9
    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v8, 0x58

    #@3
    const/16 v7, 0x4b

    #@5
    const/16 v6, 0x53

    #@7
    const/4 v2, 0x2

    #@8
    .line 288
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 289
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@11
    .line 290
    add-int/lit8 p3, p3, 0x2

    #@13
    .line 333
    :goto_0
    return p3

    #@14
    .line 291
    :cond_0
    if-nez p3, :cond_1

    #@16
    const-string/jumbo v0, "CAESAR"

    #@19
    const/4 v1, 0x6

    #@1a
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 292
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@23
    .line 293
    add-int/lit8 p3, p3, 0x2

    #@25
    goto :goto_0

    #@26
    .line 294
    :cond_1
    const-string/jumbo v0, "CH"

    #@29
    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 295
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@32
    move-result p3

    #@33
    goto :goto_0

    #@34
    .line 296
    :cond_2
    const-string/jumbo v0, "CZ"

    #@37
    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3

    #@3d
    .line 297
    add-int/lit8 v0, p3, -0x2

    #@3f
    const-string/jumbo v1, "WICZ"

    #@42
    const/4 v3, 0x4

    #@43
    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_4

    #@49
    .line 301
    :cond_3
    add-int/lit8 v0, p3, 0x1

    #@4b
    const-string/jumbo v1, "CIA"

    #@4e
    const/4 v3, 0x3

    #@4f
    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_5

    #@55
    .line 303
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@58
    .line 304
    add-int/lit8 p3, p3, 0x3

    #@5a
    goto :goto_0

    #@5b
    .line 299
    :cond_4
    invoke-virtual {p2, v6, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@5e
    .line 300
    add-int/lit8 p3, p3, 0x2

    #@60
    .line 297
    goto :goto_0

    #@61
    .line 305
    :cond_5
    const-string/jumbo v0, "CC"

    #@64
    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_7

    #@6a
    .line 306
    const/4 v0, 0x1

    #@6b
    if-ne p3, v0, :cond_6

    #@6d
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@70
    move-result v0

    #@71
    const/16 v1, 0x4d

    #@73
    if-eq v0, v1, :cond_7

    #@75
    .line 308
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@78
    move-result v0

    #@79
    return v0

    #@7a
    .line 309
    :cond_7
    const-string/jumbo v3, "CK"

    #@7d
    const-string/jumbo v4, "CG"

    #@80
    const-string/jumbo v5, "CQ"

    #@83
    move-object v0, p1

    #@84
    move v1, p3

    #@85
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_8

    #@8b
    .line 310
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@8e
    .line 311
    add-int/lit8 p3, p3, 0x2

    #@90
    goto :goto_0

    #@91
    .line 312
    :cond_8
    const-string/jumbo v3, "CI"

    #@94
    const-string/jumbo v4, "CE"

    #@97
    const-string/jumbo v5, "CY"

    #@9a
    move-object v0, p1

    #@9b
    move v1, p3

    #@9c
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@9f
    move-result v0

    #@a0
    if-eqz v0, :cond_a

    #@a2
    .line 314
    const-string/jumbo v3, "CIO"

    #@a5
    const-string/jumbo v4, "CIE"

    #@a8
    const-string/jumbo v5, "CIA"

    #@ab
    const/4 v2, 0x3

    #@ac
    move-object v0, p1

    #@ad
    move v1, p3

    #@ae
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_9

    #@b4
    .line 315
    invoke-virtual {p2, v6, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@b7
    .line 319
    :goto_1
    add-int/lit8 p3, p3, 0x2

    #@b9
    goto/16 :goto_0

    #@bb
    .line 317
    :cond_9
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@be
    goto :goto_1

    #@bf
    .line 321
    :cond_a
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@c2
    .line 322
    add-int/lit8 v1, p3, 0x1

    #@c4
    const-string/jumbo v3, " C"

    #@c7
    const-string/jumbo v4, " Q"

    #@ca
    const-string/jumbo v5, " G"

    #@cd
    move-object v0, p1

    #@ce
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_b

    #@d4
    .line 324
    add-int/lit8 p3, p3, 0x3

    #@d6
    goto/16 :goto_0

    #@d8
    .line 325
    :cond_b
    add-int/lit8 v4, p3, 0x1

    #@da
    const-string/jumbo v6, "C"

    #@dd
    const-string/jumbo v7, "K"

    #@e0
    const-string/jumbo v8, "Q"

    #@e3
    const/4 v5, 0x1

    #@e4
    move-object v3, p1

    #@e5
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@e8
    move-result v0

    #@e9
    if-eqz v0, :cond_c

    #@eb
    .line 326
    add-int/lit8 v0, p3, 0x1

    #@ed
    const-string/jumbo v1, "CE"

    #@f0
    const-string/jumbo v3, "CI"

    #@f3
    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_d

    #@f9
    .line 329
    :cond_c
    add-int/lit8 p3, p3, 0x1

    #@fb
    goto/16 :goto_0

    #@fd
    .line 327
    :cond_d
    add-int/lit8 p3, p3, 0x2

    #@ff
    .line 326
    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 342
    add-int/lit8 v1, p3, 0x2

    #@3
    const-string/jumbo v3, "I"

    #@6
    const-string/jumbo v4, "E"

    #@9
    const-string/jumbo v5, "H"

    #@c
    move-object v0, p1

    #@d
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 343
    add-int/lit8 v0, p3, 0x2

    #@15
    const-string/jumbo v1, "HU"

    #@18
    const/4 v3, 0x2

    #@19
    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 355
    :cond_0
    const/16 v0, 0x4b

    #@21
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@24
    .line 356
    add-int/lit8 p3, p3, 0x2

    #@26
    .line 359
    :goto_0
    return p3

    #@27
    .line 345
    :cond_1
    if-ne p3, v2, :cond_3

    #@29
    add-int/lit8 v0, p3, -0x1

    #@2b
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@2e
    move-result v0

    #@2f
    const/16 v1, 0x41

    #@31
    if-ne v0, v1, :cond_3

    #@33
    .line 348
    :cond_2
    const-string/jumbo v0, "KS"

    #@36
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@39
    .line 353
    :goto_1
    add-int/lit8 p3, p3, 0x3

    #@3b
    .line 343
    goto :goto_0

    #@3c
    .line 346
    :cond_3
    add-int/lit8 v0, p3, -0x1

    #@3e
    const-string/jumbo v1, "UCCEE"

    #@41
    const-string/jumbo v2, "UCCES"

    #@44
    const/4 v3, 0x5

    #@45
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    .line 345
    if-nez v0, :cond_2

    #@4b
    .line 351
    const/16 v0, 0x58

    #@4d
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@50
    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v4, 0x58

    #@2
    const/4 v3, 0x0

    #@3
    const/16 v2, 0x4b

    #@5
    .line 368
    if-lez p3, :cond_0

    #@7
    const-string/jumbo v0, "CHAE"

    #@a
    const/4 v1, 0x4

    #@b
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 369
    invoke-virtual {p2, v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@14
    .line 370
    add-int/lit8 v0, p3, 0x2

    #@16
    return v0

    #@17
    .line 371
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 373
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@20
    .line 374
    add-int/lit8 v0, p3, 0x2

    #@22
    return v0

    #@23
    .line 375
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 377
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@2c
    .line 378
    add-int/lit8 v0, p3, 0x2

    #@2e
    return v0

    #@2f
    .line 380
    :cond_2
    if-lez p3, :cond_4

    #@31
    .line 381
    const-string/jumbo v0, "MC"

    #@34
    const/4 v1, 0x2

    #@35
    invoke-static {p1, v3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_3

    #@3b
    .line 382
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@3e
    .line 389
    :goto_0
    add-int/lit8 v0, p3, 0x2

    #@40
    return v0

    #@41
    .line 384
    :cond_3
    invoke-virtual {p2, v4, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@44
    goto :goto_0

    #@45
    .line 387
    :cond_4
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@48
    goto :goto_0
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v3, 0x54

    #@2
    const/4 v2, 0x2

    #@3
    .line 399
    const-string/jumbo v0, "DG"

    #@6
    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 401
    add-int/lit8 v1, p3, 0x2

    #@e
    const-string/jumbo v3, "I"

    #@11
    const-string/jumbo v4, "E"

    #@14
    const-string/jumbo v5, "Y"

    #@17
    const/4 v2, 0x1

    #@18
    move-object v0, p1

    #@19
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 402
    const/16 v0, 0x4a

    #@21
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@24
    .line 403
    add-int/lit8 p3, p3, 0x3

    #@26
    .line 416
    :goto_0
    return p3

    #@27
    .line 406
    :cond_0
    const-string/jumbo v0, "TK"

    #@2a
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@2d
    .line 407
    add-int/lit8 p3, p3, 0x2

    #@2f
    goto :goto_0

    #@30
    .line 409
    :cond_1
    const-string/jumbo v0, "DT"

    #@33
    const-string/jumbo v1, "DD"

    #@36
    invoke-static {p1, p3, v2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_2

    #@3c
    .line 410
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@3f
    .line 411
    add-int/lit8 p3, p3, 0x2

    #@41
    goto :goto_0

    #@42
    .line 413
    :cond_2
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@45
    .line 414
    add-int/lit8 p3, p3, 0x1

    #@47
    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    #@0
    .prologue
    .line 426
    add-int/lit8 v0, p3, 0x1

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@5
    move-result v0

    #@6
    const/16 v1, 0x48

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 427
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@d
    move-result p3

    #@e
    .line 472
    :goto_0
    return p3

    #@f
    .line 428
    :cond_0
    add-int/lit8 v0, p3, 0x1

    #@11
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@14
    move-result v0

    #@15
    const/16 v1, 0x4e

    #@17
    if-ne v0, v1, :cond_5

    #@19
    .line 429
    const/4 v0, 0x1

    #@1a
    if-ne p3, v0, :cond_1

    #@1c
    const/4 v0, 0x0

    #@1d
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@20
    move-result v0

    #@21
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_1

    #@27
    if-eqz p4, :cond_3

    #@29
    .line 431
    :cond_1
    add-int/lit8 v0, p3, 0x2

    #@2b
    const-string/jumbo v1, "EY"

    #@2e
    const/4 v2, 0x2

    #@2f
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_2

    #@35
    .line 432
    add-int/lit8 v0, p3, 0x1

    #@37
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@3a
    move-result v0

    #@3b
    const/16 v1, 0x59

    #@3d
    if-eq v0, v1, :cond_2

    #@3f
    if-eqz p4, :cond_4

    #@41
    .line 435
    :cond_2
    const-string/jumbo v0, "KN"

    #@44
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@47
    .line 437
    :goto_1
    add-int/lit8 p3, p3, 0x2

    #@49
    goto :goto_0

    #@4a
    .line 430
    :cond_3
    const-string/jumbo v0, "KN"

    #@4d
    const-string/jumbo v1, "N"

    #@50
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    goto :goto_1

    #@54
    .line 433
    :cond_4
    const-string/jumbo v0, "N"

    #@57
    const-string/jumbo v1, "KN"

    #@5a
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    goto :goto_1

    #@5e
    .line 438
    :cond_5
    add-int/lit8 v0, p3, 0x1

    #@60
    const-string/jumbo v1, "LI"

    #@63
    const/4 v2, 0x2

    #@64
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_6

    #@6a
    if-eqz p4, :cond_8

    #@6c
    .line 441
    :cond_6
    if-nez p3, :cond_9

    #@6e
    add-int/lit8 v0, p3, 0x1

    #@70
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@73
    move-result v0

    #@74
    const/16 v1, 0x59

    #@76
    if-eq v0, v1, :cond_7

    #@78
    add-int/lit8 v0, p3, 0x1

    #@7a
    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    #@7c
    const/4 v2, 0x2

    #@7d
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_9

    #@83
    .line 443
    :cond_7
    const/16 v0, 0x4b

    #@85
    const/16 v1, 0x4a

    #@87
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@8a
    .line 444
    add-int/lit8 p3, p3, 0x2

    #@8c
    goto :goto_0

    #@8d
    .line 439
    :cond_8
    const-string/jumbo v0, "KL"

    #@90
    const-string/jumbo v1, "L"

    #@93
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@96
    .line 440
    add-int/lit8 p3, p3, 0x2

    #@98
    .line 438
    goto/16 :goto_0

    #@9a
    .line 445
    :cond_9
    add-int/lit8 v0, p3, 0x1

    #@9c
    const-string/jumbo v1, "ER"

    #@9f
    const/4 v2, 0x2

    #@a0
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_a

    #@a6
    .line 446
    add-int/lit8 v0, p3, 0x1

    #@a8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@ab
    move-result v0

    #@ac
    const/16 v1, 0x59

    #@ae
    if-ne v0, v1, :cond_b

    #@b0
    .line 447
    :cond_a
    const-string/jumbo v3, "DANGER"

    #@b3
    const-string/jumbo v4, "RANGER"

    #@b6
    const-string/jumbo v5, "MANGER"

    #@b9
    const/4 v1, 0x0

    #@ba
    const/4 v2, 0x6

    #@bb
    move-object v0, p1

    #@bc
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_e

    #@c2
    .line 453
    :cond_b
    add-int/lit8 v1, p3, 0x1

    #@c4
    const-string/jumbo v3, "E"

    #@c7
    const-string/jumbo v4, "I"

    #@ca
    const-string/jumbo v5, "Y"

    #@cd
    const/4 v2, 0x1

    #@ce
    move-object v0, p1

    #@cf
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@d2
    move-result v0

    #@d3
    if-nez v0, :cond_c

    #@d5
    .line 454
    add-int/lit8 v0, p3, -0x1

    #@d7
    const-string/jumbo v1, "AGGI"

    #@da
    const-string/jumbo v2, "OGGI"

    #@dd
    const/4 v3, 0x4

    #@de
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@e1
    move-result v0

    #@e2
    .line 453
    if-eqz v0, :cond_11

    #@e4
    .line 456
    :cond_c
    const-string/jumbo v0, "VAN "

    #@e7
    const-string/jumbo v1, "VON "

    #@ea
    const/4 v2, 0x0

    #@eb
    const/4 v3, 0x4

    #@ec
    invoke-static {p1, v2, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@ef
    move-result v0

    #@f0
    if-nez v0, :cond_d

    #@f2
    const-string/jumbo v0, "SCH"

    #@f5
    const/4 v1, 0x0

    #@f6
    const/4 v2, 0x3

    #@f7
    invoke-static {p1, v1, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@fa
    move-result v0

    #@fb
    if-nez v0, :cond_d

    #@fd
    add-int/lit8 v0, p3, 0x1

    #@ff
    const-string/jumbo v1, "ET"

    #@102
    const/4 v2, 0x2

    #@103
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@106
    move-result v0

    #@107
    if-eqz v0, :cond_f

    #@109
    .line 458
    :cond_d
    const/16 v0, 0x4b

    #@10b
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@10e
    .line 464
    :goto_2
    add-int/lit8 p3, p3, 0x2

    #@110
    goto/16 :goto_0

    #@112
    .line 448
    :cond_e
    add-int/lit8 v0, p3, -0x1

    #@114
    const-string/jumbo v1, "E"

    #@117
    const-string/jumbo v2, "I"

    #@11a
    const/4 v3, 0x1

    #@11b
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@11e
    move-result v0

    #@11f
    if-nez v0, :cond_b

    #@121
    .line 449
    add-int/lit8 v0, p3, -0x1

    #@123
    const-string/jumbo v1, "RGY"

    #@126
    const-string/jumbo v2, "OGY"

    #@129
    const/4 v3, 0x3

    #@12a
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@12d
    move-result v0

    #@12e
    if-nez v0, :cond_b

    #@130
    .line 451
    const/16 v0, 0x4b

    #@132
    const/16 v1, 0x4a

    #@134
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@137
    .line 452
    add-int/lit8 p3, p3, 0x2

    #@139
    .line 449
    goto/16 :goto_0

    #@13b
    .line 459
    :cond_f
    add-int/lit8 v0, p3, 0x1

    #@13d
    const-string/jumbo v1, "IER"

    #@140
    const/4 v2, 0x4

    #@141
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@144
    move-result v0

    #@145
    if-eqz v0, :cond_10

    #@147
    .line 460
    const/16 v0, 0x4a

    #@149
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@14c
    goto :goto_2

    #@14d
    .line 462
    :cond_10
    const/16 v0, 0x4a

    #@14f
    const/16 v1, 0x4b

    #@151
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@154
    goto :goto_2

    #@155
    .line 465
    :cond_11
    add-int/lit8 v0, p3, 0x1

    #@157
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@15a
    move-result v0

    #@15b
    const/16 v1, 0x47

    #@15d
    if-ne v0, v1, :cond_12

    #@15f
    .line 466
    add-int/lit8 p3, p3, 0x2

    #@161
    .line 467
    const/16 v0, 0x4b

    #@163
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@166
    goto/16 :goto_0

    #@168
    .line 469
    :cond_12
    add-int/lit8 p3, p3, 0x1

    #@16a
    .line 470
    const/16 v0, 0x4b

    #@16c
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@16f
    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v9, 0x49

    #@2
    const/4 v6, 0x2

    #@3
    const/16 v8, 0x4b

    #@5
    const/4 v2, 0x1

    #@6
    .line 481
    if-lez p3, :cond_0

    #@8
    add-int/lit8 v0, p3, -0x1

    #@a
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@d
    move-result v0

    #@e
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 484
    :cond_0
    if-nez p3, :cond_3

    #@16
    .line 485
    add-int/lit8 v0, p3, 0x2

    #@18
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@1b
    move-result v0

    #@1c
    if-ne v0, v9, :cond_2

    #@1e
    .line 486
    const/16 v0, 0x4a

    #@20
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@23
    .line 490
    :goto_0
    add-int/lit8 p3, p3, 0x2

    #@25
    .line 506
    :goto_1
    return p3

    #@26
    .line 482
    :cond_1
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@29
    .line 483
    add-int/lit8 p3, p3, 0x2

    #@2b
    .line 481
    goto :goto_1

    #@2c
    .line 488
    :cond_2
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@2f
    goto :goto_0

    #@30
    .line 491
    :cond_3
    if-le p3, v2, :cond_4

    #@32
    add-int/lit8 v1, p3, -0x2

    #@34
    const-string/jumbo v3, "B"

    #@37
    const-string/jumbo v4, "H"

    #@3a
    const-string/jumbo v5, "D"

    #@3d
    move-object v0, p1

    #@3e
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_6

    #@44
    .line 492
    :cond_4
    if-le p3, v6, :cond_5

    #@46
    add-int/lit8 v1, p3, -0x3

    #@48
    const-string/jumbo v3, "B"

    #@4b
    const-string/jumbo v4, "H"

    #@4e
    const-string/jumbo v5, "D"

    #@51
    move-object v0, p1

    #@52
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@55
    move-result v0

    #@56
    .line 491
    if-nez v0, :cond_6

    #@58
    .line 493
    :cond_5
    const/4 v0, 0x3

    #@59
    if-le p3, v0, :cond_7

    #@5b
    add-int/lit8 v0, p3, -0x4

    #@5d
    const-string/jumbo v1, "B"

    #@60
    const-string/jumbo v3, "H"

    #@63
    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@66
    move-result v0

    #@67
    .line 491
    if-eqz v0, :cond_7

    #@69
    .line 495
    :cond_6
    add-int/lit8 p3, p3, 0x2

    #@6b
    goto :goto_1

    #@6c
    .line 497
    :cond_7
    if-le p3, v6, :cond_9

    #@6e
    add-int/lit8 v0, p3, -0x1

    #@70
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@73
    move-result v0

    #@74
    const/16 v1, 0x55

    #@76
    if-ne v0, v1, :cond_9

    #@78
    .line 498
    add-int/lit8 v1, p3, -0x3

    #@7a
    const-string/jumbo v3, "C"

    #@7d
    const-string/jumbo v4, "G"

    #@80
    const-string/jumbo v5, "L"

    #@83
    const-string/jumbo v6, "R"

    #@86
    const-string/jumbo v7, "T"

    #@89
    move-object v0, p1

    #@8a
    invoke-static/range {v0 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@8d
    move-result v0

    #@8e
    .line 497
    if-eqz v0, :cond_9

    #@90
    .line 500
    const/16 v0, 0x46

    #@92
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@95
    .line 504
    :cond_8
    :goto_2
    add-int/lit8 p3, p3, 0x2

    #@97
    goto :goto_1

    #@98
    .line 501
    :cond_9
    if-lez p3, :cond_8

    #@9a
    add-int/lit8 v0, p3, -0x1

    #@9c
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@9f
    move-result v0

    #@a0
    if-eq v0, v9, :cond_8

    #@a2
    .line 502
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@a5
    goto :goto_2
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 516
    if-eqz p3, :cond_0

    #@2
    add-int/lit8 v0, p3, -0x1

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 517
    :cond_0
    add-int/lit8 v0, p3, 0x1

    #@10
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@13
    move-result v0

    #@14
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@17
    move-result v0

    #@18
    .line 516
    if-eqz v0, :cond_1

    #@1a
    .line 518
    const/16 v0, 0x48

    #@1c
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@1f
    .line 519
    add-int/lit8 p3, p3, 0x2

    #@21
    .line 524
    :goto_0
    return p3

    #@22
    .line 522
    :cond_1
    add-int/lit8 p3, p3, 0x1

    #@24
    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/16 v5, 0x48

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x4

    #@5
    const/16 v6, 0x4a

    #@7
    .line 532
    const-string/jumbo v0, "JOSE"

    #@a
    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v0, "SAN "

    #@13
    invoke-static {p1, v4, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 534
    :cond_0
    if-nez p3, :cond_2

    #@1b
    add-int/lit8 v0, p3, 0x4

    #@1d
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@20
    move-result v0

    #@21
    const/16 v1, 0x20

    #@23
    if-ne v0, v1, :cond_2

    #@25
    .line 536
    :cond_1
    invoke-virtual {p2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@28
    .line 540
    :goto_0
    add-int/lit8 p3, p3, 0x1

    #@2a
    .line 559
    :goto_1
    return p3

    #@2b
    .line 535
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2e
    move-result v0

    #@2f
    if-eq v0, v3, :cond_1

    #@31
    const-string/jumbo v0, "SAN "

    #@34
    invoke-static {p1, v4, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@37
    move-result v0

    #@38
    .line 534
    if-nez v0, :cond_1

    #@3a
    .line 538
    invoke-virtual {p2, v6, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@3d
    goto :goto_0

    #@3e
    .line 542
    :cond_3
    if-nez p3, :cond_4

    #@40
    const-string/jumbo v0, "JOSE"

    #@43
    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_7

    #@49
    .line 544
    :cond_4
    add-int/lit8 v0, p3, -0x1

    #@4b
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@4e
    move-result v0

    #@4f
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_5

    #@55
    if-eqz p4, :cond_8

    #@57
    .line 547
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5a
    move-result v0

    #@5b
    add-int/lit8 v0, v0, -0x1

    #@5d
    if-ne p3, v0, :cond_a

    #@5f
    .line 548
    const/16 v0, 0x20

    #@61
    invoke-virtual {p2, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@64
    .line 553
    :cond_6
    :goto_2
    add-int/lit8 v0, p3, 0x1

    #@66
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@69
    move-result v0

    #@6a
    if-ne v0, v6, :cond_b

    #@6c
    .line 554
    add-int/lit8 p3, p3, 0x2

    #@6e
    goto :goto_1

    #@6f
    .line 543
    :cond_7
    const/16 v0, 0x41

    #@71
    invoke-virtual {p2, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@74
    goto :goto_2

    #@75
    .line 545
    :cond_8
    add-int/lit8 v0, p3, 0x1

    #@77
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@7a
    move-result v0

    #@7b
    const/16 v1, 0x41

    #@7d
    if-eq v0, v1, :cond_9

    #@7f
    add-int/lit8 v0, p3, 0x1

    #@81
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@84
    move-result v0

    #@85
    const/16 v1, 0x4f

    #@87
    if-ne v0, v1, :cond_5

    #@89
    .line 546
    :cond_9
    invoke-virtual {p2, v6, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@8c
    goto :goto_2

    #@8d
    .line 549
    :cond_a
    add-int/lit8 v0, p3, 0x1

    #@8f
    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    #@91
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    #@94
    move-result v0

    #@95
    if-nez v0, :cond_6

    #@97
    add-int/lit8 v1, p3, -0x1

    #@99
    const-string/jumbo v3, "S"

    #@9c
    const-string/jumbo v4, "K"

    #@9f
    const-string/jumbo v5, "L"

    #@a2
    move-object v0, p1

    #@a3
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@a6
    move-result v0

    #@a7
    if-nez v0, :cond_6

    #@a9
    .line 550
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@ac
    goto :goto_2

    #@ad
    .line 556
    :cond_b
    add-int/lit8 p3, p3, 0x1

    #@af
    goto/16 :goto_1
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v1, 0x4c

    #@2
    .line 568
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@5
    .line 569
    add-int/lit8 v0, p3, 0x1

    #@7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@a
    move-result v0

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 570
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 571
    const/16 v0, 0x20

    #@15
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@18
    .line 573
    :cond_0
    add-int/lit8 p3, p3, 0x2

    #@1a
    .line 577
    :goto_0
    return p3

    #@1b
    .line 575
    :cond_1
    add-int/lit8 p3, p3, 0x1

    #@1d
    goto :goto_0
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 586
    add-int/lit8 v0, p3, 0x1

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@5
    move-result v0

    #@6
    const/16 v1, 0x48

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 587
    const/16 v0, 0x46

    #@c
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@f
    .line 588
    add-int/lit8 p3, p3, 0x2

    #@11
    .line 593
    :goto_0
    return p3

    #@12
    .line 590
    :cond_0
    const/16 v0, 0x50

    #@14
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@17
    .line 591
    add-int/lit8 v0, p3, 0x1

    #@19
    const-string/jumbo v1, "P"

    #@1c
    const-string/jumbo v2, "B"

    #@1f
    const/4 v3, 0x1

    #@20
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    add-int/lit8 p3, p3, 0x2

    #@28
    goto :goto_0

    #@29
    :cond_1
    add-int/lit8 p3, p3, 0x1

    #@2b
    goto :goto_0
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/16 v3, 0x52

    #@3
    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    if-ne p3, v0, :cond_0

    #@b
    if-eqz p4, :cond_1

    #@d
    .line 608
    :cond_0
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@10
    .line 610
    :goto_0
    add-int/lit8 v0, p3, 0x1

    #@12
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@15
    move-result v0

    #@16
    if-ne v0, v3, :cond_2

    #@18
    add-int/lit8 v0, p3, 0x2

    #@1a
    :goto_1
    return v0

    #@1b
    .line 604
    :cond_1
    add-int/lit8 v0, p3, -0x2

    #@1d
    const-string/jumbo v1, "IE"

    #@20
    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@23
    move-result v0

    #@24
    .line 603
    if-eqz v0, :cond_0

    #@26
    .line 605
    add-int/lit8 v0, p3, -0x4

    #@28
    const-string/jumbo v1, "ME"

    #@2b
    const-string/jumbo v2, "MA"

    #@2e
    invoke-static {p1, v0, v4, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_0

    #@34
    .line 606
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@37
    goto :goto_0

    #@38
    .line 610
    :cond_2
    add-int/lit8 v0, p3, 0x1

    #@3a
    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/16 v8, 0x58

    #@3
    const/4 v2, 0x1

    #@4
    const/16 v7, 0x53

    #@6
    .line 620
    add-int/lit8 v0, p3, -0x1

    #@8
    const-string/jumbo v1, "ISL"

    #@b
    const-string/jumbo v3, "YSL"

    #@e
    const/4 v4, 0x3

    #@f
    invoke-static {p1, v0, v4, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 622
    add-int/lit8 p3, p3, 0x1

    #@17
    .line 663
    :goto_0
    return p3

    #@18
    .line 623
    :cond_0
    if-nez p3, :cond_1

    #@1a
    const-string/jumbo v0, "SUGAR"

    #@1d
    const/4 v1, 0x5

    #@1e
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 625
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@27
    .line 626
    add-int/lit8 p3, p3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 627
    :cond_1
    const-string/jumbo v0, "SH"

    #@2d
    invoke-static {p1, p3, v9, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 628
    add-int/lit8 v1, p3, 0x1

    #@35
    .line 629
    const-string/jumbo v3, "HEIM"

    #@38
    const-string/jumbo v4, "HOEK"

    #@3b
    const-string/jumbo v5, "HOLM"

    #@3e
    const-string/jumbo v6, "HOLZ"

    #@41
    .line 628
    const/4 v2, 0x4

    #@42
    move-object v0, p1

    #@43
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_2

    #@49
    .line 631
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@4c
    .line 635
    :goto_1
    add-int/lit8 p3, p3, 0x2

    #@4e
    goto :goto_0

    #@4f
    .line 633
    :cond_2
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@52
    goto :goto_1

    #@53
    .line 636
    :cond_3
    const-string/jumbo v0, "SIO"

    #@56
    const-string/jumbo v1, "SIA"

    #@59
    const/4 v3, 0x3

    #@5a
    invoke-static {p1, p3, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    if-nez v0, :cond_4

    #@60
    const-string/jumbo v0, "SIAN"

    #@63
    const/4 v1, 0x4

    #@64
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_6

    #@6a
    .line 638
    :cond_4
    if-eqz p4, :cond_5

    #@6c
    .line 639
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@6f
    .line 643
    :goto_2
    add-int/lit8 p3, p3, 0x3

    #@71
    goto :goto_0

    #@72
    .line 641
    :cond_5
    invoke-virtual {p2, v7, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@75
    goto :goto_2

    #@76
    .line 644
    :cond_6
    if-nez p3, :cond_7

    #@78
    add-int/lit8 v1, p3, 0x1

    #@7a
    const-string/jumbo v3, "M"

    #@7d
    const-string/jumbo v4, "N"

    #@80
    const-string/jumbo v5, "L"

    #@83
    const-string/jumbo v6, "W"

    #@86
    move-object v0, p1

    #@87
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@8a
    move-result v0

    #@8b
    if-nez v0, :cond_8

    #@8d
    :cond_7
    add-int/lit8 v0, p3, 0x1

    #@8f
    const-string/jumbo v1, "Z"

    #@92
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_a

    #@98
    .line 649
    :cond_8
    invoke-virtual {p2, v7, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@9b
    .line 650
    add-int/lit8 v0, p3, 0x1

    #@9d
    const-string/jumbo v1, "Z"

    #@a0
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@a3
    move-result v0

    #@a4
    if-eqz v0, :cond_9

    #@a6
    add-int/lit8 p3, p3, 0x2

    #@a8
    goto/16 :goto_0

    #@aa
    :cond_9
    add-int/lit8 p3, p3, 0x1

    #@ac
    goto/16 :goto_0

    #@ae
    .line 651
    :cond_a
    const-string/jumbo v0, "SC"

    #@b1
    invoke-static {p1, p3, v9, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@b4
    move-result v0

    #@b5
    if-eqz v0, :cond_b

    #@b7
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@ba
    move-result p3

    #@bb
    goto/16 :goto_0

    #@bd
    .line 654
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c0
    move-result v0

    #@c1
    add-int/lit8 v0, v0, -0x1

    #@c3
    if-ne p3, v0, :cond_c

    #@c5
    add-int/lit8 v0, p3, -0x2

    #@c7
    .line 655
    const-string/jumbo v1, "AI"

    #@ca
    const-string/jumbo v3, "OI"

    #@cd
    .line 654
    invoke-static {p1, v0, v9, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@d0
    move-result v0

    #@d1
    if-eqz v0, :cond_c

    #@d3
    .line 657
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@d6
    .line 661
    :goto_3
    add-int/lit8 v0, p3, 0x1

    #@d8
    const-string/jumbo v1, "S"

    #@db
    const-string/jumbo v3, "Z"

    #@de
    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@e1
    move-result v0

    #@e2
    if-eqz v0, :cond_d

    #@e4
    add-int/lit8 p3, p3, 0x2

    #@e6
    goto/16 :goto_0

    #@e8
    .line 659
    :cond_c
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@eb
    goto :goto_3

    #@ec
    .line 661
    :cond_d
    add-int/lit8 p3, p3, 0x1

    #@ee
    goto/16 :goto_0
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v11, 0x58

    #@2
    const/16 v10, 0x53

    #@4
    const/4 v9, 0x3

    #@5
    const/4 v2, 0x2

    #@6
    .line 672
    add-int/lit8 v0, p3, 0x2

    #@8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@b
    move-result v0

    #@c
    const/16 v1, 0x48

    #@e
    if-ne v0, v1, :cond_4

    #@10
    .line 674
    add-int/lit8 v1, p3, 0x3

    #@12
    .line 675
    const-string/jumbo v3, "OO"

    #@15
    const-string/jumbo v4, "ER"

    #@18
    const-string/jumbo v5, "EN"

    #@1b
    const-string/jumbo v6, "UY"

    #@1e
    const-string/jumbo v7, "ED"

    #@21
    const-string/jumbo v8, "EM"

    #@24
    move-object v0, p1

    #@25
    .line 674
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 677
    add-int/lit8 v0, p3, 0x3

    #@2d
    const-string/jumbo v1, "ER"

    #@30
    const-string/jumbo v3, "EN"

    #@33
    invoke-static {p1, v0, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 679
    const-string/jumbo v0, "X"

    #@3c
    const-string/jumbo v1, "SK"

    #@3f
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@42
    .line 695
    :goto_0
    add-int/lit8 v0, p3, 0x3

    #@44
    return v0

    #@45
    .line 681
    :cond_0
    const-string/jumbo v0, "SK"

    #@48
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@4b
    goto :goto_0

    #@4c
    .line 684
    :cond_1
    if-nez p3, :cond_2

    #@4e
    invoke-virtual {p0, p1, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@51
    move-result v0

    #@52
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@55
    move-result v0

    #@56
    if-eqz v0, :cond_3

    #@58
    .line 687
    :cond_2
    invoke-virtual {p2, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@5b
    goto :goto_0

    #@5c
    .line 684
    :cond_3
    invoke-virtual {p0, p1, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@5f
    move-result v0

    #@60
    const/16 v1, 0x57

    #@62
    if-eq v0, v1, :cond_2

    #@64
    .line 685
    invoke-virtual {p2, v11, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@67
    goto :goto_0

    #@68
    .line 690
    :cond_4
    add-int/lit8 v1, p3, 0x2

    #@6a
    const-string/jumbo v3, "I"

    #@6d
    const-string/jumbo v4, "E"

    #@70
    const-string/jumbo v5, "Y"

    #@73
    const/4 v2, 0x1

    #@74
    move-object v0, p1

    #@75
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@78
    move-result v0

    #@79
    if-eqz v0, :cond_5

    #@7b
    .line 691
    invoke-virtual {p2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@7e
    goto :goto_0

    #@7f
    .line 693
    :cond_5
    const-string/jumbo v0, "SK"

    #@82
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@85
    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, 0x54

    #@5
    const/4 v3, 0x3

    #@6
    .line 704
    const-string/jumbo v0, "TION"

    #@9
    invoke-static {p1, p3, v7, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 705
    const/16 v0, 0x58

    #@11
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@14
    .line 706
    add-int/lit8 p3, p3, 0x3

    #@16
    .line 725
    :goto_0
    return p3

    #@17
    .line 707
    :cond_0
    const-string/jumbo v0, "TIA"

    #@1a
    const-string/jumbo v1, "TCH"

    #@1d
    invoke-static {p1, p3, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 708
    const/16 v0, 0x58

    #@25
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@28
    .line 709
    add-int/lit8 p3, p3, 0x3

    #@2a
    goto :goto_0

    #@2b
    .line 710
    :cond_1
    const-string/jumbo v0, "TH"

    #@2e
    invoke-static {p1, p3, v6, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_2

    #@34
    .line 711
    const-string/jumbo v0, "TTH"

    #@37
    .line 710
    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_5

    #@3d
    .line 712
    :cond_2
    add-int/lit8 v0, p3, 0x2

    #@3f
    const-string/jumbo v1, "OM"

    #@42
    const-string/jumbo v2, "AM"

    #@45
    invoke-static {p1, v0, v6, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_3

    #@4b
    .line 714
    const-string/jumbo v0, "VAN "

    #@4e
    const-string/jumbo v1, "VON "

    #@51
    invoke-static {p1, v5, v7, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@54
    move-result v0

    #@55
    .line 712
    if-nez v0, :cond_3

    #@57
    .line 715
    const-string/jumbo v0, "SCH"

    #@5a
    invoke-static {p1, v5, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@5d
    move-result v0

    #@5e
    .line 712
    if-eqz v0, :cond_4

    #@60
    .line 716
    :cond_3
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@63
    .line 720
    :goto_1
    add-int/lit8 p3, p3, 0x2

    #@65
    goto :goto_0

    #@66
    .line 718
    :cond_4
    const/16 v0, 0x30

    #@68
    invoke-virtual {p2, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@6b
    goto :goto_1

    #@6c
    .line 722
    :cond_5
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@6f
    .line 723
    add-int/lit8 v0, p3, 0x1

    #@71
    const-string/jumbo v1, "T"

    #@74
    const-string/jumbo v2, "D"

    #@77
    const/4 v3, 0x1

    #@78
    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@7b
    move-result v0

    #@7c
    if-eqz v0, :cond_6

    #@7e
    add-int/lit8 p3, p3, 0x2

    #@80
    goto :goto_0

    #@81
    :cond_6
    add-int/lit8 p3, p3, 0x1

    #@83
    goto :goto_0
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/16 v8, 0x46

    #@2
    const/16 v2, 0x41

    #@4
    const/4 v1, 0x2

    #@5
    const/4 v7, 0x0

    #@6
    .line 734
    const-string/jumbo v0, "WR"

    #@9
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 736
    const/16 v0, 0x52

    #@11
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@14
    .line 737
    add-int/lit8 p3, p3, 0x2

    #@16
    .line 764
    :goto_0
    return p3

    #@17
    .line 739
    :cond_0
    if-nez p3, :cond_3

    #@19
    add-int/lit8 v0, p3, 0x1

    #@1b
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@1e
    move-result v0

    #@1f
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 740
    const-string/jumbo v0, "WH"

    #@28
    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@2b
    move-result v0

    #@2c
    .line 739
    if-eqz v0, :cond_3

    #@2e
    .line 741
    :cond_1
    add-int/lit8 v0, p3, 0x1

    #@30
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@33
    move-result v0

    #@34
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 743
    invoke-virtual {p2, v2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    #@3d
    .line 748
    :goto_1
    add-int/lit8 p3, p3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 746
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@43
    goto :goto_1

    #@44
    .line 749
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@47
    move-result v0

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    if-ne p3, v0, :cond_4

    #@4c
    add-int/lit8 v0, p3, -0x1

    #@4e
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@51
    move-result v0

    #@52
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    #@55
    move-result v0

    #@56
    if-nez v0, :cond_5

    #@58
    .line 750
    :cond_4
    add-int/lit8 v1, p3, -0x1

    #@5a
    .line 751
    const-string/jumbo v3, "EWSKI"

    #@5d
    const-string/jumbo v4, "EWSKY"

    #@60
    const-string/jumbo v5, "OWSKI"

    #@63
    const-string/jumbo v6, "OWSKY"

    #@66
    const/4 v2, 0x5

    #@67
    move-object v0, p1

    #@68
    .line 750
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@6b
    move-result v0

    #@6c
    .line 749
    if-nez v0, :cond_5

    #@6e
    .line 752
    const-string/jumbo v0, "SCH"

    #@71
    const/4 v1, 0x3

    #@72
    invoke-static {p1, v7, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    #@75
    move-result v0

    #@76
    .line 749
    if-eqz v0, :cond_6

    #@78
    .line 754
    :cond_5
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@7b
    .line 755
    add-int/lit8 p3, p3, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 756
    :cond_6
    const-string/jumbo v0, "WICZ"

    #@81
    const-string/jumbo v1, "WITZ"

    #@84
    const/4 v2, 0x4

    #@85
    invoke-static {p1, p3, v2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_7

    #@8b
    .line 758
    const-string/jumbo v0, "TS"

    #@8e
    const-string/jumbo v1, "FX"

    #@91
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    .line 759
    add-int/lit8 p3, p3, 0x4

    #@96
    goto :goto_0

    #@97
    .line 761
    :cond_7
    add-int/lit8 p3, p3, 0x1

    #@99
    goto/16 :goto_0
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 773
    if-nez p3, :cond_0

    #@4
    .line 774
    const/16 v0, 0x53

    #@6
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@9
    .line 775
    add-int/lit8 p3, p3, 0x1

    #@b
    .line 785
    :goto_0
    return p3

    #@c
    .line 777
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    if-ne p3, v2, :cond_1

    #@14
    .line 778
    add-int/lit8 v0, p3, -0x3

    #@16
    const-string/jumbo v2, "IAU"

    #@19
    const-string/jumbo v3, "EAU"

    #@1c
    const/4 v4, 0x3

    #@1d
    invoke-static {p1, v0, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_3

    #@23
    .line 779
    add-int/lit8 v0, p3, -0x2

    #@25
    const-string/jumbo v2, "AU"

    #@28
    const-string/jumbo v3, "OU"

    #@2b
    const/4 v4, 0x2

    #@2c
    invoke-static {p1, v0, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    .line 777
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    #@32
    .line 781
    const-string/jumbo v0, "KS"

    #@35
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    #@38
    .line 783
    :cond_2
    add-int/lit8 v0, p3, 0x1

    #@3a
    const-string/jumbo v2, "C"

    #@3d
    const-string/jumbo v3, "X"

    #@40
    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4

    #@46
    add-int/lit8 p3, p3, 0x2

    #@48
    goto :goto_0

    #@49
    :cond_3
    move v0, v1

    #@4a
    .line 778
    goto :goto_1

    #@4b
    .line 783
    :cond_4
    add-int/lit8 p3, p3, 0x1

    #@4d
    goto :goto_0
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    #@0
    .prologue
    .line 793
    add-int/lit8 v0, p3, 0x1

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@5
    move-result v0

    #@6
    const/16 v1, 0x48

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 795
    const/16 v0, 0x4a

    #@c
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@f
    .line 796
    add-int/lit8 p3, p3, 0x2

    #@11
    .line 805
    :goto_0
    return p3

    #@12
    .line 798
    :cond_0
    add-int/lit8 v1, p3, 0x1

    #@14
    const-string/jumbo v3, "ZO"

    #@17
    const-string/jumbo v4, "ZI"

    #@1a
    const-string/jumbo v5, "ZA"

    #@1d
    const/4 v2, 0x2

    #@1e
    move-object v0, p1

    #@1f
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    if-eqz p4, :cond_2

    #@27
    if-lez p3, :cond_2

    #@29
    add-int/lit8 v0, p3, -0x1

    #@2b
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@2e
    move-result v0

    #@2f
    const/16 v1, 0x54

    #@31
    if-eq v0, v1, :cond_2

    #@33
    .line 799
    :cond_1
    const-string/jumbo v0, "S"

    #@36
    const-string/jumbo v1, "TS"

    #@39
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 803
    :goto_1
    add-int/lit8 v0, p3, 0x1

    #@3e
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@41
    move-result v0

    #@42
    const/16 v1, 0x5a

    #@44
    if-ne v0, v1, :cond_3

    #@46
    add-int/lit8 p3, p3, 0x2

    #@48
    goto :goto_0

    #@49
    .line 801
    :cond_2
    const/16 v0, 0x53

    #@4b
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@4e
    goto :goto_1

    #@4f
    .line 803
    :cond_3
    add-int/lit8 p3, p3, 0x1

    #@51
    goto :goto_0
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 909
    const/4 v1, 0x0

    #@1
    .line 910
    .local v1, "result":Z
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 911
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 912
    const/4 v1, 0x1

    #@12
    .line 916
    :cond_0
    return v1

    #@13
    .line 910
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 892
    const/16 v1, 0x57

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v1

    #@8
    if-gt v1, v2, :cond_0

    #@a
    const/16 v1, 0x4b

    #@c
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v1

    #@10
    if-le v1, v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    .line 893
    :cond_1
    const-string/jumbo v1, "CZ"

    #@16
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    if-gt v1, v2, :cond_0

    #@1c
    const-string/jumbo v1, "WITZ"

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    if-gt v1, v2, :cond_0

    #@25
    const/4 v0, 0x0

    #@26
    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 900
    const-string/jumbo v0, "AEIOUY"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 939
    if-ltz p2, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-lt p2, v0, :cond_1

    #@9
    .line 940
    :cond_0
    return v1

    #@a
    .line 942
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/16 v7, 0x4e

    #@3
    const/16 v6, 0x4b

    #@5
    const/16 v5, 0x46

    #@7
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    .line 92
    if-nez p1, :cond_0

    #@d
    .line 93
    return-object v3

    #@e
    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    #@11
    move-result v2

    #@12
    .line 97
    .local v2, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    .line 99
    .local v0, "index":I
    :goto_0
    new-instance v1, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    #@1b
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    #@1e
    move-result v3

    #@1f
    invoke-direct {v1, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    #@22
    .line 101
    .local v1, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_1
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_9

    #@28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v3

    #@2c
    add-int/lit8 v3, v3, -0x1

    #@2e
    if-gt v0, v3, :cond_9

    #@30
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v3

    #@34
    sparse-switch v3, :sswitch_data_0

    #@37
    .line 189
    add-int/lit8 v0, v0, 0x1

    #@39
    .line 190
    goto :goto_1

    #@3a
    .line 97
    .end local v0    # "index":I
    .end local v1    # "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :cond_1
    const/4 v0, 0x0

    #@3b
    .restart local v0    # "index":I
    goto :goto_0

    #@3c
    .line 109
    .restart local v1    # "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :sswitch_0
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@3f
    move-result v0

    #@40
    goto :goto_1

    #@41
    .line 112
    :sswitch_1
    const/16 v3, 0x50

    #@43
    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@46
    .line 113
    add-int/lit8 v3, v0, 0x1

    #@48
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@4b
    move-result v3

    #@4c
    const/16 v4, 0x42

    #@4e
    if-ne v3, v4, :cond_2

    #@50
    add-int/lit8 v0, v0, 0x2

    #@52
    goto :goto_1

    #@53
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_1

    #@56
    .line 117
    :sswitch_2
    const/16 v3, 0x53

    #@58
    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@5b
    .line 118
    add-int/lit8 v0, v0, 0x1

    #@5d
    .line 119
    goto :goto_1

    #@5e
    .line 121
    :sswitch_3
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@61
    move-result v0

    #@62
    goto :goto_1

    #@63
    .line 124
    :sswitch_4
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@66
    move-result v0

    #@67
    goto :goto_1

    #@68
    .line 127
    :sswitch_5
    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@6b
    .line 128
    add-int/lit8 v3, v0, 0x1

    #@6d
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@70
    move-result v3

    #@71
    if-ne v3, v5, :cond_3

    #@73
    add-int/lit8 v0, v0, 0x2

    #@75
    goto :goto_1

    #@76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@78
    goto :goto_1

    #@79
    .line 131
    :sswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    #@7c
    move-result v0

    #@7d
    goto :goto_1

    #@7e
    .line 134
    :sswitch_7
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@81
    move-result v0

    #@82
    goto :goto_1

    #@83
    .line 137
    :sswitch_8
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    #@86
    move-result v0

    #@87
    goto :goto_1

    #@88
    .line 140
    :sswitch_9
    invoke-virtual {v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@8b
    .line 141
    add-int/lit8 v3, v0, 0x1

    #@8d
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@90
    move-result v3

    #@91
    if-ne v3, v6, :cond_4

    #@93
    add-int/lit8 v0, v0, 0x2

    #@95
    goto :goto_1

    #@96
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@98
    goto :goto_1

    #@99
    .line 144
    :sswitch_a
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@9c
    move-result v0

    #@9d
    goto :goto_1

    #@9e
    .line 147
    :sswitch_b
    const/16 v3, 0x4d

    #@a0
    invoke-virtual {v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@a3
    .line 148
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_5

    #@a9
    add-int/lit8 v0, v0, 0x2

    #@ab
    goto/16 :goto_1

    #@ad
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@af
    goto/16 :goto_1

    #@b1
    .line 151
    :sswitch_c
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@b4
    .line 152
    add-int/lit8 v3, v0, 0x1

    #@b6
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@b9
    move-result v3

    #@ba
    if-ne v3, v7, :cond_6

    #@bc
    add-int/lit8 v0, v0, 0x2

    #@be
    goto/16 :goto_1

    #@c0
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@c2
    goto/16 :goto_1

    #@c4
    .line 156
    :sswitch_d
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@c7
    .line 157
    add-int/lit8 v0, v0, 0x1

    #@c9
    .line 158
    goto/16 :goto_1

    #@cb
    .line 160
    :sswitch_e
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@ce
    move-result v0

    #@cf
    goto/16 :goto_1

    #@d1
    .line 163
    :sswitch_f
    invoke-virtual {v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@d4
    .line 164
    add-int/lit8 v3, v0, 0x1

    #@d6
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@d9
    move-result v3

    #@da
    const/16 v4, 0x51

    #@dc
    if-ne v3, v4, :cond_7

    #@de
    add-int/lit8 v0, v0, 0x2

    #@e0
    goto/16 :goto_1

    #@e2
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@e4
    goto/16 :goto_1

    #@e6
    .line 167
    :sswitch_10
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    #@e9
    move-result v0

    #@ea
    goto/16 :goto_1

    #@ec
    .line 170
    :sswitch_11
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    #@ef
    move-result v0

    #@f0
    goto/16 :goto_1

    #@f2
    .line 173
    :sswitch_12
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@f5
    move-result v0

    #@f6
    goto/16 :goto_1

    #@f8
    .line 176
    :sswitch_13
    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    #@fb
    .line 177
    add-int/lit8 v3, v0, 0x1

    #@fd
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    #@100
    move-result v3

    #@101
    const/16 v4, 0x56

    #@103
    if-ne v3, v4, :cond_8

    #@105
    add-int/lit8 v0, v0, 0x2

    #@107
    goto/16 :goto_1

    #@109
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@10b
    goto/16 :goto_1

    #@10d
    .line 180
    :sswitch_14
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@110
    move-result v0

    #@111
    goto/16 :goto_1

    #@113
    .line 183
    :sswitch_15
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    #@116
    move-result v0

    #@117
    goto/16 :goto_1

    #@119
    .line 186
    :sswitch_16
    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    #@11c
    move-result v0

    #@11d
    goto/16 :goto_1

    #@11f
    .line 194
    :cond_9
    if-eqz p2, :cond_a

    #@121
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    #@124
    move-result-object v3

    #@125
    :goto_2
    return-object v3

    #@126
    :cond_a
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    goto :goto_2

    #@12b
    .line 102
    nop

    #@12c
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 207
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    const-string/jumbo v1, "DoubleMetaphone encode parameter is not of type String"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 209
    :cond_0
    check-cast p1, Ljava/lang/String;

    #@f
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    #@2
    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    #@0
    .prologue
    .line 266
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    #@2
    .line 265
    return-void
.end method
