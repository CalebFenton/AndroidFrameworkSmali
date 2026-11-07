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
.field public static final greylist-max-o ALLOW_UNASSIGNED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api CHECK_BIDI:I = 0x4

.field public static final whitelist test-api CHECK_CONTEXTJ:I = 0x8

.field public static final whitelist test-api CHECK_CONTEXTO:I = 0x40

.field public static final whitelist test-api DEFAULT:I = 0x0

.field public static final whitelist test-api NONTRANSITIONAL_TO_ASCII:I = 0x10

.field public static final whitelist test-api NONTRANSITIONAL_TO_UNICODE:I = 0x20

.field public static final whitelist test-api USE_STD3_RULES:I = 0x2


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    return-void
.end method

.method protected static greylist-max-o addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .registers 3
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .param p1, "error"    # Landroid/icu/text/IDNA$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgeterrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method protected static greylist-max-o addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V
    .registers 3
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .param p1, "error"    # Landroid/icu/text/IDNA$Error;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public static greylist-max-o compare(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/UCharacterIterator;I)I
    .registers 5
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

    .line 965
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 968
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 966
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the source buffers is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o compare(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
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

    .line 929
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 932
    invoke-static {p0, p1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 930
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the source buffers is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o compare(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;I)I
    .registers 5
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

    .line 893
    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 896
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/icu/impl/IDNA2003;->compare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 894
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of the source buffers is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o convertIDNToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertIDNToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertIDNToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertIDNToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 826
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 493
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o convertToASCII(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 525
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "src"    # Landroid/icu/text/UCharacterIterator;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    invoke-static {p0, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o convertToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 697
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o convertToUnicode(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "src"    # Ljava/lang/StringBuffer;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    .line 729
    .local v0, "iter":Landroid/icu/text/UCharacterIterator;
    invoke-static {v0, p1}, Landroid/icu/text/IDNA;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getUTS46Instance(I)Landroid/icu/text/IDNA;
    .registers 2
    .param p0, "options"    # I

    .line 156
    new-instance v0, Landroid/icu/impl/UTS46;

    invoke-direct {v0, p0}, Landroid/icu/impl/UTS46;-><init>(I)V

    return-object v0
.end method

.method protected static greylist-max-o hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .registers 3
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    .local p1, "errors":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/IDNA$Error;>;"
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgeterrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgeterrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method protected static greylist-max-o hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z
    .registers 3
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/IDNA$Info;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    .local p1, "errors":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/IDNA$Error;>;"
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method protected static greylist-max-o isBiDi(Landroid/icu/text/IDNA$Info;)Z
    .registers 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetisBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    return v0
.end method

.method protected static greylist-max-o isOkBiDi(Landroid/icu/text/IDNA$Info;)Z
    .registers 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetisOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v0

    return v0
.end method

.method protected static greylist-max-o promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V
    .registers 3
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 311
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgeterrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fgetlabelErrors(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 314
    :cond_1c
    return-void
.end method

.method protected static greylist-max-o resetInfo(Landroid/icu/text/IDNA$Info;)V
    .registers 1
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {p0}, Landroid/icu/text/IDNA$Info;->-$$Nest$mreset(Landroid/icu/text/IDNA$Info;)V

    .line 275
    return-void
.end method

.method protected static greylist-max-o setBiDi(Landroid/icu/text/IDNA$Info;)V
    .registers 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fputisBiDi(Landroid/icu/text/IDNA$Info;Z)V

    .line 341
    return-void
.end method

.method protected static greylist-max-o setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V
    .registers 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fputisOkBiDi(Landroid/icu/text/IDNA$Info;Z)V

    .line 359
    return-void
.end method

.method protected static greylist-max-o setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V
    .registers 2
    .param p0, "info"    # Landroid/icu/text/IDNA$Info;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/IDNA$Info;->-$$Nest$fputisTransDiff(Landroid/icu/text/IDNA$Info;Z)V

    .line 332
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract whitelist test-api labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract whitelist test-api nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method

.method public abstract whitelist test-api nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
.end method
