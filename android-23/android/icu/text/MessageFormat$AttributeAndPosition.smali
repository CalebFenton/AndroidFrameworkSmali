.class final Landroid/icu/text/MessageFormat$AttributeAndPosition;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeAndPosition"
.end annotation


# instance fields
.field private key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private limit:I

.field private start:I

.field private value:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1
    .param p1, "fieldValue"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I
    .param p3, "limitIndex"    # I

    #@0
    .prologue
    .line 2654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2655
    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    #@5
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@8
    .line 2654
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "startIndex"    # I
    .param p4, "limitIndex"    # I

    #@0
    .prologue
    .line 2658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2659
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@6
    .line 2658
    return-void
.end method


# virtual methods
.method public init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "startIndex"    # I
    .param p4, "limitIndex"    # I

    #@0
    .prologue
    .line 2663
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    #@2
    .line 2664
    iput-object p2, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    #@4
    .line 2665
    iput p3, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    #@6
    .line 2666
    iput p4, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    #@8
    .line 2662
    return-void
.end method
