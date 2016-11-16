.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$Field;,
        Ljava/text/Format$FieldDelegate;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 258
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 259
    :catch_0
    move-exception v0

    #@6
    .line 261
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    new-instance v0, Ljava/text/AttributedString;

    #@2
    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@5
    .line 280
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 313
    new-instance v0, Ljava/text/AttributedString;

    #@2
    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@5
    .line 315
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@8
    .line 316
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 332
    new-instance v0, Ljava/text/AttributedString;

    #@2
    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;)V

    #@5
    .line 334
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@8
    .line 335
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 295
    new-instance v0, Ljava/text/AttributedString;

    #@2
    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>([Ljava/text/AttributedCharacterIterator;)V

    #@5
    .line 297
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public final format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/text/Format;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 242
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 243
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 244
    .local v1, "result":Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    #@c
    if-nez v2, :cond_0

    #@e
    .line 245
    new-instance v2, Ljava/text/ParseException;

    #@10
    const-string/jumbo v3, "Format.parseObject(String) failed"

    #@13
    .line 246
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    #@15
    .line 245
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@18
    throw v2

    #@19
    .line 248
    :cond_0
    return-object v1
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
