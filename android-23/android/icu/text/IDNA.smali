.class public abstract Landroid/icu/text/IDNA;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/IDNA$Info;,
        Landroid/icu/text/IDNA$Error;
    }
.end annotation


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHECK_BIDI:I = 0x4

.field public static final CHECK_CONTEXTJ:I = 0x8

.field public static final CHECK_CONTEXTO:I = 0x40

.field public static final DEFAULT:I = 0x0

.field public static final NONTRANSITIONAL_TO_ASCII:I = 0x10

.field public static final NONTRANSITIONAL_TO_UNICODE:I = 0x20

.field public static final USE_STD3_RULES:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .param p1, "error"    # Landroid/icu/text/IDNA$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 320
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 319
    return-void
.end method

.method protected static addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .param p1, "error"    # Landroid/icu/text/IDNA$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 301
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    #@7
    .line 300
    return-void
.end method

.method public static compare(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/UCharacterIterator;I)I
    .locals 2
    .param p0, "s1"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "s2"    # Landroid/icu/text/UCharacterIterator;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 958
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 959
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "One of the source buffers is null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 961
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 923
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 924
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "One of the source buffers is null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 926
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public static compare(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;I)I
    .locals 2
    .param p0, "s1"    # Ljava/lang/StringBuffer;
    .param p1, "s2"    # Ljava/lang/StringBuffer;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 888
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 889
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "One of the source buffers is null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 891
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method public static convertIDNToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 666
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static convertIDNToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static convertIDNToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 791
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 855
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static convertIDNToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 823
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 561
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static convertToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 499
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 500
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static convertToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 530
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 531
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 759
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static convertToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 697
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 698
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static convertToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 728
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 729
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static getUTS46Instance(I)Landroid/icu/text/IDNA;
    .locals 1
    .param p0, "options"    # I

    #@0
    .prologue
    .line 151
    new-instance v0, Landroid/icu/impl/UTS46;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/UTS46;-><init>(I)V

    #@5
    return-object v0
.end method

.method protected static hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "errors":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/IDNA$Error;>;"
    const/4 v0, 0x0

    #@1
    .line 285
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    :cond_0
    :goto_0
    return v0

    #@16
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method protected static hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .locals 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .local p1, "errors":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/IDNA$Error;>;"
    const/4 v0, 0x0

    #@1
    .line 293
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    :cond_0
    :goto_0
    return v0

    #@16
    :cond_1
    const/4 v0, 0x1

    #@17
    goto :goto_0
.end method

.method protected static isBiDi(Landroid/icu/text/IDNA$Info;)Z
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 344
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get1(Landroid/icu/text/IDNA$Info;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected static isOkBiDi(Landroid/icu/text/IDNA$Info;)Z
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get2(Landroid/icu/text/IDNA$Info;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected static promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V
    .locals 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 310
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get0(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@d
    move-result-object v0

    #@e
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    #@15
    .line 311
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-get3(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    #@1c
    .line 308
    :cond_0
    return-void
.end method

.method protected static resetInfo(Landroid/icu/text/IDNA$Info;)V
    .locals 0
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-wrap0(Landroid/icu/text/IDNA$Info;)V

    #@3
    .line 276
    return-void
.end method

.method protected static setBiDi(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 336
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-set0(Landroid/icu/text/IDNA$Info;Z)Z

    #@4
    .line 335
    return-void
.end method

.method protected static setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 352
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-set1(Landroid/icu/text/IDNA$Info;Z)Z

    #@4
    .line 351
    return-void
.end method

.method protected static setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V
    .locals 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 328
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-set2(Landroid/icu/text/IDNA$Info;Z)Z

    #@4
    .line 327
    return-void
.end method


# virtual methods
.method public abstract labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method
