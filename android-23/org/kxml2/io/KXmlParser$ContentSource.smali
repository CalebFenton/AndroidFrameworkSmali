.class Lorg/kxml2/io/KXmlParser$ContentSource;
.super Ljava/lang/Object;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentSource"
.end annotation


# instance fields
.field private final buffer:[C

.field private final limit:I

.field private final next:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private final position:I


# direct methods
.method static synthetic -get0(Lorg/kxml2/io/KXmlParser$ContentSource;)[C
    .locals 1

    #@0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    #@2
    return v0
.end method

.method constructor <init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V
    .locals 0
    .param p1, "next"    # Lorg/kxml2/io/KXmlParser$ContentSource;
    .param p2, "buffer"    # [C
    .param p3, "position"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2149
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    #@5
    .line 2150
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    #@7
    .line 2151
    iput p3, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    #@9
    .line 2152
    iput p4, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    #@b
    .line 2148
    return-void
.end method
