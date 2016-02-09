.class public Lorg/apache/xml/serializer/ToHTMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie;
    }
.end annotation


# static fields
.field private static final m_dummy:Lorg/apache/xml/serializer/ElemDesc;

.field static final m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# instance fields
.field private m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

.field private final m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

.field private m_inBlockElem:Z

.field protected m_inDTD:Z

.field private m_omitMetaTag:Z

.field private m_specialEscapeURLs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@7
    .line 65
    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@9
    invoke-static {v0}, Lorg/apache/xml/serializer/ToHTMLStream;->initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    #@c
    .line 522
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    #@e
    const/16 v1, 0x8

    #@10
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@13
    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    #@15
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 662
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    #@5
    .line 47
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    #@7
    .line 51
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@9
    .line 59
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    #@b
    const-string/jumbo v1, "html"

    #@e
    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    #@11
    move-result-object v0

    #@12
    .line 57
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@14
    .line 525
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@16
    .line 528
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@18
    .line 643
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@1a
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@1c
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    #@1f
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@21
    .line 666
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@23
    .line 667
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@25
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@27
    .line 669
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    #@29
    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    #@2c
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2e
    .line 659
    return-void
.end method

.method public static final getElemDesc(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 631
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@2
    invoke-virtual {v1, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 632
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@8
    .line 633
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@a
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    #@b
    .line 634
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    #@d
    return-object v1
.end method

.method private getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 650
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@2
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get2(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 651
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@8
    .line 652
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@a
    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0

    #@b
    .line 653
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    #@d
    return-object v1
.end method

.method private final getOmitMetaTag()Z
    .locals 1

    #@0
    .prologue
    .line 615
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@2
    return v0
.end method

.method private final getSpecialEscapeURLs()Z
    .locals 1

    #@0
    .prologue
    .line 605
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@2
    return v0
.end method

.method static initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 9
    .param p0, "m_elementFlags"    # Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@0
    .prologue
    const/16 v8, 0x1000

    #@2
    const/16 v7, 0x38

    #@4
    const/16 v6, 0x8

    #@6
    const/4 v5, 0x4

    #@7
    const/4 v4, 0x2

    #@8
    .line 70
    const-string/jumbo v1, "BASEFONT"

    #@b
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@d
    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@10
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 72
    const-string/jumbo v1, "FRAME"

    #@16
    .line 73
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@18
    const/16 v3, 0xa

    #@1a
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1d
    .line 71
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 74
    const-string/jumbo v1, "FRAMESET"

    #@23
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@25
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@28
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 75
    const-string/jumbo v1, "NOFRAMES"

    #@2e
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@30
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@33
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 77
    const-string/jumbo v1, "ISINDEX"

    #@39
    .line 78
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3b
    const/16 v3, 0xa

    #@3d
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@40
    .line 76
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 80
    const-string/jumbo v1, "APPLET"

    #@46
    .line 81
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@48
    const/high16 v3, 0x200000

    #@4a
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@4d
    .line 79
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 82
    const-string/jumbo v1, "CENTER"

    #@53
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@55
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@58
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 83
    const-string/jumbo v1, "DIR"

    #@5e
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@60
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@63
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    .line 84
    const-string/jumbo v1, "MENU"

    #@69
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@6b
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@6e
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 87
    const-string/jumbo v1, "TT"

    #@74
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@76
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@79
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    .line 88
    const-string/jumbo v1, "I"

    #@7f
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@81
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@84
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 89
    const-string/jumbo v1, "B"

    #@8a
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@8c
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@8f
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 90
    const-string/jumbo v1, "BIG"

    #@95
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@97
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@9a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    .line 91
    const-string/jumbo v1, "SMALL"

    #@a0
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@a2
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@a5
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 92
    const-string/jumbo v1, "EM"

    #@ab
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@ad
    const/16 v3, 0x2000

    #@af
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@b2
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 93
    const-string/jumbo v1, "STRONG"

    #@b8
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@ba
    const/16 v3, 0x2000

    #@bc
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@bf
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    .line 94
    const-string/jumbo v1, "DFN"

    #@c5
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@c7
    const/16 v3, 0x2000

    #@c9
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@cc
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    .line 95
    const-string/jumbo v1, "CODE"

    #@d2
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@d4
    const/16 v3, 0x2000

    #@d6
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@d9
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@dc
    .line 96
    const-string/jumbo v1, "SAMP"

    #@df
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@e1
    const/16 v3, 0x2000

    #@e3
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@e6
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    .line 97
    const-string/jumbo v1, "KBD"

    #@ec
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@ee
    const/16 v3, 0x2000

    #@f0
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@f3
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    .line 98
    const-string/jumbo v1, "VAR"

    #@f9
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@fb
    const/16 v3, 0x2000

    #@fd
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@100
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    .line 99
    const-string/jumbo v1, "CITE"

    #@106
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@108
    const/16 v3, 0x2000

    #@10a
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@10d
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 100
    const-string/jumbo v1, "ABBR"

    #@113
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@115
    const/16 v3, 0x2000

    #@117
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@11a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@11d
    .line 101
    const-string/jumbo v1, "ACRONYM"

    #@120
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@122
    const/16 v3, 0x2000

    #@124
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@127
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    .line 103
    const-string/jumbo v1, "SUP"

    #@12d
    .line 104
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@12f
    const v3, 0x18000

    #@132
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@135
    .line 102
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 106
    const-string/jumbo v1, "SUB"

    #@13b
    .line 107
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@13d
    const v3, 0x18000

    #@140
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@143
    .line 105
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    .line 109
    const-string/jumbo v1, "SPAN"

    #@149
    .line 110
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@14b
    const v3, 0x18000

    #@14e
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@151
    .line 108
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    .line 112
    const-string/jumbo v1, "BDO"

    #@157
    .line 113
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@159
    const v3, 0x18000

    #@15c
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@15f
    .line 111
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@162
    .line 115
    const-string/jumbo v1, "BR"

    #@165
    .line 116
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@167
    .line 117
    const v3, 0x1800a

    #@16a
    .line 116
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@16d
    .line 114
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@170
    .line 122
    const-string/jumbo v1, "BODY"

    #@173
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@175
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@178
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@17b
    .line 124
    const-string/jumbo v1, "ADDRESS"

    #@17e
    .line 125
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@180
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@183
    .line 123
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    .line 131
    const-string/jumbo v1, "DIV"

    #@189
    .line 132
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@18b
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@18e
    .line 130
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@191
    .line 137
    const-string/jumbo v1, "A"

    #@194
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@196
    const v3, 0x8000

    #@199
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@19c
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@19f
    .line 139
    const-string/jumbo v1, "MAP"

    #@1a2
    .line 140
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1a4
    .line 141
    const v3, 0x18008

    #@1a7
    .line 140
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1aa
    .line 138
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    .line 143
    const-string/jumbo v1, "AREA"

    #@1b0
    .line 144
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1b2
    const/16 v3, 0xa

    #@1b4
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1b7
    .line 142
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ba
    .line 146
    const-string/jumbo v1, "LINK"

    #@1bd
    .line 147
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1bf
    .line 148
    const v3, 0x2000a

    #@1c2
    .line 147
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1c5
    .line 145
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c8
    .line 150
    const-string/jumbo v1, "IMG"

    #@1cb
    .line 151
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1cd
    .line 152
    const v3, 0x218002

    #@1d0
    .line 151
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1d3
    .line 149
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d6
    .line 158
    const-string/jumbo v1, "OBJECT"

    #@1d9
    .line 159
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1db
    .line 160
    const v3, 0x238000

    #@1de
    .line 159
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1e1
    .line 157
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    .line 165
    const-string/jumbo v1, "PARAM"

    #@1e7
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1e9
    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1ec
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ef
    .line 167
    const-string/jumbo v1, "HR"

    #@1f2
    .line 168
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@1f4
    .line 169
    const/16 v3, 0x3a

    #@1f6
    .line 168
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@1f9
    .line 166
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fc
    .line 175
    const-string/jumbo v1, "P"

    #@1ff
    .line 176
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@201
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@204
    .line 174
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@207
    .line 182
    const-string/jumbo v1, "H1"

    #@20a
    .line 183
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@20c
    const v3, 0x40008

    #@20f
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@212
    .line 181
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@215
    .line 185
    const-string/jumbo v1, "H2"

    #@218
    .line 186
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@21a
    const v3, 0x40008

    #@21d
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@220
    .line 184
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@223
    .line 188
    const-string/jumbo v1, "H3"

    #@226
    .line 189
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@228
    const v3, 0x40008

    #@22b
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@22e
    .line 187
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@231
    .line 191
    const-string/jumbo v1, "H4"

    #@234
    .line 192
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@236
    const v3, 0x40008

    #@239
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@23c
    .line 190
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@23f
    .line 194
    const-string/jumbo v1, "H5"

    #@242
    .line 195
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@244
    const v3, 0x40008

    #@247
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@24a
    .line 193
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@24d
    .line 197
    const-string/jumbo v1, "H6"

    #@250
    .line 198
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@252
    const v3, 0x40008

    #@255
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@258
    .line 196
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@25b
    .line 200
    const-string/jumbo v1, "PRE"

    #@25e
    .line 201
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@260
    const v3, 0x100008

    #@263
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@266
    .line 199
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@269
    .line 203
    const-string/jumbo v1, "Q"

    #@26c
    .line 204
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@26e
    const v3, 0x18000

    #@271
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@274
    .line 202
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@277
    .line 206
    const-string/jumbo v1, "BLOCKQUOTE"

    #@27a
    .line 207
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@27c
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@27f
    .line 205
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@282
    .line 212
    const-string/jumbo v1, "INS"

    #@285
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@287
    const/4 v3, 0x0

    #@288
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@28b
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@28e
    .line 213
    const-string/jumbo v1, "DEL"

    #@291
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@293
    const/4 v3, 0x0

    #@294
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@297
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@29a
    .line 215
    const-string/jumbo v1, "DL"

    #@29d
    .line 216
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@29f
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2a2
    .line 214
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a5
    .line 221
    const-string/jumbo v1, "DT"

    #@2a8
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2aa
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2ad
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b0
    .line 222
    const-string/jumbo v1, "DD"

    #@2b3
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2b5
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2b8
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2bb
    .line 224
    const-string/jumbo v1, "OL"

    #@2be
    .line 225
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2c0
    const v3, 0x80008

    #@2c3
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2c6
    .line 223
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c9
    .line 227
    const-string/jumbo v1, "UL"

    #@2cc
    .line 228
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2ce
    const v3, 0x80008

    #@2d1
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2d4
    .line 226
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d7
    .line 229
    const-string/jumbo v1, "LI"

    #@2da
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2dc
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2df
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e2
    .line 230
    const-string/jumbo v1, "FORM"

    #@2e5
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2e7
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2ea
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ed
    .line 231
    const-string/jumbo v1, "LABEL"

    #@2f0
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2f2
    const/16 v3, 0x4000

    #@2f4
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@2f7
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2fa
    .line 233
    const-string/jumbo v1, "INPUT"

    #@2fd
    .line 234
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@2ff
    .line 235
    const/16 v3, 0x4802

    #@301
    .line 234
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@304
    .line 232
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@307
    .line 237
    const-string/jumbo v1, "SELECT"

    #@30a
    .line 238
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@30c
    const/16 v3, 0x4800

    #@30e
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@311
    .line 236
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@314
    .line 239
    const-string/jumbo v1, "OPTGROUP"

    #@317
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@319
    const/4 v3, 0x0

    #@31a
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@31d
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@320
    .line 240
    const-string/jumbo v1, "OPTION"

    #@323
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@325
    const/4 v3, 0x0

    #@326
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@329
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@32c
    .line 242
    const-string/jumbo v1, "TEXTAREA"

    #@32f
    .line 243
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@331
    const/16 v3, 0x4800

    #@333
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@336
    .line 241
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@339
    .line 245
    const-string/jumbo v1, "FIELDSET"

    #@33c
    .line 246
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@33e
    const/16 v3, 0x18

    #@340
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@343
    .line 244
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@346
    .line 247
    const-string/jumbo v1, "LEGEND"

    #@349
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@34b
    const/4 v3, 0x0

    #@34c
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@34f
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@352
    .line 249
    const-string/jumbo v1, "BUTTON"

    #@355
    .line 250
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@357
    const/16 v3, 0x4800

    #@359
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@35c
    .line 248
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@35f
    .line 252
    const-string/jumbo v1, "TABLE"

    #@362
    .line 253
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@364
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@367
    .line 251
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@36a
    .line 258
    const-string/jumbo v1, "CAPTION"

    #@36d
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@36f
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@372
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@375
    .line 259
    const-string/jumbo v1, "THEAD"

    #@378
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@37a
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@37d
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@380
    .line 260
    const-string/jumbo v1, "TFOOT"

    #@383
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@385
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@388
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@38b
    .line 261
    const-string/jumbo v1, "TBODY"

    #@38e
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@390
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@393
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@396
    .line 262
    const-string/jumbo v1, "COLGROUP"

    #@399
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@39b
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@39e
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a1
    .line 264
    const-string/jumbo v1, "COL"

    #@3a4
    .line 265
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3a6
    const/16 v3, 0xa

    #@3a8
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3ab
    .line 263
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ae
    .line 266
    const-string/jumbo v1, "TR"

    #@3b1
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3b3
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3b6
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b9
    .line 267
    const-string/jumbo v1, "TH"

    #@3bc
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3be
    const/4 v3, 0x0

    #@3bf
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3c2
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c5
    .line 268
    const-string/jumbo v1, "TD"

    #@3c8
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3ca
    const/4 v3, 0x0

    #@3cb
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3ce
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d1
    .line 270
    const-string/jumbo v1, "HEAD"

    #@3d4
    .line 271
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3d6
    const v3, 0x400008

    #@3d9
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3dc
    .line 269
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3df
    .line 272
    const-string/jumbo v1, "TITLE"

    #@3e2
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3e4
    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3e7
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3ea
    .line 274
    const-string/jumbo v1, "BASE"

    #@3ed
    .line 275
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3ef
    const/16 v3, 0xa

    #@3f1
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@3f4
    .line 273
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f7
    .line 277
    const-string/jumbo v1, "META"

    #@3fa
    .line 278
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@3fc
    .line 279
    const v3, 0x2000a

    #@3ff
    .line 278
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@402
    .line 276
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@405
    .line 281
    const-string/jumbo v1, "STYLE"

    #@408
    .line 282
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@40a
    .line 283
    const v3, 0x20108

    #@40d
    .line 282
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@410
    .line 280
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@413
    .line 285
    const-string/jumbo v1, "SCRIPT"

    #@416
    .line 286
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@418
    .line 287
    const v3, 0x38100

    #@41b
    .line 286
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@41e
    .line 284
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@421
    .line 293
    const-string/jumbo v1, "NOSCRIPT"

    #@424
    .line 294
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@426
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@429
    .line 292
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@42c
    .line 299
    const-string/jumbo v1, "HTML"

    #@42f
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@431
    const v3, 0x800008

    #@434
    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@437
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@43a
    .line 304
    const-string/jumbo v1, "FONT"

    #@43d
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@43f
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@442
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@445
    .line 307
    const-string/jumbo v1, "S"

    #@448
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@44a
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@44d
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@450
    .line 308
    const-string/jumbo v1, "STRIKE"

    #@453
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@455
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@458
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@45b
    .line 311
    const-string/jumbo v1, "U"

    #@45e
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@460
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@463
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@466
    .line 314
    const-string/jumbo v1, "NOBR"

    #@469
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@46b
    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@46e
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@471
    .line 318
    const-string/jumbo v1, "IFRAME"

    #@474
    .line 319
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@476
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@479
    .line 317
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@47c
    .line 327
    const-string/jumbo v1, "LAYER"

    #@47f
    .line 328
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@481
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@484
    .line 326
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@487
    .line 335
    const-string/jumbo v1, "ILAYER"

    #@48a
    .line 336
    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    #@48c
    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    #@48f
    .line 334
    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@492
    .line 347
    const-string/jumbo v1, "a"

    #@495
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@498
    move-result-object v0

    #@499
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@49b
    .line 348
    .local v0, "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "HREF"

    #@49e
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4a1
    .line 349
    const-string/jumbo v1, "NAME"

    #@4a4
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4a7
    .line 352
    const-string/jumbo v1, "area"

    #@4aa
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4ad
    move-result-object v0

    #@4ae
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@4b0
    .line 354
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "HREF"

    #@4b3
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4b6
    .line 355
    const-string/jumbo v1, "NOHREF"

    #@4b9
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4bc
    .line 358
    const-string/jumbo v1, "base"

    #@4bf
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4c2
    move-result-object v0

    #@4c3
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@4c5
    .line 360
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "HREF"

    #@4c8
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4cb
    .line 363
    const-string/jumbo v1, "button"

    #@4ce
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4d1
    move-result-object v0

    #@4d2
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@4d4
    .line 364
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "DISABLED"

    #@4d7
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4da
    .line 367
    const-string/jumbo v1, "blockquote"

    #@4dd
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4e0
    move-result-object v0

    #@4e1
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@4e3
    .line 369
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "CITE"

    #@4e6
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4e9
    .line 372
    const-string/jumbo v1, "del"

    #@4ec
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4ef
    move-result-object v0

    #@4f0
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@4f2
    .line 373
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "CITE"

    #@4f5
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@4f8
    .line 376
    const-string/jumbo v1, "dir"

    #@4fb
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@4fe
    move-result-object v0

    #@4ff
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@501
    .line 377
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "COMPACT"

    #@504
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@507
    .line 381
    const-string/jumbo v1, "div"

    #@50a
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@50d
    move-result-object v0

    #@50e
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@510
    .line 382
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@513
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@516
    .line 383
    const-string/jumbo v1, "NOWRAP"

    #@519
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@51c
    .line 386
    const-string/jumbo v1, "dl"

    #@51f
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@522
    move-result-object v0

    #@523
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@525
    .line 387
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "COMPACT"

    #@528
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@52b
    .line 390
    const-string/jumbo v1, "form"

    #@52e
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@531
    move-result-object v0

    #@532
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@534
    .line 391
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "ACTION"

    #@537
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@53a
    .line 395
    const-string/jumbo v1, "frame"

    #@53d
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@540
    move-result-object v0

    #@541
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@543
    .line 396
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@546
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@549
    .line 397
    const-string/jumbo v1, "LONGDESC"

    #@54c
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@54f
    .line 398
    const-string/jumbo v1, "NORESIZE"

    #@552
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@555
    .line 401
    const-string/jumbo v1, "head"

    #@558
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@55b
    move-result-object v0

    #@55c
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@55e
    .line 402
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "PROFILE"

    #@561
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@564
    .line 405
    const-string/jumbo v1, "hr"

    #@567
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@56a
    move-result-object v0

    #@56b
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@56d
    .line 406
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "NOSHADE"

    #@570
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@573
    .line 410
    const-string/jumbo v1, "iframe"

    #@576
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@579
    move-result-object v0

    #@57a
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@57c
    .line 411
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@57f
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@582
    .line 412
    const-string/jumbo v1, "LONGDESC"

    #@585
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@588
    .line 416
    const-string/jumbo v1, "ilayer"

    #@58b
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@58e
    move-result-object v0

    #@58f
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@591
    .line 417
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@594
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@597
    .line 420
    const-string/jumbo v1, "img"

    #@59a
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@59d
    move-result-object v0

    #@59e
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@5a0
    .line 421
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@5a3
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5a6
    .line 422
    const-string/jumbo v1, "LONGDESC"

    #@5a9
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5ac
    .line 423
    const-string/jumbo v1, "USEMAP"

    #@5af
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5b2
    .line 424
    const-string/jumbo v1, "ISMAP"

    #@5b5
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5b8
    .line 427
    const-string/jumbo v1, "input"

    #@5bb
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5be
    move-result-object v0

    #@5bf
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@5c1
    .line 429
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@5c4
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5c7
    .line 430
    const-string/jumbo v1, "USEMAP"

    #@5ca
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5cd
    .line 431
    const-string/jumbo v1, "CHECKED"

    #@5d0
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5d3
    .line 432
    const-string/jumbo v1, "DISABLED"

    #@5d6
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5d9
    .line 433
    const-string/jumbo v1, "ISMAP"

    #@5dc
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5df
    .line 434
    const-string/jumbo v1, "READONLY"

    #@5e2
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5e5
    .line 437
    const-string/jumbo v1, "ins"

    #@5e8
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5eb
    move-result-object v0

    #@5ec
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@5ee
    .line 438
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "CITE"

    #@5f1
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@5f4
    .line 442
    const-string/jumbo v1, "layer"

    #@5f7
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5fa
    move-result-object v0

    #@5fb
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@5fd
    .line 443
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@600
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@603
    .line 446
    const-string/jumbo v1, "link"

    #@606
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@609
    move-result-object v0

    #@60a
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@60c
    .line 447
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "HREF"

    #@60f
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@612
    .line 450
    const-string/jumbo v1, "menu"

    #@615
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@618
    move-result-object v0

    #@619
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@61b
    .line 451
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "COMPACT"

    #@61e
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@621
    .line 454
    const-string/jumbo v1, "object"

    #@624
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@627
    move-result-object v0

    #@628
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@62a
    .line 456
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "CLASSID"

    #@62d
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@630
    .line 457
    const-string/jumbo v1, "CODEBASE"

    #@633
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@636
    .line 458
    const-string/jumbo v1, "DATA"

    #@639
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@63c
    .line 459
    const-string/jumbo v1, "ARCHIVE"

    #@63f
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@642
    .line 460
    const-string/jumbo v1, "USEMAP"

    #@645
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@648
    .line 461
    const-string/jumbo v1, "DECLARE"

    #@64b
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@64e
    .line 464
    const-string/jumbo v1, "ol"

    #@651
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@654
    move-result-object v0

    #@655
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@657
    .line 465
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "COMPACT"

    #@65a
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@65d
    .line 468
    const-string/jumbo v1, "optgroup"

    #@660
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@663
    move-result-object v0

    #@664
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@666
    .line 469
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "DISABLED"

    #@669
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@66c
    .line 472
    const-string/jumbo v1, "option"

    #@66f
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@672
    move-result-object v0

    #@673
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@675
    .line 473
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SELECTED"

    #@678
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@67b
    .line 474
    const-string/jumbo v1, "DISABLED"

    #@67e
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@681
    .line 477
    const-string/jumbo v1, "q"

    #@684
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@687
    move-result-object v0

    #@688
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@68a
    .line 478
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "CITE"

    #@68d
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@690
    .line 481
    const-string/jumbo v1, "script"

    #@693
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@696
    move-result-object v0

    #@697
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@699
    .line 482
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "SRC"

    #@69c
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@69f
    .line 483
    const-string/jumbo v1, "FOR"

    #@6a2
    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6a5
    .line 484
    const-string/jumbo v1, "DEFER"

    #@6a8
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6ab
    .line 487
    const-string/jumbo v1, "select"

    #@6ae
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6b1
    move-result-object v0

    #@6b2
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@6b4
    .line 488
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "DISABLED"

    #@6b7
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6ba
    .line 489
    const-string/jumbo v1, "MULTIPLE"

    #@6bd
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6c0
    .line 492
    const-string/jumbo v1, "table"

    #@6c3
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6c6
    move-result-object v0

    #@6c7
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@6c9
    .line 493
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "NOWRAP"

    #@6cc
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6cf
    .line 496
    const-string/jumbo v1, "td"

    #@6d2
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6d5
    move-result-object v0

    #@6d6
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@6d8
    .line 497
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "NOWRAP"

    #@6db
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6de
    .line 500
    const-string/jumbo v1, "textarea"

    #@6e1
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6e4
    move-result-object v0

    #@6e5
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@6e7
    .line 501
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "DISABLED"

    #@6ea
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6ed
    .line 502
    const-string/jumbo v1, "READONLY"

    #@6f0
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@6f3
    .line 505
    const-string/jumbo v1, "th"

    #@6f6
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6f9
    move-result-object v0

    #@6fa
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@6fc
    .line 506
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "NOWRAP"

    #@6ff
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@702
    .line 511
    const-string/jumbo v1, "tr"

    #@705
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@708
    move-result-object v0

    #@709
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@70b
    .line 512
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "NOWRAP"

    #@70e
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@711
    .line 515
    const-string/jumbo v1, "ul"

    #@714
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@717
    move-result-object v0

    #@718
    .end local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    #@71a
    .line 516
    .restart local v0    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    const-string/jumbo v1, "COMPACT"

    #@71d
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    #@720
    .line 67
    return-void
.end method

.method private isASCIIDigit(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1096
    const/16 v1, 0x30

    #@3
    if-lt p1, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isHHSign(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1126
    const/4 v2, 0x1

    #@1
    .line 1129
    .local v2, "sign":Z
    const/16 v3, 0x10

    #@3
    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result v3

    #@7
    int-to-char v1, v3

    #@8
    .line 1135
    :goto_0
    return v2

    #@9
    .line 1132
    :catch_0
    move-exception v0

    #@a
    .line 1133
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@b
    goto :goto_0
.end method

.method private static makeHHString(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1110
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1111
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x1

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "0"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 1115
    :cond_0
    return-object v0
.end method

.method private outputDocTypeDecl(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@2
    if-eqz v4, :cond_3

    #@4
    .line 703
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypeSystem()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 704
    .local v1, "doctypeSystem":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypePublic()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 705
    .local v0, "doctypePublic":Ljava/lang/String;
    if-nez v1, :cond_0

    #@e
    if-eqz v0, :cond_3

    #@10
    .line 707
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@12
    .line 710
    .local v3, "writer":Ljava/io/Writer;
    :try_start_0
    const-string/jumbo v4, "<!DOCTYPE "

    #@15
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@18
    .line 711
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1b
    .line 713
    if-eqz v0, :cond_1

    #@1d
    .line 715
    const-string/jumbo v4, " PUBLIC \""

    #@20
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@23
    .line 716
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@26
    .line 717
    const/16 v4, 0x22

    #@28
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    #@2b
    .line 720
    :cond_1
    if-eqz v1, :cond_2

    #@2d
    .line 722
    if-nez v0, :cond_4

    #@2f
    .line 723
    const-string/jumbo v4, " SYSTEM \""

    #@32
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@35
    .line 727
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@38
    .line 728
    const/16 v4, 0x22

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    #@3d
    .line 731
    :cond_2
    const/16 v4, 0x3e

    #@3f
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    #@42
    .line 732
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 741
    .end local v0    # "doctypePublic":Ljava/lang/String;
    .end local v1    # "doctypeSystem":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/Writer;
    :cond_3
    const/4 v4, 0x0

    #@46
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@48
    .line 700
    return-void

    #@49
    .line 725
    .restart local v0    # "doctypePublic":Ljava/lang/String;
    .restart local v1    # "doctypeSystem":Ljava/lang/String;
    .restart local v3    # "writer":Ljava/io/Writer;
    :cond_4
    :try_start_1
    const-string/jumbo v4, " \""

    #@4c
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@4f
    goto :goto_0

    #@50
    .line 735
    :catch_0
    move-exception v2

    #@51
    .line 736
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    #@53
    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@56
    throw v4
.end method

.method private resetToHTMLStream()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2025
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@3
    .line 2026
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    #@5
    .line 2027
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@7
    .line 2028
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@a
    .line 2021
    return-void
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1935
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@2
    .line 1936
    .local v1, "writer":Ljava/io/Writer;
    and-int/lit8 v2, p3, 0x1

    #@4
    if-lez v2, :cond_0

    #@6
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    #@8
    iget-boolean v2, v2, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1943
    const/16 v2, 0x20

    #@e
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@11
    .line 1944
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@14
    .line 1945
    const-string/jumbo v2, "=\""

    #@17
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a
    .line 1946
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1d
    .line 1947
    const/16 v2, 0x22

    #@1f
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@22
    .line 1931
    :goto_0
    return-void

    #@23
    .line 1950
    :cond_0
    and-int/lit8 v2, p3, 0x2

    #@25
    if-lez v2, :cond_2

    #@27
    .line 1951
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v2

    #@31
    .line 1949
    if-eqz v2, :cond_2

    #@33
    .line 1953
    :cond_1
    const/16 v2, 0x20

    #@35
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@38
    .line 1954
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    goto :goto_0

    #@3c
    .line 1971
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@3d
    .line 1972
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@3f
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@42
    throw v2

    #@43
    .line 1958
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_2
    const/16 v2, 0x20

    #@45
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@48
    .line 1959
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4b
    .line 1960
    const-string/jumbo v2, "=\""

    #@4e
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@51
    .line 1961
    and-int/lit8 v2, p3, 0x4

    #@53
    if-lez v2, :cond_3

    #@55
    .line 1963
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@57
    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    #@5a
    .line 1969
    :goto_1
    const/16 v2, 0x22

    #@5c
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@5f
    goto :goto_0

    #@60
    .line 1967
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@67
    goto :goto_1
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1888
    return-void
.end method

.method public final cdata([CII)V
    .locals 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1597
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_3

    #@7
    .line 1598
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@9
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@b
    const-string/jumbo v1, "SCRIPT"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1599
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@16
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@18
    const-string/jumbo v1, "STYLE"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v0

    #@1f
    .line 1597
    if-eqz v0, :cond_3

    #@21
    .line 1603
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@23
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    .line 1605
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@2a
    .line 1606
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2c
    const/4 v1, 0x0

    #@2d
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@2f
    .line 1609
    :cond_1
    const/4 v0, 0x1

    #@30
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@32
    .line 1611
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 1612
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    #@3b
    .line 1615
    :cond_2
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_lineSepUse:Z

    #@3d
    const/4 v4, 0x1

    #@3e
    move-object v0, p0

    #@3f
    move-object v1, p1

    #@40
    move v2, p2

    #@41
    move v3, p3

    #@42
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 1594
    :goto_0
    return-void

    #@46
    .line 1618
    :catch_0
    move-exception v6

    #@47
    .line 1619
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    #@49
    .line 1620
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@4b
    .line 1621
    const-string/jumbo v2, "ER_OIERROR"

    #@4e
    .line 1620
    invoke-virtual {v1, v2, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 1619
    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@55
    throw v0

    #@56
    .line 1629
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    #@59
    goto :goto_0
.end method

.method public final characters([CII)V
    .locals 8
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1533
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@3
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    #@5
    if-eqz v0, :cond_2

    #@7
    .line 1538
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@9
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1540
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@10
    .line 1541
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@12
    const/4 v1, 0x0

    #@13
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@15
    .line 1544
    :cond_0
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@18
    .line 1546
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_lineSepUse:Z

    #@1a
    const/4 v4, 0x0

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    move v2, p2

    #@1e
    move v3, p3

    #@1f
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V

    #@22
    .line 1549
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 1550
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1552
    :cond_1
    return-void

    #@2a
    .line 1555
    :catch_0
    move-exception v6

    #@2b
    .line 1556
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    #@2d
    .line 1557
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@2f
    const-string/jumbo v2, "ER_OIERROR"

    #@32
    invoke-virtual {v1, v2, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1556
    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@39
    throw v0

    #@3a
    .line 1562
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    #@3d
    .line 1530
    return-void
.end method

.method protected closeStartTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1796
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1797
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@6
    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@8
    invoke-super {p0, v2}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    #@b
    .line 1799
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@d
    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    #@10
    move-result v1

    #@11
    .line 1800
    .local v1, "nAttrs":I
    if-lez v1, :cond_1

    #@13
    .line 1802
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@15
    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    #@18
    .line 1804
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@1a
    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@1d
    .line 1807
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@1f
    const/16 v3, 0x3e

    #@21
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    #@24
    .line 1813
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_CdataElems:Ljava/util/Hashtable;

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1814
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2a
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->isCdataSection()Z

    #@2d
    move-result v3

    #@2e
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    #@30
    .line 1815
    :cond_2
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@32
    if-eqz v2, :cond_3

    #@34
    .line 1817
    const/4 v2, 0x0

    #@35
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    #@37
    .line 1818
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@39
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@3b
    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 1790
    :cond_3
    return-void

    #@3f
    .line 1823
    .end local v1    # "nAttrs":I
    :catch_0
    move-exception v0

    #@40
    .line 1824
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@42
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@45
    throw v2
.end method

.method public comment([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1980
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1981
    return-void

    #@5
    .line 1987
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@9
    if-eqz v0, :cond_3

    #@b
    .line 1989
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@e
    .line 1990
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@10
    const/4 v1, 0x0

    #@11
    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@13
    .line 2006
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    .line 2007
    const-string/jumbo v0, "html"

    #@1a
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    #@1d
    .line 2009
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->comment([CII)V

    #@20
    .line 1977
    return-void

    #@21
    .line 1992
    :cond_3
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 1994
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    #@28
    goto :goto_0

    #@29
    .line 1996
    :cond_4
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 1998
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    #@30
    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1896
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1874
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    #@3
    .line 1872
    return-void
.end method

.method public final endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    #@3
    .line 756
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 768
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushWriter()V

    #@e
    .line 769
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 770
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    #@15
    .line 752
    :cond_1
    return-void

    #@16
    .line 760
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    goto :goto_0

    #@1a
    .line 763
    :catch_0
    move-exception v0

    #@1b
    .line 764
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@1d
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@20
    throw v1
.end method

.method public final endElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "elemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1753
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 1751
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 935
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    #@4
    if-eqz v11, :cond_0

    #@6
    .line 936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    #@9
    .line 939
    :cond_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v11

    #@f
    if-lez v11, :cond_1

    #@11
    .line 941
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 943
    return-void

    #@15
    .line 949
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@17
    .line 950
    .local v1, "elemContext":Lorg/apache/xml/serializer/ElemContext;
    iget-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@19
    .line 951
    .local v2, "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    #@1c
    move-result v4

    #@1d
    .line 952
    .local v4, "elemFlags":I
    and-int/lit8 v11, v4, 0x2

    #@1f
    if-eqz v11, :cond_7

    #@21
    const/4 v3, 0x1

    #@22
    .line 955
    .local v3, "elemEmpty":Z
    :goto_0
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@24
    if-eqz v11, :cond_4

    #@26
    .line 957
    and-int/lit8 v11, v4, 0x8

    #@28
    if-eqz v11, :cond_8

    #@2a
    const/4 v5, 0x1

    #@2b
    .line 958
    .local v5, "isBlockElement":Z
    :goto_1
    const/4 v7, 0x0

    #@2c
    .line 960
    .local v7, "shouldIndent":Z
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@2e
    if-eqz v11, :cond_9

    #@30
    .line 962
    const/4 v11, 0x0

    #@31
    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@33
    .line 969
    :cond_2
    :goto_2
    iget-boolean v11, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@35
    if-nez v11, :cond_3

    #@37
    if-eqz v7, :cond_3

    #@39
    .line 970
    iget v11, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@3b
    add-int/lit8 v11, v11, -0x1

    #@3d
    invoke-virtual {p0, v11}, Lorg/apache/xml/serializer/ToHTMLStream;->indent(I)V

    #@40
    .line 971
    :cond_3
    if-eqz v5, :cond_b

    #@42
    :goto_3
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@44
    .line 974
    .end local v5    # "isBlockElement":Z
    .end local v7    # "shouldIndent":Z
    :cond_4
    iget-object v8, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@46
    .line 975
    .local v8, "writer":Ljava/io/Writer;
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@48
    if-nez v9, :cond_c

    #@4a
    .line 977
    const-string/jumbo v9, "</"

    #@4d
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@50
    .line 978
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@53
    .line 979
    const/16 v9, 0x3e

    #@55
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@58
    .line 1016
    :goto_4
    const/high16 v9, 0x200000

    #@5a
    and-int/2addr v9, v4

    #@5b
    if-eqz v9, :cond_5

    #@5d
    .line 1017
    const/4 v9, 0x1

    #@5e
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@60
    .line 1018
    :cond_5
    const/4 v9, 0x0

    #@61
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    #@63
    .line 1021
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@65
    if-eqz v9, :cond_6

    #@67
    .line 1022
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    #@6a
    .line 1025
    :cond_6
    if-eqz v3, :cond_10

    #@6c
    .line 1030
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@6e
    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@70
    .line 1031
    return-void

    #@71
    .line 952
    .end local v3    # "elemEmpty":Z
    .end local v8    # "writer":Ljava/io/Writer;
    :cond_7
    const/4 v3, 0x0

    #@72
    .restart local v3    # "elemEmpty":Z
    goto :goto_0

    #@73
    .line 957
    :cond_8
    const/4 v5, 0x0

    #@74
    .restart local v5    # "isBlockElement":Z
    goto :goto_1

    #@75
    .line 964
    .restart local v7    # "shouldIndent":Z
    :cond_9
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@77
    if-eqz v11, :cond_2

    #@79
    iget-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@7b
    if-eqz v11, :cond_a

    #@7d
    if-eqz v5, :cond_2

    #@7f
    .line 966
    :cond_a
    const/4 v11, 0x1

    #@80
    iput-boolean v11, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    #@82
    .line 967
    const/4 v7, 0x1

    #@83
    goto :goto_2

    #@84
    :cond_b
    move v9, v10

    #@85
    .line 971
    goto :goto_3

    #@86
    .line 986
    .end local v5    # "isBlockElement":Z
    .end local v7    # "shouldIndent":Z
    .restart local v8    # "writer":Ljava/io/Writer;
    :cond_c
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@88
    if-eqz v9, :cond_d

    #@8a
    .line 987
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    #@8d
    .line 991
    :cond_d
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@8f
    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    #@92
    move-result v6

    #@93
    .line 992
    .local v6, "nAttrs":I
    if-lez v6, :cond_e

    #@95
    .line 994
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@97
    invoke-virtual {p0, v9, v6}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    #@9a
    .line 996
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@9c
    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    #@9f
    .line 998
    :cond_e
    if-nez v3, :cond_f

    #@a1
    .line 1005
    const-string/jumbo v9, "></"

    #@a4
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a7
    .line 1006
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@aa
    .line 1007
    const/16 v9, 0x3e

    #@ac
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@af
    goto :goto_4

    #@b0
    .line 1044
    .end local v1    # "elemContext":Lorg/apache/xml/serializer/ElemContext;
    .end local v2    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    .end local v3    # "elemEmpty":Z
    .end local v4    # "elemFlags":I
    .end local v6    # "nAttrs":I
    .end local v8    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@b1
    .line 1045
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lorg/xml/sax/SAXException;

    #@b3
    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@b6
    throw v9

    #@b7
    .line 1011
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "elemContext":Lorg/apache/xml/serializer/ElemContext;
    .restart local v2    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    .restart local v3    # "elemEmpty":Z
    .restart local v4    # "elemFlags":I
    .restart local v6    # "nAttrs":I
    .restart local v8    # "writer":Ljava/io/Writer;
    :cond_f
    const/16 v9, 0x3e

    #@b9
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@bc
    goto :goto_4

    #@bd
    .line 1035
    .end local v6    # "nAttrs":I
    :cond_10
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@bf
    if-nez v9, :cond_11

    #@c1
    .line 1037
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@c3
    if-eqz v9, :cond_11

    #@c5
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@c7
    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    #@ca
    move-result v9

    #@cb
    if-eqz v9, :cond_12

    #@cd
    .line 1040
    :cond_11
    :goto_5
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    #@cf
    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@d1
    .line 932
    return-void

    #@d2
    .line 1038
    :cond_12
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    #@d4
    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d7
    goto :goto_5
.end method

.method public final entityReference(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@2
    .line 1739
    .local v1, "writer":Ljava/io/Writer;
    const/16 v2, 0x26

    #@4
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@7
    .line 1740
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a
    .line 1741
    const/16 v2, 0x3b

    #@c
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1733
    return-void

    #@10
    .line 1744
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@11
    .line 1745
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@13
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@16
    throw v2
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1915
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1904
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1845
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1847
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@8
    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@a
    invoke-static {v1}, Lorg/apache/xml/serializer/ToHTMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 1848
    .local v0, "prefix1":Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    const-string/jumbo v1, ""

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 1854
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@1b
    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    #@1d
    .line 1857
    .end local v0    # "prefix1":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@1e
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    #@21
    .line 1842
    return-void
.end method

.method protected processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "elemDesc"    # Lorg/apache/xml/serializer/ElemDesc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1066
    const/16 v0, 0x20

    #@2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    #@5
    .line 1068
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 1069
    :cond_0
    if-eqz p4, :cond_1

    #@13
    .line 1070
    const/4 v0, 0x4

    #@14
    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    .line 1068
    if-eqz v0, :cond_1

    #@1a
    .line 1072
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1d
    .line 1064
    :goto_0
    return-void

    #@1e
    .line 1079
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21
    .line 1080
    const-string/jumbo v0, "=\""

    #@24
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@27
    .line 1081
    if-eqz p4, :cond_2

    #@29
    .line 1082
    const/4 v0, 0x2

    #@2a
    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    #@2d
    move-result v0

    #@2e
    .line 1081
    if-eqz v0, :cond_2

    #@30
    .line 1083
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@32
    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    #@35
    .line 1086
    :goto_1
    const/16 v0, 0x22

    #@37
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    #@3a
    goto :goto_0

    #@3b
    .line 1085
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    #@42
    goto :goto_1
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "nAttrs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1773
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@3
    .line 1777
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@5
    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1778
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    #@b
    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1779
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@11
    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@13
    .line 1775
    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V

    #@16
    .line 1773
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 1768
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1649
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    #@3
    .line 1653
    const-string/jumbo v2, "javax.xml.transform.disable-output-escaping"

    #@6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 1655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startNonEscaping()V

    #@f
    .line 1721
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@11
    if-eqz v2, :cond_0

    #@13
    .line 1722
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 1645
    :cond_0
    return-void

    #@17
    .line 1657
    :cond_1
    const-string/jumbo v2, "javax.xml.transform.enable-output-escaping"

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 1659
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->endNonEscaping()V

    #@23
    goto :goto_0

    #@24
    .line 1666
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@26
    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@28
    if-eqz v2, :cond_8

    #@2a
    .line 1668
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@2d
    .line 1669
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2f
    const/4 v3, 0x0

    #@30
    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@32
    .line 1687
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@34
    if-eqz v2, :cond_4

    #@36
    .line 1688
    const-string/jumbo v2, "html"

    #@39
    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    #@3c
    .line 1691
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_5

    #@42
    .line 1692
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    #@45
    .line 1694
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@47
    .line 1696
    .local v1, "writer":Ljava/io/Writer;
    const-string/jumbo v2, "<?"

    #@4a
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@4d
    .line 1697
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@50
    .line 1699
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@53
    move-result v2

    #@54
    if-lez v2, :cond_6

    #@56
    const/4 v2, 0x0

    #@57
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@5a
    move-result v2

    #@5b
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_a

    #@61
    .line 1703
    :cond_6
    :goto_2
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@64
    .line 1704
    const/16 v2, 0x3e

    #@66
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    #@69
    .line 1709
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@6b
    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    #@6d
    if-gtz v2, :cond_7

    #@6f
    .line 1710
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V

    #@72
    .line 1712
    :cond_7
    const/4 v2, 0x1

    #@73
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    goto :goto_0

    #@76
    .line 1715
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    #@77
    .line 1716
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@79
    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@7c
    throw v2

    #@7d
    .line 1671
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    #@7f
    if-eqz v2, :cond_9

    #@81
    .line 1673
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    #@84
    goto :goto_1

    #@85
    .line 1675
    :cond_9
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    #@87
    if-eqz v2, :cond_3

    #@89
    .line 1677
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    #@8c
    goto :goto_1

    #@8d
    .line 1700
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_a
    const/16 v2, 0x20

    #@8f
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@92
    goto :goto_2
.end method

.method public reset()Z
    .locals 2

    #@0
    .prologue
    .line 2014
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    #@3
    move-result v0

    #@4
    .line 2015
    .local v0, "ret":Z
    if-nez v0, :cond_0

    #@6
    .line 2016
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 2017
    :cond_0
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->resetToHTMLStream()V

    #@b
    .line 2018
    const/4 v1, 0x1

    #@c
    return v1
.end method

.method public setOmitMetaTag(Z)V
    .locals 0
    .param p1, "bool"    # Z

    #@0
    .prologue
    .line 547
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@2
    .line 545
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .locals 2
    .param p1, "format"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 574
    const-string/jumbo v1, "{http://xml.apache.org/xalan}use-url-escaping"

    #@3
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 575
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .line 578
    const-string/jumbo v1, "{http://xml.apache.org/xalan}use-url-escaping"

    #@c
    .line 577
    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    #@f
    move-result v1

    #@10
    .line 576
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@12
    .line 587
    :cond_0
    const-string/jumbo v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    #@15
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 588
    if-eqz v0, :cond_1

    #@1b
    .line 591
    const-string/jumbo v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    #@1e
    .line 590
    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    #@21
    move-result v1

    #@22
    .line 589
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@24
    .line 595
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputFormat(Ljava/util/Properties;)V

    #@27
    .line 566
    return-void
.end method

.method public setSpecialEscapeURLs(Z)V
    .locals 0
    .param p1, "bool"    # Z

    #@0
    .prologue
    .line 537
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    #@2
    .line 535
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1863
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    #@3
    .line 1864
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 1861
    return-void
.end method

.method protected startDocumentInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 686
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    #@5
    .line 688
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    #@7
    .line 689
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@9
    .line 690
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    #@b
    .line 691
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->setOmitXMLDeclaration(Z)V

    #@e
    .line 684
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@2
    .line 797
    .local v1, "elemContext":Lorg/apache/xml/serializer/ElemContext;
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@4
    if-eqz v9, :cond_4

    #@6
    .line 799
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@9
    .line 800
    const/4 v9, 0x0

    #@a
    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@c
    .line 813
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    #@e
    if-eqz v9, :cond_3

    #@10
    .line 814
    move-object v7, p3

    #@11
    .line 815
    .local v7, "n":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@16
    move-result v9

    #@17
    if-nez v9, :cond_2

    #@19
    .line 818
    :cond_1
    move-object v7, p2

    #@1a
    .line 820
    :cond_2
    invoke-direct {p0, v7}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    #@1d
    .line 825
    .end local v7    # "n":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_6

    #@1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@22
    move-result v9

    #@23
    if-lez v9, :cond_6

    #@25
    .line 827
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    #@28
    .line 829
    return-void

    #@29
    .line 802
    :cond_4
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    #@2b
    if-eqz v9, :cond_5

    #@2d
    .line 804
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    #@30
    .line 805
    const/4 v9, 0x0

    #@31
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    #@33
    goto :goto_0

    #@34
    .line 807
    :cond_5
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    #@36
    if-eqz v9, :cond_0

    #@38
    .line 809
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    #@3b
    .line 810
    const/4 v9, 0x0

    #@3c
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    #@3e
    goto :goto_0

    #@3f
    .line 835
    :cond_6
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToHTMLStream;->getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;

    #@42
    move-result-object v2

    #@43
    .line 836
    .local v2, "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    #@46
    move-result v3

    #@47
    .line 839
    .local v3, "elemFlags":I
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@49
    if-eqz v9, :cond_8

    #@4b
    .line 842
    and-int/lit8 v9, v3, 0x8

    #@4d
    if-eqz v9, :cond_b

    #@4f
    const/4 v6, 0x1

    #@50
    .line 843
    .local v6, "isBlockElement":Z
    :goto_1
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@52
    if-eqz v9, :cond_c

    #@54
    .line 844
    const/4 v9, 0x0

    #@55
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    #@57
    .line 856
    :cond_7
    :goto_2
    if-eqz v6, :cond_e

    #@59
    const/4 v9, 0x0

    #@5a
    :goto_3
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@5c
    .line 860
    .end local v6    # "isBlockElement":Z
    :cond_8
    if-eqz p4, :cond_9

    #@5e
    .line 861
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToHTMLStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    #@61
    .line 863
    :cond_9
    const/4 v9, 0x0

    #@62
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    #@64
    .line 864
    iget-object v8, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    #@66
    .line 865
    .local v8, "writer":Ljava/io/Writer;
    const/16 v9, 0x3c

    #@68
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    #@6b
    .line 866
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@6e
    .line 870
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    #@70
    if-eqz v9, :cond_a

    #@72
    .line 871
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->firePseudoAttributes()V

    #@75
    .line 873
    :cond_a
    and-int/lit8 v9, v3, 0x2

    #@77
    if-eqz v9, :cond_f

    #@79
    .line 877
    invoke-virtual {v1}, Lorg/apache/xml/serializer/ElemContext;->push()Lorg/apache/xml/serializer/ElemContext;

    #@7c
    move-result-object v9

    #@7d
    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@7f
    .line 881
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@81
    iput-object p3, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@83
    .line 882
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@85
    iput-object v2, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@87
    .line 883
    return-void

    #@88
    .line 842
    .end local v8    # "writer":Ljava/io/Writer;
    :cond_b
    const/4 v6, 0x0

    #@89
    .restart local v6    # "isBlockElement":Z
    goto :goto_1

    #@8a
    .line 846
    :cond_c
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    #@8c
    if-eqz v9, :cond_7

    #@8e
    .line 847
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    #@90
    if-eqz v9, :cond_d

    #@92
    .line 845
    if-eqz v6, :cond_7

    #@94
    .line 851
    :cond_d
    const/4 v9, 0x1

    #@95
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    #@97
    .line 853
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9a
    goto :goto_2

    #@9b
    .line 913
    .end local v2    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    .end local v3    # "elemFlags":I
    .end local v6    # "isBlockElement":Z
    :catch_0
    move-exception v0

    #@9c
    .line 914
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lorg/xml/sax/SAXException;

    #@9e
    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@a1
    throw v9

    #@a2
    .line 856
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "elemDesc":Lorg/apache/xml/serializer/ElemDesc;
    .restart local v3    # "elemFlags":I
    .restart local v6    # "isBlockElement":Z
    :cond_e
    const/4 v9, 0x1

    #@a3
    goto :goto_3

    #@a4
    .line 887
    .end local v6    # "isBlockElement":Z
    .restart local v8    # "writer":Ljava/io/Writer;
    :cond_f
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    #@a7
    move-result-object v1

    #@a8
    .line 888
    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    #@aa
    .line 889
    iput-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    #@ac
    .line 890
    and-int/lit16 v9, v3, 0x100

    #@ae
    if-eqz v9, :cond_12

    #@b0
    const/4 v9, 0x1

    #@b1
    :goto_4
    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    #@b3
    .line 894
    const/high16 v9, 0x400000

    #@b5
    and-int/2addr v9, v3

    #@b6
    if-eqz v9, :cond_11

    #@b8
    .line 897
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    #@bb
    .line 898
    const/4 v9, 0x0

    #@bc
    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    #@be
    .line 899
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    #@c0
    if-nez v9, :cond_11

    #@c2
    .line 901
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    #@c4
    if-eqz v9, :cond_10

    #@c6
    .line 902
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    #@c9
    .line 904
    :cond_10
    const-string/jumbo v9, "<META http-equiv=\"Content-Type\" content=\"text/html; charset="

    #@cc
    .line 903
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@cf
    .line 905
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    .line 906
    .local v5, "encoding":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    #@d6
    move-result-object v4

    #@d7
    .line 907
    .local v4, "encode":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@da
    .line 908
    const-string/jumbo v9, "\">"

    #@dd
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@e0
    .line 791
    .end local v4    # "encode":Ljava/lang/String;
    .end local v5    # "encoding":Ljava/lang/String;
    :cond_11
    return-void

    #@e1
    .line 890
    :cond_12
    const/4 v9, 0x0

    #@e2
    goto :goto_4
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    .line 1391
    .local v5, "end":I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@8
    array-length v0, v0

    #@9
    if-le v5, v0, :cond_0

    #@b
    .line 1393
    mul-int/lit8 v0, v5, 0x2

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    new-array v0, v0, [C

    #@11
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@13
    .line 1395
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@15
    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@18
    .line 1396
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@1a
    .line 1400
    .local v4, "chars":[C
    const/4 v9, 0x0

    #@1b
    .line 1401
    .local v9, "cleanStart":I
    const/4 v8, 0x0

    #@1c
    .line 1403
    .local v8, "cleanLength":I
    const/4 v2, 0x0

    #@1d
    .line 1404
    .local v2, "ch":C
    const/4 v3, 0x0

    #@1e
    .end local v2    # "ch":C
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_b

    #@20
    .line 1406
    aget-char v2, v4, v3

    #@22
    .line 1412
    .local v2, "ch":C
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@2a
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 1416
    :cond_1
    const/16 v0, 0x3c

    #@32
    if-eq v0, v2, :cond_2

    #@34
    const/16 v0, 0x3e

    #@36
    if-ne v0, v2, :cond_4

    #@38
    .line 1418
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3a
    .line 1404
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 1414
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@3f
    .line 1413
    goto :goto_1

    #@40
    .line 1421
    :cond_4
    const/16 v0, 0x26

    #@42
    if-ne v0, v2, :cond_5

    #@44
    add-int/lit8 v0, v3, 0x1

    #@46
    if-ge v0, v5, :cond_5

    #@48
    add-int/lit8 v0, v3, 0x1

    #@4a
    aget-char v0, v4, v0

    #@4c
    const/16 v1, 0x7b

    #@4e
    if-ne v1, v0, :cond_5

    #@50
    .line 1423
    add-int/lit8 v8, v8, 0x1

    #@52
    .line 1422
    goto :goto_1

    #@53
    .line 1427
    :cond_5
    if-lez v8, :cond_6

    #@55
    .line 1429
    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    #@58
    .line 1430
    const/4 v8, 0x0

    #@59
    :cond_6
    move-object v0, p0

    #@5a
    move-object v1, p1

    #@5b
    .line 1432
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xml/serializer/ToHTMLStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    #@5e
    move-result v11

    #@5f
    .line 1434
    .local v11, "pos":I
    if-eq v3, v11, :cond_7

    #@61
    .line 1436
    add-int/lit8 v3, v11, -0x1

    #@63
    .line 1476
    :goto_2
    add-int/lit8 v9, v3, 0x1

    #@65
    goto :goto_1

    #@66
    .line 1440
    :cond_7
    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_8

    #@6c
    .line 1443
    invoke-virtual {p0, v2, v4, v3, v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeUTF16Surrogate(C[CII)I

    #@6f
    .line 1444
    add-int/lit8 v3, v3, 0x1

    #@71
    .line 1460
    :cond_8
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    #@73
    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    #@76
    move-result-object v10

    #@77
    .line 1461
    .local v10, "outputStringForChar":Ljava/lang/String;
    if-eqz v10, :cond_9

    #@79
    .line 1463
    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@7c
    goto :goto_2

    #@7d
    .line 1465
    :cond_9
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_a

    #@83
    .line 1467
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    #@86
    goto :goto_2

    #@87
    .line 1471
    :cond_a
    const-string/jumbo v0, "&#"

    #@8a
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@8d
    .line 1472
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@94
    .line 1473
    const/16 v0, 0x3b

    #@96
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    #@99
    goto :goto_2

    #@9a
    .line 1482
    .end local v2    # "ch":C
    .end local v10    # "outputStringForChar":Ljava/lang/String;
    .end local v11    # "pos":I
    :cond_b
    if-le v8, v7, :cond_e

    #@9c
    .line 1487
    if-nez v9, :cond_d

    #@9e
    .line 1488
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a1
    .line 1388
    :cond_c
    :goto_3
    return-void

    #@a2
    .line 1490
    :cond_d
    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    #@a5
    goto :goto_3

    #@a6
    .line 1492
    :cond_e
    if-ne v8, v7, :cond_c

    #@a8
    .line 1496
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    #@ab
    goto :goto_3
.end method

.method public writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 27
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "doURLEscaping"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@3
    move-result v12

    #@4
    .line 1168
    .local v12, "end":I
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@8
    move-object/from16 v24, v0

    #@a
    move-object/from16 v0, v24

    #@c
    array-length v0, v0

    #@d
    move/from16 v24, v0

    #@f
    move/from16 v0, v24

    #@11
    if-le v12, v0, :cond_0

    #@13
    .line 1170
    mul-int/lit8 v24, v12, 0x2

    #@15
    add-int/lit8 v24, v24, 0x1

    #@17
    move/from16 v0, v24

    #@19
    new-array v0, v0, [C

    #@1b
    move-object/from16 v24, v0

    #@1d
    move-object/from16 v0, v24

    #@1f
    move-object/from16 v1, p0

    #@21
    iput-object v0, v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@23
    .line 1172
    :cond_0
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@27
    move-object/from16 v24, v0

    #@29
    const/16 v25, 0x0

    #@2b
    const/16 v26, 0x0

    #@2d
    move-object/from16 v0, p2

    #@2f
    move/from16 v1, v25

    #@31
    move-object/from16 v2, v24

    #@33
    move/from16 v3, v26

    #@35
    invoke-virtual {v0, v1, v12, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    #@38
    .line 1173
    move-object/from16 v0, p0

    #@3a
    iget-object v9, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    #@3c
    .line 1175
    .local v9, "chars":[C
    const/4 v11, 0x0

    #@3d
    .line 1176
    .local v11, "cleanStart":I
    const/4 v10, 0x0

    #@3e
    .line 1179
    .local v10, "cleanLength":I
    const/4 v8, 0x0

    #@3f
    .line 1180
    .local v8, "ch":C
    const/4 v15, 0x0

    #@40
    .end local v8    # "ch":C
    .local v15, "i":I
    :goto_0
    if-ge v15, v12, :cond_e

    #@42
    .line 1182
    aget-char v8, v9, v15

    #@44
    .line 1184
    .local v8, "ch":C
    const/16 v24, 0x20

    #@46
    move/from16 v0, v24

    #@48
    if-lt v8, v0, :cond_1

    #@4a
    const/16 v24, 0x7e

    #@4c
    move/from16 v0, v24

    #@4e
    if-le v8, v0, :cond_8

    #@50
    .line 1186
    :cond_1
    if-lez v10, :cond_2

    #@52
    .line 1188
    move-object/from16 v0, p1

    #@54
    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    #@57
    .line 1189
    const/4 v10, 0x0

    #@58
    .line 1191
    :cond_2
    if-eqz p3, :cond_6

    #@5a
    .line 1203
    const/16 v24, 0x7f

    #@5c
    move/from16 v0, v24

    #@5e
    if-gt v8, v0, :cond_3

    #@60
    .line 1205
    const/16 v24, 0x25

    #@62
    move-object/from16 v0, p1

    #@64
    move/from16 v1, v24

    #@66
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@69
    .line 1206
    invoke-static {v8}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@6c
    move-result-object v24

    #@6d
    move-object/from16 v0, p1

    #@6f
    move-object/from16 v1, v24

    #@71
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@74
    .line 1302
    :goto_1
    add-int/lit8 v11, v15, 0x1

    #@76
    .line 1180
    :goto_2
    add-int/lit8 v15, v15, 0x1

    #@78
    goto :goto_0

    #@79
    .line 1208
    :cond_3
    const/16 v24, 0x7ff

    #@7b
    move/from16 v0, v24

    #@7d
    if-gt v8, v0, :cond_4

    #@7f
    .line 1212
    shr-int/lit8 v24, v8, 0x6

    #@81
    move/from16 v0, v24

    #@83
    or-int/lit16 v13, v0, 0xc0

    #@85
    .line 1213
    .local v13, "high":I
    and-int/lit8 v24, v8, 0x3f

    #@87
    move/from16 v0, v24

    #@89
    or-int/lit16 v0, v0, 0x80

    #@8b
    move/from16 v16, v0

    #@8d
    .line 1215
    .local v16, "low":I
    const/16 v24, 0x25

    #@8f
    move-object/from16 v0, p1

    #@91
    move/from16 v1, v24

    #@93
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@96
    .line 1216
    invoke-static {v13}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@99
    move-result-object v24

    #@9a
    move-object/from16 v0, p1

    #@9c
    move-object/from16 v1, v24

    #@9e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@a1
    .line 1217
    const/16 v24, 0x25

    #@a3
    move-object/from16 v0, p1

    #@a5
    move/from16 v1, v24

    #@a7
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@aa
    .line 1218
    invoke-static/range {v16 .. v16}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@ad
    move-result-object v24

    #@ae
    move-object/from16 v0, p1

    #@b0
    move-object/from16 v1, v24

    #@b2
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@b5
    goto :goto_1

    #@b6
    .line 1220
    .end local v13    # "high":I
    .end local v16    # "low":I
    :cond_4
    invoke-static {v8}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    #@b9
    move-result v24

    #@ba
    if-eqz v24, :cond_5

    #@bc
    .line 1230
    and-int/lit16 v14, v8, 0x3ff

    #@be
    .line 1236
    .local v14, "highSurrogate":I
    and-int/lit16 v0, v14, 0x3c0

    #@c0
    move/from16 v24, v0

    #@c2
    shr-int/lit8 v20, v24, 0x6

    #@c4
    .line 1237
    .local v20, "wwww":I
    add-int/lit8 v19, v20, 0x1

    #@c6
    .line 1240
    .local v19, "uuuuu":I
    and-int/lit8 v24, v14, 0x3c

    #@c8
    shr-int/lit8 v23, v24, 0x2

    #@ca
    .line 1243
    .local v23, "zzzz":I
    and-int/lit8 v24, v14, 0x3

    #@cc
    shl-int/lit8 v24, v24, 0x4

    #@ce
    and-int/lit8 v22, v24, 0x30

    #@d0
    .line 1246
    .local v22, "yyyyyy":I
    add-int/lit8 v15, v15, 0x1

    #@d2
    aget-char v8, v9, v15

    #@d4
    .line 1249
    and-int/lit16 v0, v8, 0x3ff

    #@d6
    move/from16 v17, v0

    #@d8
    .line 1252
    .local v17, "lowSurrogate":I
    move/from16 v0, v17

    #@da
    and-int/lit16 v0, v0, 0x3c0

    #@dc
    move/from16 v24, v0

    #@de
    shr-int/lit8 v24, v24, 0x6

    #@e0
    or-int v22, v22, v24

    #@e2
    .line 1255
    and-int/lit8 v21, v17, 0x3f

    #@e4
    .line 1257
    .local v21, "xxxxxx":I
    shr-int/lit8 v24, v19, 0x2

    #@e6
    move/from16 v0, v24

    #@e8
    or-int/lit16 v4, v0, 0xf0

    #@ea
    .line 1259
    .local v4, "byte1":I
    and-int/lit8 v24, v19, 0x3

    #@ec
    shl-int/lit8 v24, v24, 0x4

    #@ee
    and-int/lit8 v24, v24, 0x30

    #@f0
    move/from16 v0, v24

    #@f2
    or-int/lit16 v0, v0, 0x80

    #@f4
    move/from16 v24, v0

    #@f6
    or-int v5, v24, v23

    #@f8
    .line 1260
    .local v5, "byte2":I
    move/from16 v0, v22

    #@fa
    or-int/lit16 v6, v0, 0x80

    #@fc
    .line 1261
    .local v6, "byte3":I
    move/from16 v0, v21

    #@fe
    or-int/lit16 v7, v0, 0x80

    #@100
    .line 1263
    .local v7, "byte4":I
    const/16 v24, 0x25

    #@102
    move-object/from16 v0, p1

    #@104
    move/from16 v1, v24

    #@106
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@109
    .line 1264
    invoke-static {v4}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@10c
    move-result-object v24

    #@10d
    move-object/from16 v0, p1

    #@10f
    move-object/from16 v1, v24

    #@111
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@114
    .line 1265
    const/16 v24, 0x25

    #@116
    move-object/from16 v0, p1

    #@118
    move/from16 v1, v24

    #@11a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@11d
    .line 1266
    invoke-static {v5}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@120
    move-result-object v24

    #@121
    move-object/from16 v0, p1

    #@123
    move-object/from16 v1, v24

    #@125
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@128
    .line 1267
    const/16 v24, 0x25

    #@12a
    move-object/from16 v0, p1

    #@12c
    move/from16 v1, v24

    #@12e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@131
    .line 1268
    invoke-static {v6}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@134
    move-result-object v24

    #@135
    move-object/from16 v0, p1

    #@137
    move-object/from16 v1, v24

    #@139
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@13c
    .line 1269
    const/16 v24, 0x25

    #@13e
    move-object/from16 v0, p1

    #@140
    move/from16 v1, v24

    #@142
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@145
    .line 1270
    invoke-static {v7}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@148
    move-result-object v24

    #@149
    move-object/from16 v0, p1

    #@14b
    move-object/from16 v1, v24

    #@14d
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@150
    goto/16 :goto_1

    #@152
    .line 1274
    .end local v4    # "byte1":I
    .end local v5    # "byte2":I
    .end local v6    # "byte3":I
    .end local v7    # "byte4":I
    .end local v14    # "highSurrogate":I
    .end local v17    # "lowSurrogate":I
    .end local v19    # "uuuuu":I
    .end local v20    # "wwww":I
    .end local v21    # "xxxxxx":I
    .end local v22    # "yyyyyy":I
    .end local v23    # "zzzz":I
    :cond_5
    shr-int/lit8 v24, v8, 0xc

    #@154
    move/from16 v0, v24

    #@156
    or-int/lit16 v13, v0, 0xe0

    #@158
    .line 1275
    .restart local v13    # "high":I
    and-int/lit16 v0, v8, 0xfc0

    #@15a
    move/from16 v24, v0

    #@15c
    shr-int/lit8 v24, v24, 0x6

    #@15e
    move/from16 v0, v24

    #@160
    or-int/lit16 v0, v0, 0x80

    #@162
    move/from16 v18, v0

    #@164
    .line 1277
    .local v18, "middle":I
    and-int/lit8 v24, v8, 0x3f

    #@166
    move/from16 v0, v24

    #@168
    or-int/lit16 v0, v0, 0x80

    #@16a
    move/from16 v16, v0

    #@16c
    .line 1279
    .restart local v16    # "low":I
    const/16 v24, 0x25

    #@16e
    move-object/from16 v0, p1

    #@170
    move/from16 v1, v24

    #@172
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@175
    .line 1280
    invoke-static {v13}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@178
    move-result-object v24

    #@179
    move-object/from16 v0, p1

    #@17b
    move-object/from16 v1, v24

    #@17d
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@180
    .line 1281
    const/16 v24, 0x25

    #@182
    move-object/from16 v0, p1

    #@184
    move/from16 v1, v24

    #@186
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@189
    .line 1282
    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@18c
    move-result-object v24

    #@18d
    move-object/from16 v0, p1

    #@18f
    move-object/from16 v1, v24

    #@191
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@194
    .line 1283
    const/16 v24, 0x25

    #@196
    move-object/from16 v0, p1

    #@198
    move/from16 v1, v24

    #@19a
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@19d
    .line 1284
    invoke-static/range {v16 .. v16}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    #@1a0
    move-result-object v24

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    move-object/from16 v1, v24

    #@1a5
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1a8
    goto/16 :goto_1

    #@1aa
    .line 1288
    .end local v13    # "high":I
    .end local v16    # "low":I
    .end local v18    # "middle":I
    :cond_6
    move-object/from16 v0, p0

    #@1ac
    invoke-virtual {v0, v8}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    #@1af
    move-result v24

    #@1b0
    if-eqz v24, :cond_7

    #@1b2
    .line 1290
    move-object/from16 v0, p1

    #@1b4
    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    #@1b7
    goto/16 :goto_1

    #@1b9
    .line 1294
    :cond_7
    const-string/jumbo v24, "&#"

    #@1bc
    move-object/from16 v0, p1

    #@1be
    move-object/from16 v1, v24

    #@1c0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1c3
    .line 1295
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c6
    move-result-object v24

    #@1c7
    move-object/from16 v0, p1

    #@1c9
    move-object/from16 v1, v24

    #@1cb
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1ce
    .line 1296
    const/16 v24, 0x3b

    #@1d0
    move-object/from16 v0, p1

    #@1d2
    move/from16 v1, v24

    #@1d4
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    #@1d7
    goto/16 :goto_1

    #@1d9
    .line 1307
    :cond_8
    const/16 v24, 0x22

    #@1db
    move/from16 v0, v24

    #@1dd
    if-ne v8, v0, :cond_b

    #@1df
    .line 1319
    if-lez v10, :cond_9

    #@1e1
    .line 1321
    move-object/from16 v0, p1

    #@1e3
    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    #@1e6
    .line 1322
    const/4 v10, 0x0

    #@1e7
    .line 1327
    :cond_9
    if-eqz p3, :cond_a

    #@1e9
    .line 1328
    const-string/jumbo v24, "%22"

    #@1ec
    move-object/from16 v0, p1

    #@1ee
    move-object/from16 v1, v24

    #@1f0
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@1f3
    .line 1334
    :goto_3
    add-int/lit8 v11, v15, 0x1

    #@1f5
    goto/16 :goto_2

    #@1f7
    .line 1330
    :cond_a
    const-string/jumbo v24, "&quot;"

    #@1fa
    move-object/from16 v0, p1

    #@1fc
    move-object/from16 v1, v24

    #@1fe
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@201
    goto :goto_3

    #@202
    .line 1336
    :cond_b
    const/16 v24, 0x26

    #@204
    move/from16 v0, v24

    #@206
    if-ne v8, v0, :cond_d

    #@208
    .line 1341
    if-lez v10, :cond_c

    #@20a
    .line 1343
    move-object/from16 v0, p1

    #@20c
    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    #@20f
    .line 1344
    const/4 v10, 0x0

    #@210
    .line 1346
    :cond_c
    const-string/jumbo v24, "&amp;"

    #@213
    move-object/from16 v0, p1

    #@215
    move-object/from16 v1, v24

    #@217
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@21a
    .line 1347
    add-int/lit8 v11, v15, 0x1

    #@21c
    goto/16 :goto_2

    #@21e
    .line 1353
    :cond_d
    add-int/lit8 v10, v10, 0x1

    #@220
    goto/16 :goto_2

    #@222
    .line 1359
    .end local v8    # "ch":C
    :cond_e
    const/16 v24, 0x1

    #@224
    move/from16 v0, v24

    #@226
    if-le v10, v0, :cond_11

    #@228
    .line 1364
    if-nez v11, :cond_10

    #@22a
    .line 1365
    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    #@22d
    .line 1150
    :cond_f
    :goto_4
    return-void

    #@22e
    .line 1367
    :cond_10
    move-object/from16 v0, p1

    #@230
    invoke-virtual {v0, v9, v11, v10}, Ljava/io/Writer;->write([CII)V

    #@233
    goto :goto_4

    #@234
    .line 1369
    :cond_11
    const/16 v24, 0x1

    #@236
    move/from16 v0, v24

    #@238
    if-ne v10, v0, :cond_f

    #@23a
    .line 1373
    move-object/from16 v0, p1

    #@23c
    invoke-virtual {v0, v8}, Ljava/io/Writer;->write(I)V

    #@23f
    goto :goto_4
.end method
