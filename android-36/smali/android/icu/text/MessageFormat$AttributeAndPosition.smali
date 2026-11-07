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
.field private greylist-max-o key:Ljava/text/AttributedCharacterIterator$Attribute;

.field private greylist-max-o limit:I

.field private greylist-max-o start:I

.field private greylist-max-o value:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetkey(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlimit(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstart(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;II)V
    .registers 5
    .param p1, "fieldValue"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I
    .param p3, "limitIndex"    # I

    .line 2646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2647
    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 2648
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "startIndex"    # I
    .param p4, "limitIndex"    # I

    .line 2650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2651
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 2652
    return-void
.end method


# virtual methods
.method public greylist-max-o init(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "field"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "startIndex"    # I
    .param p4, "limitIndex"    # I

    .line 2655
    iput-object p1, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->key:Ljava/text/AttributedCharacterIterator$Attribute;

    .line 2656
    iput-object p2, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->value:Ljava/lang/Object;

    .line 2657
    iput p3, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->start:I

    .line 2658
    iput p4, p0, Landroid/icu/text/MessageFormat$AttributeAndPosition;->limit:I

    .line 2659
    return-void
.end method
