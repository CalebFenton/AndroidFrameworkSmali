.class public Landroid/icu/message2/PlainStringFormattedValue;
.super Ljava/lang/Object;
.source "PlainStringFormattedValue.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_8

    .line 39
    iput-object p1, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    .line 40
    return-void

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Should not try to wrap a null in a formatted value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    :try_start_0
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 91
    nop

    .line 92
    return-object p1

    .line 89
    :catch_7
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    const-string v2, "problem appending"

    invoke-direct {v1, v2, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 4
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nextPosition not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "toCharacterIterator not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/icu/message2/PlainStringFormattedValue;->value:Ljava/lang/String;

    return-object v0
.end method
