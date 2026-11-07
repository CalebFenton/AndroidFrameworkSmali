.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$FieldDelegate;,
        Ljava/text/Format$Field;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 261
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 262
    :catch_5
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "value"    # Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "key"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "value"    # Ljava/lang/Object;

    .line 335
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;)V

    .line 337
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;
    .registers 4
    .param p1, "iterators"    # [Ljava/text/AttributedCharacterIterator;

    .line 298
    new-instance v0, Ljava/text/AttributedString;

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>([Ljava/text/AttributedCharacterIterator;)V

    .line 300
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/Format;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 246
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, "result":Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 251
    return-object v1

    .line 248
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Format.parseObject(String) failed"

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public abstract whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
