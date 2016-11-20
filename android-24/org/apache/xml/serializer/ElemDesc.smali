.class public final Lorg/apache/xml/serializer/ElemDesc;
.super Ljava/lang/Object;
.source "ElemDesc.java"


# static fields
.field static final ASPECIAL:I = 0x10000

.field public static final ATTREMPTY:I = 0x4

.field public static final ATTRURL:I = 0x2

.field static final BLOCK:I = 0x8

.field static final BLOCKFORM:I = 0x10

.field static final BLOCKFORMFIELDSET:I = 0x20

.field private static final CDATA:I = 0x40

.field static final EMPTY:I = 0x2

.field private static final FLOW:I = 0x4

.field static final FONTSTYLE:I = 0x1000

.field static final FORMCTRL:I = 0x4000

.field static final HEAD:I = 0x40000

.field static final HEADELEM:I = 0x400000

.field static final HEADMISC:I = 0x20000

.field static final HTMLELEM:I = 0x800000

.field private static final INLINE:I = 0x200

.field private static final INLINEA:I = 0x400

.field static final INLINELABEL:I = 0x800

.field static final LIST:I = 0x80000

.field private static final PCDATA:I = 0x80

.field static final PHRASE:I = 0x2000

.field static final PREFORMATTED:I = 0x100000

.field static final RAW:I = 0x100

.field static final SPECIAL:I = 0x8000

.field static final WHITESPACESENSITIVE:I = 0x200000


# instance fields
.field private m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

.field private m_flags:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@6
    .line 127
    iput p1, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    #@8
    .line 125
    return-void
.end method

.method private is(I)Z
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 142
    iget v1, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method


# virtual methods
.method getFlags()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    #@2
    return v0
.end method

.method public isAttrFlagSet(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    iget-object v1, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 176
    iget-object v1, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@7
    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/utils/StringToIntTable;->getIgnoreCase(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    and-int/2addr v1, p2

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    .line 175
    :cond_0
    return v0
.end method

.method setAttr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 160
    new-instance v0, Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@6
    invoke-direct {v0}, Lorg/apache/xml/serializer/utils/StringToIntTable;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@b
    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    #@d
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/serializer/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@10
    .line 156
    return-void
.end method
