.class Ljava/text/PatternEntry;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/PatternEntry$Parser;
    }
.end annotation


# static fields
.field static final RESET:I = -0x2

.field static final UNSET:I = -0x1


# instance fields
.field chars:Ljava/lang/String;

.field extension:Ljava/lang/String;

.field strength:I


# direct methods
.method constructor <init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "strength"    # I
    .param p2, "chars"    # Ljava/lang/StringBuffer;
    .param p3, "extension"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 303
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/text/PatternEntry;->strength:I

    #@6
    .line 304
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@b
    .line 305
    const-string/jumbo v0, ""

    #@e
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@10
    .line 192
    iput p1, p0, Ljava/text/PatternEntry;->strength:I

    #@12
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@18
    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_0

    #@1e
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    :goto_0
    iput-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@24
    .line 190
    return-void

    #@25
    .line 195
    :cond_0
    const-string/jumbo v0, ""

    #@28
    goto :goto_0
.end method

.method static appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 151
    const/4 v1, 0x0

    #@3
    .line 152
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    #@4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    .line 153
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 154
    const/4 v1, 0x1

    #@f
    .line 155
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@12
    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 180
    if-eqz v1, :cond_1

    #@17
    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1a
    .line 150
    :cond_1
    return-void

    #@1b
    .line 157
    :cond_2
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    .line 158
    const/4 v1, 0x1

    #@22
    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@25
    goto :goto_0

    #@26
    .line 161
    :cond_3
    sparse-switch v0, :sswitch_data_0

    #@29
    .line 172
    if-eqz v1, :cond_0

    #@2b
    .line 173
    const/4 v1, 0x0

    #@2c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    goto :goto_0

    #@30
    .line 164
    :sswitch_0
    const/4 v1, 0x1

    #@31
    .line 165
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    goto :goto_0

    #@35
    .line 168
    :sswitch_1
    const/4 v1, 0x1

    #@36
    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@39
    goto :goto_0

    #@3a
    .line 161
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static isSpecialChar(C)Z
    .locals 3
    .param p0, "ch"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 292
    const/16 v2, 0x20

    #@4
    if-eq p0, v2, :cond_0

    #@6
    .line 293
    const/16 v2, 0x2f

    #@8
    if-gt p0, v2, :cond_1

    #@a
    const/16 v2, 0x22

    #@c
    if-lt p0, v2, :cond_1

    #@e
    .line 292
    :cond_0
    :goto_0
    return v0

    #@f
    .line 294
    :cond_1
    const/16 v2, 0x3f

    #@11
    if-gt p0, v2, :cond_2

    #@13
    const/16 v2, 0x3a

    #@15
    if-ge p0, v2, :cond_0

    #@17
    .line 295
    :cond_2
    const/16 v2, 0x60

    #@19
    if-gt p0, v2, :cond_3

    #@1b
    const/16 v2, 0x5b

    #@1d
    if-ge p0, v2, :cond_0

    #@1f
    .line 296
    :cond_3
    const/16 v2, 0x7e

    #@21
    if-gt p0, v2, :cond_4

    #@23
    const/16 v2, 0x7b

    #@25
    if-ge p0, v2, :cond_0

    #@27
    :cond_4
    move v0, v1

    #@28
    goto :goto_0
.end method


# virtual methods
.method addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V
    .locals 3
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;
    .param p2, "showExtension"    # Z
    .param p3, "showWhiteSpace"    # Z
    .param p4, "lastEntry"    # Ljava/text/PatternEntry;

    #@0
    .prologue
    const/16 v2, 0x26

    #@2
    const/16 v1, 0x20

    #@4
    .line 119
    if-eqz p3, :cond_1

    #@6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_1

    #@c
    .line 120
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    #@e
    if-eqz v0, :cond_0

    #@10
    if-eqz p4, :cond_6

    #@12
    .line 121
    :cond_0
    const/16 v0, 0xa

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    .line 124
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    #@19
    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1c
    .line 126
    if-eqz p3, :cond_2

    #@1e
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@21
    .line 128
    :cond_2
    invoke-virtual {p4, p1}, Ljava/text/PatternEntry;->appendQuotedChars(Ljava/lang/StringBuffer;)V

    #@24
    .line 129
    invoke-virtual {p0, p1}, Ljava/text/PatternEntry;->appendQuotedExtension(Ljava/lang/StringBuffer;)V

    #@27
    .line 130
    if-eqz p3, :cond_3

    #@29
    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c
    .line 133
    :cond_3
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    #@2e
    packed-switch v0, :pswitch_data_0

    #@31
    .line 141
    :goto_1
    if-eqz p3, :cond_4

    #@33
    .line 142
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 143
    :cond_4
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@38
    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@3b
    .line 144
    if-eqz p2, :cond_5

    #@3d
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 145
    const/16 v0, 0x2f

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@4a
    .line 146
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@4c
    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@4f
    .line 117
    :cond_5
    return-void

    #@50
    .line 123
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@53
    goto :goto_0

    #@54
    .line 134
    :pswitch_0
    const/16 v0, 0x3d

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@59
    goto :goto_1

    #@5a
    .line 135
    :pswitch_1
    const/16 v0, 0x2c

    #@5c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5f
    goto :goto_1

    #@60
    .line 136
    :pswitch_2
    const/16 v0, 0x3b

    #@62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@65
    goto :goto_1

    #@66
    .line 137
    :pswitch_3
    const/16 v0, 0x3c

    #@68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6b
    goto :goto_1

    #@6c
    .line 138
    :pswitch_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6f
    goto :goto_1

    #@70
    .line 139
    :pswitch_5
    const/16 v0, 0x3f

    #@72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@75
    goto :goto_1

    #@76
    .line 133
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public appendQuotedChars(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@5
    .line 62
    return-void
.end method

.method public appendQuotedExtension(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "toAddTo"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Ljava/text/PatternEntry;->appendQuoted(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@5
    .line 55
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    if-nez p1, :cond_0

    #@2
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    :cond_0
    move-object v0, p1

    #@5
    .line 73
    check-cast v0, Ljava/text/PatternEntry;

    #@7
    .line 74
    .local v0, "other":Ljava/text/PatternEntry;
    iget-object v2, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@9
    iget-object v3, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    .line 75
    .local v1, "result":Z
    return v1
.end method

.method final getChars()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final getExtension()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final getStrength()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Ljava/text/PatternEntry;->strength:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 87
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    #@b
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method
