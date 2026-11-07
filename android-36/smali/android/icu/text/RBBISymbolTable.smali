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
.field blacklist fCachedSetLookup:Landroid/icu/text/UnicodeSet;

.field blacklist fHashTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

.field blacklist ffffString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/RBBIRuleScanner;)V
    .registers 3
    .param p1, "rs"    # Landroid/icu/text/RBBIRuleScanner;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    .line 39
    const-string v0, "\uffff"

    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method blacklist addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Landroid/icu/text/RBBINode;

    .line 159
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    .line 160
    .local v0, "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    if-eqz v0, :cond_13

    .line 161
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const v2, 0x10207

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 162
    return-void

    .line 165
    :cond_13
    new-instance v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-direct {v1}, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;-><init>()V

    .line 166
    .end local v0    # "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    .local v1, "e":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    iput-object p1, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    .line 167
    iput-object p2, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    .line 168
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    iget-object v2, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public whitelist test-api lookup(Ljava/lang/String;)[C
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    .line 58
    .local v0, "el":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 59
    return-object v1

    .line 63
    :cond_c
    iget-object v2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    .line 64
    .local v2, "varRefNode":Landroid/icu/text/RBBINode;
    :goto_e
    iget-object v3, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 65
    iget-object v2, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    goto :goto_e

    .line 68
    :cond_18
    iget-object v3, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 69
    .local v3, "exprNode":Landroid/icu/text/RBBINode;
    iget v4, v3, Landroid/icu/text/RBBINode;->fType:I

    if-nez v4, :cond_27

    .line 73
    iget-object v1, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 74
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v4, v1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object v4, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 75
    iget-object v4, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    .local v4, "retString":Ljava/lang/String;
    goto :goto_33

    .line 81
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v4    # "retString":Ljava/lang/String;
    :cond_27
    iget-object v4, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const v5, 0x1020f

    invoke-virtual {v4, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 82
    iget-object v4, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 83
    .restart local v4    # "retString":Ljava/lang/String;
    iput-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 85
    :goto_33
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .registers 4
    .param p1, "ch"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "retVal":Landroid/icu/text/UnicodeSet;
    const v1, 0xffff

    if-ne p1, v1, :cond_b

    .line 102
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 105
    :cond_b
    return-object v0
.end method

.method blacklist lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 144
    .local v0, "retNode":Landroid/icu/text/RBBINode;
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    .line 145
    .local v1, "el":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    if-eqz v1, :cond_d

    .line 146
    iget-object v0, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    .line 148
    :cond_d
    return-object v0
.end method

.method public whitelist test-api parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "limit"    # I

    .line 115
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 116
    .local v0, "start":I
    move v1, v0

    .line 117
    .local v1, "i":I
    const-string v2, ""

    .line 118
    .local v2, "result":Ljava/lang/String;
    :goto_7
    if-ge v1, p3, :cond_22

    .line 119
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    .line 120
    .local v3, "c":I
    if-ne v1, v0, :cond_15

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 121
    :cond_15
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 122
    goto :goto_22

    .line 124
    :cond_1c
    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 125
    .end local v3    # "c":I
    goto :goto_7

    .line 126
    :cond_22
    :goto_22
    if-ne v1, v0, :cond_25

    .line 127
    return-object v2

    .line 129
    :cond_25
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 130
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 131
    return-object v2
.end method

.method blacklist rbbiSymtablePrint()V
    .registers 9

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 177
    const-string v1, "Variable Definitions\nName               Node Val     String Val\n----------------------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    .line 183
    .local v0, "syms":[Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    const-string v3, "\n"

    if-ge v1, v2, :cond_6b

    .line 184
    aget-object v2, v0, v1

    .line 186
    .local v2, "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v5, v5, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v5, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 183
    .end local v2    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 192
    .end local v1    # "i":I
    :cond_6b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nParsed Variable Definitions\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_73
    array-length v2, v0

    if-ge v1, v2, :cond_8f

    .line 194
    aget-object v2, v0, v1

    .line 195
    .restart local v2    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v5, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 196
    iget-object v4, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 197
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 193
    .end local v2    # "s":Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 199
    .end local v1    # "i":I
    :cond_8f
    return-void
.end method
