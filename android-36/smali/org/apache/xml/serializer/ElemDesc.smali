.class public final Lorg/apache/xml/serializer/ElemDesc;
.super Ljava/lang/Object;
.source "ElemDesc.java"


# static fields
.field static final greylist ASPECIAL:I = 0x10000

.field public static final greylist ATTREMPTY:I = 0x4

.field public static final greylist ATTRURL:I = 0x2

.field static final greylist BLOCK:I = 0x8

.field static final greylist BLOCKFORM:I = 0x10

.field static final greylist BLOCKFORMFIELDSET:I = 0x20

.field private static final greylist CDATA:I = 0x40

.field static final greylist EMPTY:I = 0x2

.field private static final greylist FLOW:I = 0x4

.field static final greylist FONTSTYLE:I = 0x1000

.field static final greylist FORMCTRL:I = 0x4000

.field static final greylist HEAD:I = 0x40000

.field static final greylist HEADELEM:I = 0x400000

.field static final greylist HEADMISC:I = 0x20000

.field static final greylist HTMLELEM:I = 0x800000

.field private static final greylist INLINE:I = 0x200

.field private static final greylist INLINEA:I = 0x400

.field static final greylist INLINELABEL:I = 0x800

.field static final greylist LIST:I = 0x80000

.field private static final greylist PCDATA:I = 0x80

.field static final greylist PHRASE:I = 0x2000

.field static final greylist PREFORMATTED:I = 0x100000

.field static final greylist RAW:I = 0x100

.field static final greylist SPECIAL:I = 0x8000

.field static final greylist WHITESPACESENSITIVE:I = 0x200000


# instance fields
.field private greylist m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

.field private greylist m_flags:I


# direct methods
.method constructor greylist <init>(I)V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    .line 127
    iput p1, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    return-void
.end method

.method private greylist is(I)Z
    .registers 2

    .line 142
    iget p0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method greylist getFlags()I
    .registers 1

    .line 146
    iget p0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_flags:I

    return p0
.end method

.method public greylist isAttrFlagSet(Ljava/lang/String;I)Z
    .registers 4

    .line 175
    iget-object p0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 176
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/StringToIntTable;->getIgnoreCase(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, p2

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method greylist setAttr(Ljava/lang/String;I)V
    .registers 4

    .line 159
    iget-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    if-nez v0, :cond_b

    .line 160
    new-instance v0, Lorg/apache/xml/serializer/utils/StringToIntTable;

    invoke-direct {v0}, Lorg/apache/xml/serializer/utils/StringToIntTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    .line 162
    :cond_b
    iget-object p0, p0, Lorg/apache/xml/serializer/ElemDesc;->m_attrs:Lorg/apache/xml/serializer/utils/StringToIntTable;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method
