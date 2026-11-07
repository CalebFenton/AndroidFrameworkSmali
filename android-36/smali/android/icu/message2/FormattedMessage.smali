.class public Landroid/icu/message2/FormattedMessage;
.super Ljava/lang/Object;
.source "FormattedMessage.java"

# interfaces
.implements Landroid/icu/text/FormattedValue;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api length()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextPosition(Landroid/icu/text/ConstrainedFieldPosition;)Z
    .registers 4
    .param p1, "cfpos"    # Landroid/icu/text/ConstrainedFieldPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toCharacterIterator()Ljava/text/AttributedCharacterIterator;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
