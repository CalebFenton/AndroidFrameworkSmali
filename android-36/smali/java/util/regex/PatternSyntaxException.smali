.class public Ljava/util/regex/PatternSyntaxException;
.super Ljava/lang/IllegalArgumentException;
.source "PatternSyntaxException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x35a1f4cf3fc7bfd2L


# instance fields
.field private final greylist-max-o desc:Ljava/lang/String;

.field private final greylist-max-o index:I

.field private final greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 59
    iput-object p1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    .line 61
    iput p3, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api getDescription()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 71
    iget v0, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    return v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/util/regex/PatternSyntaxException;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_18

    .line 103
    const-string v1, " near index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    :cond_18
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ltz v1, :cond_5a

    iget-object v1, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_5a

    iget v1, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 109
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget v2, p0, Ljava/util/regex/PatternSyntaxException;->index:I

    if-ge v1, v2, :cond_55

    .line 111
    iget-object v2, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4d

    goto :goto_4f

    :cond_4d
    const/16 v3, 0x20

    :goto_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 113
    .end local v1    # "i":I
    :cond_55
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getPattern()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Ljava/util/regex/PatternSyntaxException;->pattern:Ljava/lang/String;

    return-object v0
.end method
