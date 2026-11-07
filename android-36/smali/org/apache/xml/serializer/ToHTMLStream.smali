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
.field private static final greylist m_dummy:Lorg/apache/xml/serializer/ElemDesc;

.field static final greylist m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# instance fields
.field private greylist m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

.field private final greylist m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

.field private greylist m_inBlockElem:Z

.field protected greylist m_inDTD:Z

.field private greylist m_omitMetaTag:Z

.field private greylist m_specialEscapeURLs:Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    .line 65
    invoke-static {v0}, Lorg/apache/xml/serializer/ToHTMLStream;->initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    .line 522
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 5

    .line 662
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 51
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 57
    sget-object v1, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v2, "html"

    .line 59
    invoke-static {v1, v2}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    const/4 v2, 0x1

    .line 525
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 528
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 643
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    sget-object v3, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    .line 666
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 667
    iput-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 669
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public static final greylist getElemDesc(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .registers 2

    .line 631
    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 633
    check-cast p0, Lorg/apache/xml/serializer/ElemDesc;

    return-object p0

    .line 634
    :cond_b
    sget-object p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    return-object p0
.end method

.method private greylist getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .registers 2

    .line 650
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 652
    check-cast p0, Lorg/apache/xml/serializer/ElemDesc;

    return-object p0

    .line 653
    :cond_b
    sget-object p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    return-object p0
.end method

.method private final greylist getOmitMetaTag()Z
    .registers 1

    .line 615
    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return p0
.end method

.method private final greylist getSpecialEscapeURLs()Z
    .registers 1

    .line 605
    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return p0
.end method

.method static greylist initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .registers 13

    .line 70
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "BASEFONT"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v3, "FRAME"

    invoke-virtual {p0, v3, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "FRAMESET"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "NOFRAMES"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "ISINDEX"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/high16 v4, 0x200000

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "APPLET"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "CENTER"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "DIR"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v4, "MENU"

    invoke-virtual {p0, v4, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "TT"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "I"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "B"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "BIG"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "SMALL"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v5, 0x2000

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "EM"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "STRONG"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "DFN"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "CODE"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "SAMP"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "KBD"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "VAR"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v6, "CITE"

    invoke-virtual {p0, v6, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "ABBR"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "ACRONYM"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v5, 0x18000

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "SUP"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "SUB"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "SPAN"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "BDO"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v7, 0x1800a

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "BR"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v7, "BODY"

    invoke-virtual {p0, v7, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v7, 0x38

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v8, "ADDRESS"

    invoke-virtual {p0, v8, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v8, "DIV"

    invoke-virtual {p0, v8, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v8, 0x8000

    invoke-direct {v0, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v8, "A"

    invoke-virtual {p0, v8, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v8, 0x18008

    invoke-direct {v0, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v8, "MAP"

    invoke-virtual {p0, v8, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v8, "AREA"

    invoke-virtual {p0, v8, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v8, 0x2000a

    invoke-direct {v0, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "LINK"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v9, 0x218002

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "IMG"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v9, 0x238000

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "OBJECT"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "PARAM"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v9, 0x3a

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "HR"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "P"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v9, 0x40008

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "H1"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "H2"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "H3"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "H4"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "H5"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "H6"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v9, 0x100008

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "PRE"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "Q"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "BLOCKQUOTE"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "INS"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "DEL"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "DL"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "DT"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "DD"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v9, 0x80008

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "OL"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "UL"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "LI"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "FORM"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v9, 0x4000

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "LABEL"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v9, 0x4802

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "INPUT"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v9, 0x4800

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "SELECT"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "OPTGROUP"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "OPTION"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "TEXTAREA"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v10, 0x18

    invoke-direct {v0, v10}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "FIELDSET"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v10, "LEGEND"

    invoke-virtual {p0, v10, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v9}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "BUTTON"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "TABLE"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "CAPTION"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "THEAD"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "TFOOT"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "TBODY"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "COLGROUP"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "COL"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "TR"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v9, "TH"

    invoke-virtual {p0, v9, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "TD"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v5, 0x400008

    invoke-direct {v0, v5}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v5, "HEAD"

    invoke-virtual {p0, v5, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v3, "TITLE"

    invoke-virtual {p0, v3, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "BASE"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "META"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v2, 0x20108

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "STYLE"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v2, 0x38100

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "SCRIPT"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "NOSCRIPT"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const v2, 0x800008

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "HTML"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "FONT"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "S"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "STRIKE"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "U"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "NOBR"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "IFRAME"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "LAYER"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v0, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    const-string v2, "ILAYER"

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 348
    const-string v2, "HREF"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 349
    const-string v3, "NAME"

    invoke-virtual {v0, v3, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 352
    const-string v0, "area"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 354
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 355
    const-string v3, "NOHREF"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 358
    const-string v0, "base"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 360
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 363
    const-string v0, "button"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 364
    const-string v3, "DISABLED"

    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 367
    const-string v0, "blockquote"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 369
    invoke-virtual {v0, v6, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 372
    const-string v0, "del"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 373
    invoke-virtual {v0, v6, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 376
    const-string v0, "dir"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 377
    const-string v5, "COMPACT"

    invoke-virtual {v0, v5, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 381
    const-string v0, "div"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 382
    const-string v7, "SRC"

    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 383
    const-string v8, "NOWRAP"

    invoke-virtual {v0, v8, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 386
    const-string v0, "dl"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 387
    invoke-virtual {v0, v5, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 390
    const-string v0, "form"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 391
    const-string v9, "ACTION"

    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 395
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 396
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 397
    const-string v9, "LONGDESC"

    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 398
    const-string v10, "NORESIZE"

    invoke-virtual {v0, v10, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 401
    const-string v0, "head"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 402
    const-string v10, "PROFILE"

    invoke-virtual {v0, v10, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 405
    const-string v0, "hr"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 406
    const-string v10, "NOSHADE"

    invoke-virtual {v0, v10, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 410
    const-string v0, "iframe"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 411
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 412
    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 416
    const-string v0, "ilayer"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 417
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 420
    const-string v0, "img"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 421
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 422
    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 423
    const-string v9, "USEMAP"

    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 424
    const-string v10, "ISMAP"

    invoke-virtual {v0, v10, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 427
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 429
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 430
    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 431
    const-string v11, "CHECKED"

    invoke-virtual {v0, v11, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 433
    invoke-virtual {v0, v10, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 434
    const-string v10, "READONLY"

    invoke-virtual {v0, v10, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 437
    const-string v0, "ins"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 438
    invoke-virtual {v0, v6, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 442
    const-string v0, "layer"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 443
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 446
    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 447
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 450
    const-string v0, "menu"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 451
    invoke-virtual {v0, v5, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 454
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 456
    const-string v2, "CLASSID"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 457
    const-string v2, "CODEBASE"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 458
    const-string v2, "DATA"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 459
    const-string v2, "ARCHIVE"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 460
    invoke-virtual {v0, v9, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 461
    const-string v2, "DECLARE"

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 464
    const-string v0, "ol"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 465
    invoke-virtual {v0, v5, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 468
    const-string v0, "optgroup"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 469
    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 472
    const-string v0, "option"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 473
    const-string v2, "SELECTED"

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 477
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 478
    invoke-virtual {v0, v6, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 481
    const-string v0, "script"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 482
    invoke-virtual {v0, v7, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 483
    const-string v2, "FOR"

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 484
    const-string v1, "DEFER"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 487
    const-string v0, "select"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 488
    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 489
    const-string v1, "MULTIPLE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 492
    const-string v0, "table"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 493
    invoke-virtual {v0, v8, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 496
    const-string v0, "td"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 497
    invoke-virtual {v0, v8, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 500
    const-string v0, "textarea"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 501
    invoke-virtual {v0, v3, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 502
    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 505
    const-string v0, "th"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 506
    invoke-virtual {v0, v8, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 511
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 512
    invoke-virtual {v0, v8, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 515
    const-string v0, "ul"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/ElemDesc;

    .line 516
    invoke-virtual {p0, v5, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    return-void
.end method

.method private greylist isASCIIDigit(C)Z
    .registers 2

    .line 0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_a

    const/16 p0, 0x39

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private greylist isHHSign(Ljava/lang/String;)Z
    .registers 2

    const/16 p0, 0x10

    .line 1129
    :try_start_2
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist makeHHString(I)Ljava/lang/String;
    .registers 3

    .line 1110
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 1111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method private greylist outputDocTypeDecl(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 701
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-ne v0, v1, :cond_4f

    .line 703
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getDoctypePublic()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_11

    if-eqz v1, :cond_4f

    .line 707
    :cond_11
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 710
    :try_start_13
    const-string v3, "<!DOCTYPE "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x22

    if-eqz v1, :cond_2a

    .line 715
    const-string v3, " PUBLIC \""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V

    :cond_2a
    if-eqz v0, :cond_3f

    if-nez v1, :cond_34

    .line 723
    const-string v1, " SYSTEM \""

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_39

    .line 725
    :cond_34
    const-string v1, " \""

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 727
    :goto_39
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V

    :cond_3f
    const/16 p1, 0x3e

    .line 731
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(I)V

    .line 732
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_48

    goto :goto_4f

    :catch_48
    move-exception p0

    .line 736
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    .line 741
    iput-boolean p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    return-void
.end method

.method private greylist resetToHTMLStream()V
    .registers 2

    const/4 v0, 0x0

    .line 2025
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 2026
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 2027
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    const/4 v0, 0x1

    .line 2028
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method


# virtual methods
.method public greylist addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1935
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2} :catch_57

    and-int/lit8 v1, p3, 0x1

    const/16 v2, 0x22

    .line 1936
    const-string v3, "=\""

    const/16 v4, 0x20

    if-lez v1, :cond_22

    :try_start_c
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v1, v1, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v1, :cond_22

    .line 1943
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 1944
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_22
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_39

    .line 1951
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1953
    :cond_32
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 1954
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 1958
    :cond_39
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 1959
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x4

    if-lez p1, :cond_4c

    .line 1963
    iget-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_53

    .line 1967
    :cond_4c
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :goto_53
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p0

    .line 1972
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final greylist cdata([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1597
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v1, "SCRIPT"

    .line 1598
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "STYLE"

    .line 1599
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_20

    :cond_1b
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    goto :goto_56

    .line 1603
    :cond_20
    :goto_20
    :try_start_20
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_2e

    .line 1605
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1606
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_2e
    const/4 v0, 0x1

    .line 1609
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1611
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1612
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 1615
    :cond_3a
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception v0

    move-object p0, v0

    .line 1619
    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    .line 1620
    invoke-virtual {p2, p3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 1629
    :goto_56
    invoke-super {v0, v1, v2, v3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    return-void
.end method

.method public final whitelist test-api characters([CII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    if-eqz v1, :cond_38

    .line 1538
    :try_start_6
    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_12

    .line 1540
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1541
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    :cond_12
    const/4 v0, 0x1

    .line 1544
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1546
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToStream;->m_lineSepUse:Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/serializer/ToStream;->writeNormalizedChars([CIIZZ)V

    .line 1549
    iget-object p0, v1, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p0, :cond_26

    .line 1550
    invoke-super {v1, v2, v3, v4}, Lorg/apache/xml/serializer/SerializerBase;->fireCharEvent([CII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    move-object p0, v0

    .line 1556
    new-instance p1, Lorg/xml/sax/SAXException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p3, "ER_OIERROR"

    const/4 v0, 0x0

    .line 1557
    invoke-virtual {p2, p3, v0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_38
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1562
    invoke-super {v1, v2, v3, v4}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    return-void
.end method

.method protected greylist closeStartTag()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1796
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_b

    .line 1797
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 1799
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1802
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    .line 1804
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 1807
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1813
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v0, :cond_30

    .line 1814
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->isCdataSection()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 1815
    :cond_30
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    .line 1817
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 1818
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean p0, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3e} :catch_3f

    :cond_3e
    return-void

    :catch_3f
    move-exception p0

    .line 1824
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public whitelist test-api comment([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1980
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    if-eqz v0, :cond_5

    return-void

    .line 1987
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_14

    .line 1989
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1990
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_23

    .line 1992
    :cond_14
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_1c

    .line 1994
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    goto :goto_23

    .line 1996
    :cond_1c
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_23

    .line 1998
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    .line 2006
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v0, :cond_2c

    .line 2007
    const-string v0, "html"

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    .line 2009
    :cond_2c
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->comment([CII)V

    return-void
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1874
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    return-void
.end method

.method public final whitelist test-api endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 756
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    if-nez v0, :cond_16

    .line 760
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_16

    :catch_f
    move-exception p0

    .line 764
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 768
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushWriter()V

    .line 769
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_20

    .line 770
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireEndDoc()V

    :cond_20
    return-void
.end method

.method public final greylist endElement(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1753
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 935
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_7

    .line 936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    :cond_7
    if-eqz p1, :cond_13

    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 941
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 949
    :cond_13
    :try_start_13
    iget-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 950
    iget-object p2, p1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 951
    invoke-virtual {p2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result p2

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    move v0, v1

    .line 955
    :goto_24
    iget-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz v3, :cond_53

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    move v4, v1

    .line 960
    :goto_2f
    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-eqz v5, :cond_36

    .line 962
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    goto :goto_42

    :cond_36
    if-eqz v3, :cond_42

    .line 964
    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v3, :cond_3e

    if-eqz v4, :cond_42

    .line 966
    :cond_3e
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    move v3, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v3, v1

    .line 969
    :goto_43
    iget-boolean v5, p1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v5, :cond_4f

    if-eqz v3, :cond_4f

    .line 970
    iget v3, p1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/apache/xml/serializer/ToStream;->indent(I)V

    :cond_4f
    xor-int/lit8 v3, v4, 0x1

    .line 971
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 974
    :cond_53
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 975
    iget-boolean v4, p1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/16 v5, 0x3e

    if-nez v4, :cond_67

    .line 977
    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v3, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_91

    .line 986
    :cond_67
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v4, :cond_6e

    .line 987
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireStartElem(Ljava/lang/String;)V

    .line 991
    :cond_6e
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v4

    if-lez v4, :cond_80

    .line 994
    iget-object v6, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v6, v4}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    .line 996
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v4}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    :cond_80
    if-nez v0, :cond_8e

    .line 1005
    const-string v4, "></"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v3, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_91

    .line 1011
    :cond_8e
    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    :goto_91
    const/high16 v3, 0x200000

    and-int/2addr p2, v3

    if-eqz p2, :cond_98

    .line 1017
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    .line 1018
    :cond_98
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 1021
    iget-object p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz p2, :cond_a1

    .line 1022
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/SerializerBase;->fireEndElem(Ljava/lang/String;)V

    :cond_a1
    if-eqz v0, :cond_a8

    .line 1030
    iget-object p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    return-void

    .line 1035
    :cond_a8
    iget-boolean p2, p1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez p2, :cond_bd

    .line 1037
    iget-boolean p2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p2, :cond_bd

    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p2}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_bd

    .line 1038
    iget-object p2, p0, Lorg/apache/xml/serializer/ToStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {p2}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    .line 1040
    :cond_bd
    iget-object p1, p1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_c1} :catch_c2

    return-void

    :catch_c2
    move-exception p0

    .line 1045
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public final greylist entityReference(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1738
    :try_start_0
    iget-object p0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v0, 0x26

    .line 1739
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 1740
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    .line 1741
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 1745
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 1847
    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1848
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1854
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_1a
    const/4 v0, 0x0

    .line 1857
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method protected greylist processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1066
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1068
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_11
    if-eqz p4, :cond_1e

    const/4 v0, 0x4

    .line 1070
    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1072
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 1079
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1080
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_35

    const/4 v0, 0x2

    .line 1082
    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 1083
    iget-boolean p2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_3c

    .line 1085
    :cond_35
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    const/16 p0, 0x22

    .line 1086
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public greylist processAttributes(Ljava/io/Writer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_19

    .line 1775
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 1777
    invoke-virtual {v1, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 1778
    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 1775
    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->flushPending()V

    .line 1653
    const-string v0, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->startNonEscaping()V

    goto/16 :goto_7f

    .line 1657
    :cond_10
    const-string v0, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1659
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->endNonEscaping()V

    goto :goto_7f

    .line 1666
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1668
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1669
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_3a

    .line 1671
    :cond_2b
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v0, :cond_33

    .line 1673
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    goto :goto_3a

    .line 1675
    :cond_33
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_3a

    .line 1677
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    .line 1687
    :cond_3a
    :goto_3a
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x1

    if-ne v2, v0, :cond_44

    .line 1688
    const-string v0, "html"

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    .line 1691
    :cond_44
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1692
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 1694
    :cond_4d
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 1696
    const-string v3, "<?"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6c

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_6c

    const/16 v1, 0x20

    .line 1700
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1703
    :cond_6c
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3e

    .line 1704
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1709
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-gtz v0, :cond_7d

    .line 1710
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->outputLineSep()V

    .line 1712
    :cond_7d
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_7f} :catch_87

    .line 1721
    :goto_7f
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_86

    .line 1722
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/SerializerBase;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    return-void

    :catch_87
    move-exception p0

    .line 1716
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist reset()Z
    .registers 2

    .line 2014
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2017
    :cond_8
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->resetToHTMLStream()V

    const/4 p0, 0x1

    return p0
.end method

.method public greylist setOmitMetaTag(Z)V
    .registers 2

    .line 547
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return-void
.end method

.method public greylist setOutputFormat(Ljava/util/Properties;)V
    .registers 4

    .line 574
    const-string v0, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 577
    invoke-static {v0, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 587
    :cond_e
    const-string v0, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 590
    invoke-static {v0, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 595
    :cond_1c
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputFormat(Ljava/util/Properties;)V

    return-void
.end method

.method public greylist setSpecialEscapeURLs(Z)V
    .registers 2

    .line 537
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1863
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 1864
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected greylist startDocumentInternal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 686
    invoke-super {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x1

    .line 689
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 690
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 691
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/SerializerBase;->setOmitXMLDeclaration(Z)V

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 797
    iget-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 799
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 800
    iput-boolean v2, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    goto :goto_20

    .line 802
    :cond_d
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    if-eqz v1, :cond_17

    .line 804
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->closeCDATA()V

    .line 805
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    goto :goto_20

    .line 807
    :cond_17
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    if-eqz v1, :cond_20

    .line 809
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    .line 810
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 813
    :cond_20
    :goto_20
    iget-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    if-eqz v1, :cond_33

    if-eqz p3, :cond_2f

    .line 815
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_2f

    :cond_2d
    move-object v1, p3

    goto :goto_30

    :cond_2f
    :goto_2f
    move-object v1, p2

    .line 820
    :goto_30
    invoke-direct {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    :cond_33
    if-eqz p1, :cond_3f

    .line 825
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3f

    .line 827
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    .line 835
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToHTMLStream;->getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;

    move-result-object v1

    .line 836
    invoke-virtual {v1}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result v3

    .line 839
    iget-boolean v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6c

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_52

    move v4, v5

    goto :goto_53

    :cond_52
    move v4, v2

    .line 843
    :goto_53
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    if-eqz v6, :cond_5a

    .line 844
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_ispreserve:Z

    goto :goto_69

    .line 845
    :cond_5a
    iget-object v6, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v6, :cond_69

    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v6, :cond_64

    if-eqz v4, :cond_69

    .line 851
    :cond_64
    iput-boolean v5, p0, Lorg/apache/xml/serializer/ToStream;->m_startNewLine:Z

    .line 853
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    :cond_69
    :goto_69
    xor-int/2addr v4, v5

    .line 856
    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    :cond_6c
    if-eqz p4, :cond_71

    .line 861
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 863
    :cond_71
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToStream;->m_isprevtext:Z

    .line 864
    iget-object p4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    const/16 v4, 0x3c

    .line 865
    invoke-virtual {p4, v4}, Ljava/io/Writer;->write(I)V

    .line 866
    invoke-virtual {p4, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 870
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v4, :cond_84

    .line 871
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->firePseudoAttributes()V

    :cond_84
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_93

    .line 877
    invoke-virtual {v0}, Lorg/apache/xml/serializer/ElemContext;->push()Lorg/apache/xml/serializer/ElemContext;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 881
    iput-object p3, p1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 882
    iput-object v1, p1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    return-void

    .line 887
    :cond_93
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object p1

    .line 888
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 889
    iput-object v1, p1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    and-int/lit16 p2, v3, 0x100

    if-eqz p2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v5, v2

    .line 890
    :goto_a1
    iput-boolean v5, p1, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    const/high16 p2, 0x400000

    and-int/2addr p2, v3

    if-eqz p2, :cond_cd

    .line 897
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 898
    iput-boolean v2, p1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 899
    iget-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    if-nez p1, :cond_cd

    .line 901
    iget-boolean p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    if-eqz p1, :cond_b8

    .line 902
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToStream;->indent()V

    .line 903
    :cond_b8
    const-string p1, "<META http-equiv=\"Content-Type\" content=\"text/html; charset="

    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    .line 906
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 907
    invoke-virtual {p4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 908
    const-string p0, "\">"

    invoke-virtual {p4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_cd} :catch_ce

    :cond_cd
    return-void

    :catch_ce
    move-exception p0

    .line 914
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1391
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    array-length p3, p3

    const/4 v8, 0x1

    if-le v5, p3, :cond_11

    mul-int/lit8 p3, v5, 0x2

    add-int/2addr p3, v8

    .line 1393
    new-array p3, p3, [C

    iput-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    .line 1395
    :cond_11
    iget-object p3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v9, 0x0

    invoke-virtual {p2, v9, v5, p3, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1396
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    move p3, v9

    move v0, p3

    move v1, v0

    move v3, v1

    :goto_1d
    if-ge v3, v5, :cond_a6

    .line 1406
    aget-char v2, v4, v3

    .line 1412
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v1, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v1

    if-nez v1, :cond_36

    :goto_2f
    add-int/lit8 p3, p3, 0x1

    move-object v6, v4

    move-object v4, p1

    move-object p1, p0

    goto/16 :goto_9f

    :cond_36
    const/16 v1, 0x3c

    if-eq v1, v2, :cond_3e

    const/16 v1, 0x3e

    if-ne v1, v2, :cond_42

    :cond_3e
    move-object v6, v4

    move-object v4, p1

    move-object p1, p0

    goto :goto_9d

    :cond_42
    const/16 v1, 0x26

    if-ne v1, v2, :cond_51

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v5, :cond_51

    const/16 v6, 0x7b

    .line 1420
    aget-char v1, v4, v1

    if-ne v6, v1, :cond_51

    goto :goto_2f

    :cond_51
    if-lez p3, :cond_57

    .line 1429
    invoke-virtual {p1, v4, v0, p3}, Ljava/io/Writer;->write([CII)V

    move p3, v9

    :cond_57
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1432
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xml/serializer/ToStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result p0

    move-object p1, v0

    move-object v6, v4

    move-object v4, v1

    if-eq v3, p0, :cond_68

    add-int/lit8 p0, p0, -0x1

    move v3, p0

    goto :goto_9a

    .line 1440
    :cond_68
    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result p0

    if-eqz p0, :cond_73

    .line 1443
    invoke-virtual {p1, v2, v6, v3, v5}, Lorg/apache/xml/serializer/ToStream;->writeUTF16Surrogate(C[CII)I

    add-int/lit8 v3, v3, 0x1

    .line 1460
    :cond_73
    iget-object p0, p1, Lorg/apache/xml/serializer/ToStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7f

    .line 1463
    invoke-virtual {v4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_9a

    .line 1465
    :cond_7f
    invoke-virtual {p1, v2}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 1467
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_9a

    .line 1471
    :cond_89
    const-string p0, "&#"

    invoke-virtual {v4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1472
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p0, 0x3b

    .line 1473
    invoke-virtual {v4, p0}, Ljava/io/Writer;->write(I)V

    :goto_9a
    add-int/lit8 v0, v3, 0x1

    goto :goto_9f

    :goto_9d
    add-int/lit8 p3, p3, 0x1

    :goto_9f
    add-int/2addr v3, v8

    move-object p0, p1

    move v1, v2

    move-object p1, v4

    move-object v4, v6

    goto/16 :goto_1d

    :cond_a6
    move-object v6, v4

    move-object v4, p1

    if-le p3, v8, :cond_b4

    if-nez v0, :cond_b0

    .line 1488
    invoke-virtual {v4, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 1490
    :cond_b0
    invoke-virtual {v4, v6, v0, p3}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_b4
    if-ne p3, v8, :cond_b9

    .line 1496
    invoke-virtual {v4, v1}, Ljava/io/Writer;->write(I)V

    :cond_b9
    return-void
.end method

.method public greylist writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1167
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1168
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    array-length v3, v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_15

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v4

    .line 1170
    new-array v3, v3, [C

    iput-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    .line 1172
    :cond_15
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v6, v5, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1173
    iget-object v3, v0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_23
    if-ge v7, v2, :cond_144

    .line 1182
    aget-char v10, v3, v7

    const/16 v11, 0x20

    if-lt v10, v11, :cond_5f

    const/16 v11, 0x7e

    if-le v10, v11, :cond_30

    goto :goto_5f

    :cond_30
    const/16 v11, 0x22

    if-ne v10, v11, :cond_4b

    if-lez v8, :cond_3a

    .line 1321
    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    move v8, v5

    :cond_3a
    if-eqz p3, :cond_42

    .line 1328
    const-string v9, "%22"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_47

    .line 1330
    :cond_42
    const-string v9, "&quot;"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_47
    add-int/lit8 v9, v7, 0x1

    goto/16 :goto_141

    :cond_4b
    const/16 v11, 0x26

    if-ne v10, v11, :cond_5b

    if-lez v8, :cond_55

    .line 1343
    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    move v8, v5

    .line 1346
    :cond_55
    const-string v9, "&amp;"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_47

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_141

    :cond_5f
    :goto_5f
    if-lez v8, :cond_65

    .line 1188
    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    move v8, v5

    :cond_65
    if-eqz p3, :cond_123

    const/16 v9, 0x7f

    const/16 v11, 0x25

    if-gt v10, v9, :cond_78

    .line 1205
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1206
    invoke-static {v10}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_47

    :cond_78
    const/16 v9, 0x7ff

    if-gt v10, v9, :cond_99

    shr-int/lit8 v9, v10, 0x6

    or-int/lit16 v9, v9, 0xc0

    and-int/lit8 v12, v10, 0x3f

    or-int/lit16 v12, v12, 0x80

    .line 1215
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1216
    invoke-static {v9}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1218
    invoke-static {v12}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_47

    .line 1220
    :cond_99
    invoke-static {v10}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v9

    if-eqz v9, :cond_f5

    and-int/lit16 v9, v10, 0x3c0

    shr-int/lit8 v9, v9, 0x6

    add-int/2addr v9, v4

    and-int/lit8 v12, v10, 0x3c

    shr-int/lit8 v12, v12, 0x2

    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0x30

    add-int/lit8 v7, v7, 0x1

    .line 1246
    aget-char v13, v3, v7

    and-int/lit16 v14, v13, 0x3c0

    shr-int/lit8 v14, v14, 0x6

    or-int/2addr v10, v14

    and-int/lit8 v14, v13, 0x3f

    shr-int/lit8 v15, v9, 0x2

    or-int/lit16 v15, v15, 0xf0

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0x30

    or-int/lit16 v9, v9, 0x80

    or-int/2addr v9, v12

    or-int/lit16 v10, v10, 0x80

    or-int/lit16 v12, v14, 0x80

    .line 1263
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1264
    invoke-static {v15}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1266
    invoke-static {v9}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1268
    invoke-static {v10}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1270
    invoke-static {v12}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v10, v13

    goto/16 :goto_47

    :cond_f5
    shr-int/lit8 v9, v10, 0xc

    or-int/lit16 v9, v9, 0xe0

    and-int/lit16 v12, v10, 0xfc0

    shr-int/lit8 v12, v12, 0x6

    or-int/lit16 v12, v12, 0x80

    and-int/lit8 v13, v10, 0x3f

    or-int/lit16 v13, v13, 0x80

    .line 1279
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1280
    invoke-static {v9}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1282
    invoke-static {v12}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v1, v11}, Ljava/io/Writer;->write(I)V

    .line 1284
    invoke-static {v13}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1288
    :cond_123
    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/ToStream;->escapingNotNeeded(C)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 1290
    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_47

    .line 1294
    :cond_12e
    const-string v9, "&#"

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1295
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v9, 0x3b

    .line 1296
    invoke-virtual {v1, v9}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_47

    :goto_141
    add-int/2addr v7, v4

    goto/16 :goto_23

    :cond_144
    if-le v8, v4, :cond_150

    if-nez v9, :cond_14c

    .line 1365
    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 1367
    :cond_14c
    invoke-virtual {v1, v3, v9, v8}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_150
    if-ne v8, v4, :cond_155

    .line 1373
    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(I)V

    :cond_155
    return-void
.end method
