.class Landroid/icu/text/RBBISymbolTable;
.super Ljava/lang/Object;
.source "RBBISymbolTable.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    }
.end annotation


# instance fields
.field fCachedSetLookup:Landroid/icu/text/UnicodeSet;

.field fHashTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

.field fRules:Ljava/lang/String;

.field ffffString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleScanner;Ljava/lang/String;)V
    .locals 1
    .param p1, "rs"    # Landroid/icu/text/RBBIRuleScanner;
    .param p2, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p2, p0, Landroid/icu/text/RBBISymbolTable;->fRules:Ljava/lang/String;

    #@5
    .line 36
    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    #@7
    .line 37
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@e
    .line 38
    const-string/jumbo v0, "\uffff"

    #@11
    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    #@13
    .line 34
    return-void
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 158
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@8
    .line 159
    .local v0, "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    if-eqz v0, :cond_0

    #@a
    .line 160
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    #@c
    const v2, 0x10207

    #@f
    invoke-virtual {v1, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@12
    .line 161
    return-void

    #@13
    .line 164
    :cond_0
    new-instance v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@15
    .end local v0    # "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    invoke-direct {v0}, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;-><init>()V

    #@18
    .line 165
    .restart local v0    # "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    iput-object p1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    #@1a
    .line 166
    iput-object p2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@1c
    .line 167
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@1e
    iget-object v2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 156
    return-void
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 56
    iget-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@9
    .line 57
    .local v0, "el":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    if-nez v0, :cond_0

    #@b
    .line 58
    return-object v7

    #@c
    .line 62
    :cond_0
    iget-object v4, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@e
    .line 63
    .local v4, "varRefNode":Landroid/icu/text/RBBINode;
    :goto_0
    iget-object v5, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@10
    iget v5, v5, Landroid/icu/text/RBBINode;->fType:I

    #@12
    const/4 v6, 0x2

    #@13
    if-ne v5, v6, :cond_1

    #@15
    .line 64
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@17
    goto :goto_0

    #@18
    .line 67
    :cond_1
    iget-object v1, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1a
    .line 68
    .local v1, "exprNode":Landroid/icu/text/RBBINode;
    iget v5, v1, Landroid/icu/text/RBBINode;->fType:I

    #@1c
    if-nez v5, :cond_2

    #@1e
    .line 72
    iget-object v3, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@20
    .line 73
    .local v3, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v5, v3, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@22
    iput-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    #@24
    .line 74
    iget-object v2, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    #@26
    .line 84
    .end local v3    # "usetNode":Landroid/icu/text/RBBINode;
    .local v2, "retString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    #@29
    move-result-object v5

    #@2a
    return-object v5

    #@2b
    .line 80
    .end local v2    # "retString":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    #@2d
    const v6, 0x1020f

    #@30
    invoke-virtual {v5, v6}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@33
    .line 81
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@35
    .line 82
    .restart local v2    # "retString":Ljava/lang/String;
    iput-object v7, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    #@37
    goto :goto_1
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2
    .param p1, "ch"    # I

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    .line 100
    .local v0, "retVal":Landroid/icu/text/UnicodeSet;
    const v1, 0xffff

    #@4
    if-ne p1, v1, :cond_0

    #@6
    .line 101
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    #@8
    .line 102
    .local v0, "retVal":Landroid/icu/text/UnicodeSet;
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    #@b
    .line 104
    .end local v0    # "retVal":Landroid/icu/text/UnicodeSet;
    :cond_0
    return-object v0
.end method

.method lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    const/4 v1, 0x0

    #@1
    .line 143
    .local v1, "retNode":Landroid/icu/text/RBBINode;
    iget-object v2, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@9
    .line 144
    .local v0, "el":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    if-eqz v0, :cond_0

    #@b
    .line 145
    iget-object v1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@d
    .line 147
    .end local v1    # "retNode":Landroid/icu/text/RBBINode;
    :cond_0
    return-object v1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 114
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v3

    #@4
    .line 115
    .local v3, "start":I
    move v1, v3

    #@5
    .line 116
    .local v1, "i":I
    const-string/jumbo v2, ""

    #@8
    .line 117
    .local v2, "result":Ljava/lang/String;
    :goto_0
    if-ge v1, p3, :cond_1

    #@a
    .line 118
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@d
    move-result v0

    #@e
    .line 119
    .local v0, "c":I
    if-ne v1, v3, :cond_0

    #@10
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 120
    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 123
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@1f
    move-result v4

    #@20
    add-int/2addr v1, v4

    #@21
    goto :goto_0

    #@22
    .line 125
    .end local v0    # "c":I
    :cond_1
    if-ne v1, v3, :cond_2

    #@24
    .line 126
    return-object v2

    #@25
    .line 128
    :cond_2
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@28
    .line 129
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 130
    return-object v2
.end method

.method rbbiSymtablePrint()V
    .locals 6

    #@0
    .prologue
    .line 175
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    .line 176
    const-string/jumbo v4, "Variable Definitions\nName               Node Val     String Val\n----------------------------------------------------------------------\n"

    #@5
    .line 175
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 180
    iget-object v3, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    #@a
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    new-array v4, v4, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@11
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    #@17
    .line 182
    .local v2, "syms":[Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@19
    if-ge v0, v3, :cond_0

    #@1b
    .line 183
    aget-object v1, v2, v0

    #@1d
    .line 185
    .local v1, "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "  "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    iget-object v5, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, "  "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3f
    .line 186
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "  "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    iget-object v5, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    const-string/jumbo v5, "  "

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@61
    .line 187
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    iget-object v4, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@65
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@67
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@69
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6c
    .line 188
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6e
    const-string/jumbo v4, "\n"

    #@71
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@74
    .line 182
    add-int/lit8 v0, v0, 0x1

    #@76
    goto :goto_0

    #@77
    .line 191
    .end local v1    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@79
    const-string/jumbo v4, "\nParsed Variable Definitions\n"

    #@7c
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 192
    const/4 v0, 0x0

    #@80
    :goto_1
    array-length v3, v2

    #@81
    if-ge v0, v3, :cond_1

    #@83
    .line 193
    aget-object v1, v2, v0

    #@85
    .line 194
    .restart local v1    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@87
    iget-object v4, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    #@89
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8c
    .line 195
    iget-object v3, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    #@8e
    iget-object v3, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@90
    const/4 v4, 0x1

    #@91
    invoke-virtual {v3, v4}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@94
    .line 196
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    const-string/jumbo v4, "\n"

    #@99
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9c
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@9e
    goto :goto_1

    #@9f
    .line 174
    .end local v1    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    :cond_1
    return-void
.end method
