.class Ljava/text/MessageFormat$FieldContainer;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldContainer"
.end annotation


# instance fields
.field attribute:Ljava/text/AttributedCharacterIterator$Attribute;

.field end:I

.field start:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p4, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 639
    iput p1, p0, Ljava/text/MessageFormat$FieldContainer;->start:I

    #@5
    .line 640
    iput p2, p0, Ljava/text/MessageFormat$FieldContainer;->end:I

    #@7
    .line 641
    iput-object p3, p0, Ljava/text/MessageFormat$FieldContainer;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    #@9
    .line 642
    iput-object p4, p0, Ljava/text/MessageFormat$FieldContainer;->value:Ljava/lang/Object;

    #@b
    .line 638
    return-void
.end method
