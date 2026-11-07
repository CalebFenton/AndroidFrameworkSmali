.class Landroid/icu/text/RBBISetBuilder;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAX_CHAR_CATEGORIES_FOR_8BITS_TRIE:I = 0xff


# instance fields
.field blacklist fDictCategoriesStart:I

.field blacklist fFrozenTrie:Landroid/icu/util/CodePointTrie;

.field blacklist fGroupCount:I

.field blacklist fRB:Landroid/icu/text/RBBIRuleBuilder;

.field blacklist fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field blacklist fSawBOF:Z

.field blacklist fTrie:Landroid/icu/util/MutableCodePointTrie;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 43
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .registers 2
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    .line 148
    return-void
.end method


# virtual methods
.method blacklist addValToSet(Landroid/icu/text/RBBINode;I)V
    .registers 6
    .param p1, "usetNode"    # Landroid/icu/text/RBBINode;
    .param p2, "val"    # I

    .line 409
    new-instance v0, Landroid/icu/text/RBBINode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 410
    .local v0, "leafNode":Landroid/icu/text/RBBINode;
    iput p2, v0, Landroid/icu/text/RBBINode;->fVal:I

    .line 411
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v1, :cond_11

    .line 412
    iput-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 413
    iput-object p1, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_2a

    .line 418
    :cond_11
    new-instance v1, Landroid/icu/text/RBBINode;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 419
    .local v1, "orNode":Landroid/icu/text/RBBINode;
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 420
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 421
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 422
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 423
    iput-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 424
    iput-object p1, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 426
    .end local v1    # "orNode":Landroid/icu/text/RBBINode;
    :goto_2a
    return-void
.end method

.method blacklist addValToSets(Ljava/util/List;I)V
    .registers 5
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 403
    .local p1, "sets":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 404
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v1, p2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    .line 405
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    goto :goto_4

    .line 406
    :cond_14
    return-void
.end method

.method blacklist buildRanges()V
    .registers 11

    .line 160
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "usets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    .line 165
    :cond_15
    new-instance v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 166
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 167
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const v1, 0x10ffff

    iput v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 172
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 173
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 174
    .local v2, "inputSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 175
    .local v3, "inputSetRangeCount":I
    const/4 v4, 0x0

    .line 176
    .local v4, "inputSetRangeIndex":I
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 179
    .local v5, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_45
    if-lt v4, v3, :cond_49

    .line 180
    nop

    .line 223
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v2    # "inputSet":Landroid/icu/text/UnicodeSet;
    .end local v3    # "inputSetRangeCount":I
    .end local v4    # "inputSetRangeIndex":I
    goto :goto_30

    .line 182
    .restart local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .restart local v2    # "inputSet":Landroid/icu/text/UnicodeSet;
    .restart local v3    # "inputSetRangeCount":I
    .restart local v4    # "inputSetRangeIndex":I
    :cond_49
    invoke-virtual {v2, v4}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v6

    .line 183
    .local v6, "inputSetRangeBegin":I
    invoke-virtual {v2, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    .line 187
    .local v7, "inputSetRangeEnd":I
    :goto_51
    iget v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ge v8, v6, :cond_58

    .line 188
    iget-object v5, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_51

    .line 197
    :cond_58
    iget v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-ge v8, v6, :cond_60

    .line 198
    invoke-virtual {v5, v6}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    .line 199
    goto :goto_45

    .line 207
    :cond_60
    iget v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-le v8, v7, :cond_69

    .line 208
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v8}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    .line 213
    :cond_69
    iget-object v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_77

    .line 214
    iget-object v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_77
    iget v8, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ne v7, v8, :cond_7d

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    :cond_7d
    iget-object v5, v5, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 222
    .end local v6    # "inputSetRangeBegin":I
    .end local v7    # "inputSetRangeEnd":I
    goto :goto_45

    .line 225
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v2    # "inputSet":Landroid/icu/text/UnicodeSet;
    .end local v3    # "inputSetRangeCount":I
    .end local v4    # "inputSetRangeIndex":I
    .end local v5    # "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_80
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_95

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v1, "range"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_95

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printRanges()V

    .line 239
    :cond_95
    const/4 v0, 0x0

    .line 241
    .local v0, "dictGroupCount":I
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v1, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_98
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_de

    .line 242
    iget-object v4, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v4, "rlSearchRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_9e
    if-eq v4, v1, :cond_b6

    .line 243
    iget-object v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget-object v6, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 244
    iget v5, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 245
    iget-boolean v5, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    iput-boolean v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    .line 246
    goto :goto_b6

    .line 242
    :cond_b3
    iget-object v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_9e

    .line 249
    :cond_b6
    :goto_b6
    iget v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-nez v5, :cond_db

    .line 250
    iput-boolean v3, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    .line 251
    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->isDictionaryRange()Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 252
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 253
    iput-boolean v3, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    goto :goto_db

    .line 255
    :cond_c9
    iget v5, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 256
    iget v3, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 257
    iget-object v3, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget v5, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v3, v5}, Landroid/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    .line 241
    :cond_db
    :goto_db
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_98

    .line 265
    .end local v4    # "rlSearchRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_de
    iget v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    .line 266
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_e6
    if-eqz v1, :cond_102

    .line 267
    iget-boolean v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesDict:Z

    if-eqz v4, :cond_ff

    .line 268
    iget v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v5, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    sub-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 269
    iget-boolean v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    if-eqz v4, :cond_ff

    .line 270
    iget-object v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {p0, v4, v5}, Landroid/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    .line 266
    :cond_ff
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_e6

    .line 274
    :cond_102
    iget v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 288
    const-string v4, "eof"

    .line 289
    .local v4, "eofString":Ljava/lang/String;
    const-string v5, "bof"

    .line 291
    .local v5, "bofString":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RBBINode;

    .line 292
    .local v7, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v8, v7, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 293
    .local v8, "inputSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v8, v4}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12a

    .line 294
    invoke-virtual {p0, v7, v3}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    .line 296
    :cond_12a
    invoke-virtual {v8, v5}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_135

    .line 297
    invoke-virtual {p0, v7, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    .line 298
    iput-boolean v3, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    .line 300
    .end local v7    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v8    # "inputSet":Landroid/icu/text/UnicodeSet;
    :cond_135
    goto :goto_113

    .line 303
    :cond_136
    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_14b

    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v3, "rgroup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_14b

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printRangeGroups()V

    .line 304
    :cond_14b
    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_160

    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v3, "esets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_160

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    .line 305
    :cond_160
    return-void
.end method

.method blacklist buildTrie()V
    .registers 6

    .line 315
    new-instance v0, Landroid/icu/util/MutableCodePointTrie;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/util/MutableCodePointTrie;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/util/MutableCodePointTrie;

    .line 318
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v0, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_a
    if-eqz v0, :cond_1a

    .line 319
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/util/MutableCodePointTrie;

    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iget v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iget v4, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/icu/util/MutableCodePointTrie;->setRange(III)V

    .line 318
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_a

    .line 324
    .end local v0    # "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_1a
    return-void
.end method

.method blacklist freezeTrieIfNotYet()V
    .registers 5

    .line 357
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/util/CodePointTrie;

    if-nez v0, :cond_23

    .line 358
    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 359
    .local v0, "use8Bits":Z
    :goto_f
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/util/MutableCodePointTrie;

    sget-object v2, Landroid/icu/util/CodePointTrie$Type;->FAST:Landroid/icu/util/CodePointTrie$Type;

    .line 360
    if-eqz v0, :cond_18

    .line 361
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_8:Landroid/icu/util/CodePointTrie$ValueWidth;

    goto :goto_1a

    .line 362
    :cond_18
    sget-object v3, Landroid/icu/util/CodePointTrie$ValueWidth;->BITS_16:Landroid/icu/util/CodePointTrie$ValueWidth;

    .line 359
    :goto_1a
    invoke-virtual {v1, v2, v3}, Landroid/icu/util/MutableCodePointTrie;->buildImmutable(Landroid/icu/util/CodePointTrie$Type;Landroid/icu/util/CodePointTrie$ValueWidth;)Landroid/icu/util/CodePointTrie;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/util/CodePointTrie;

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/util/MutableCodePointTrie;

    .line 365
    .end local v0    # "use8Bits":Z
    :cond_23
    return-void
.end method

.method blacklist getDictCategoriesStart()I
    .registers 2

    .line 445
    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    return v0
.end method

.method blacklist getFirstChar(I)I
    .registers 5
    .param p1, "category"    # I

    .line 467
    const/4 v0, -0x1

    .line 468
    .local v0, "retVal":I
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v1, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_3
    if-eqz v1, :cond_f

    .line 469
    iget v2, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v2, p1, :cond_c

    .line 470
    iget v0, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    .line 471
    goto :goto_f

    .line 468
    :cond_c
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_3

    .line 474
    :cond_f
    :goto_f
    return v0
.end method

.method blacklist getNumCharCategories()I
    .registers 2

    .line 435
    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method blacklist getTrieSize()I
    .registers 3

    .line 373
    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->freezeTrieIfNotYet()V

    .line 374
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/util/CodePointTrie;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/util/CodePointTrie;->toBinary(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method blacklist mergeCategories(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V
    .registers 5
    .param p1, "categories"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 332
    nop

    .line 333
    nop

    .line 334
    nop

    .line 336
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v0, "rd":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_5
    if-eqz v0, :cond_1f

    .line 337
    iget v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 338
    .local v1, "rangeNum":I
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v1, v2, :cond_12

    .line 339
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    iput v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    goto :goto_1c

    .line 340
    :cond_12
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-le v1, v2, :cond_1c

    .line 341
    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 336
    .end local v1    # "rangeNum":I
    :cond_1c
    :goto_1c
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_5

    .line 344
    .end local v0    # "rd":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_1f
    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 345
    iget v0, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v1, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    if-gt v0, v1, :cond_31

    .line 346
    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    .line 348
    :cond_31
    return-void
.end method

.method blacklist printRangeGroups()V
    .registers 12

    .line 521
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nRanges grouped by Unicode Set Membership...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v0, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_9
    const-string v1, "\n"

    if-eqz v0, :cond_a5

    .line 523
    iget-boolean v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fFirstInGroup:Z

    if-eqz v2, :cond_a1

    .line 524
    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 525
    .local v2, "groupNum":I
    const/16 v3, 0xa

    const-string v4, " "

    if-ge v2, v3, :cond_1e

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    :cond_1e
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 528
    iget v3, p0, Landroid/icu/text/RBBISetBuilder;->fDictCategoriesStart:I

    if-lt v2, v3, :cond_3f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " <DICT> "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 530
    :cond_3f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    iget-object v5, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6e

    .line 531
    iget-object v5, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 532
    .local v5, "usetNode":Landroid/icu/text/RBBINode;
    const-string v6, "anon"

    .line 533
    .local v6, "setName":Ljava/lang/String;
    iget-object v7, v5, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 534
    .local v7, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v7, :cond_61

    .line 535
    iget-object v8, v7, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 536
    .local v8, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v8, :cond_61

    iget v9, v8, Landroid/icu/text/RBBINode;->fType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_61

    .line 537
    iget-object v6, v8, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 540
    .end local v8    # "varRef":Landroid/icu/text/RBBINode;
    :cond_61
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 530
    .end local v5    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v6    # "setName":Ljava/lang/String;
    .end local v7    # "setRef":Landroid/icu/text/RBBINode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 543
    :cond_6e
    const/4 v3, 0x0

    .line 544
    move-object v4, v0

    .local v4, "tRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_70
    if-eqz v4, :cond_9c

    .line 545
    iget v5, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v6, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v5, v6, :cond_99

    .line 546
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_85

    .line 547
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\n    "

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 549
    :cond_85
    iget v3, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroid/icu/text/RBBINode;->printHex(II)V

    .line 550
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 551
    iget v3, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/icu/text/RBBINode;->printHex(II)V

    move v3, v5

    .line 544
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_99
    iget-object v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_70

    .line 554
    .end local v4    # "tRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_9c
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 522
    .end local v2    # "groupNum":I
    .end local v3    # "i":I
    :cond_a1
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto/16 :goto_9

    .line 557
    .end local v0    # "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_a5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method blacklist printRanges()V
    .registers 9

    .line 489
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\n Nonoverlapping Ranges ...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .local v0, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_9
    if-eqz v0, :cond_5d

    .line 491
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x-%04x "

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 494
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    .line 495
    .local v2, "usetNode":Landroid/icu/text/RBBINode;
    const-string v3, "anon"

    .line 496
    .local v3, "setName":Ljava/lang/String;
    iget-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 497
    .local v4, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v4, :cond_44

    .line 498
    iget-object v5, v4, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 499
    .local v5, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v5, :cond_44

    iget v6, v5, Landroid/icu/text/RBBINode;->fType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_44

    .line 500
    iget-object v3, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 503
    .end local v5    # "varRef":Landroid/icu/text/RBBINode;
    :cond_44
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 493
    .end local v2    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v3    # "setName":Ljava/lang/String;
    .end local v4    # "setRef":Landroid/icu/text/RBBINode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 505
    :cond_53
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_9

    .line 507
    .end local v1    # "i":I
    :cond_5d
    return-void
.end method

.method blacklist printSets()V
    .registers 9

    .line 571
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\nUnicode Sets List\n------------------\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "\n"

    if-ge v0, v1, :cond_6a

    .line 578
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 581
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 582
    const-string v4, "anonymous"

    .line 583
    .local v4, "setName":Ljava/lang/String;
    iget-object v5, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 584
    .local v5, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v5, :cond_32

    .line 585
    iget-object v6, v5, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 586
    .local v6, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v6, :cond_32

    iget v7, v6, Landroid/icu/text/RBBINode;->fType:I

    if-ne v7, v3, :cond_32

    .line 587
    iget-object v4, v6, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 590
    .end local v6    # "varRef":Landroid/icu/text/RBBINode;
    :cond_32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 591
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 592
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 593
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 594
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v2, :cond_67

    .line 595
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 572
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v4    # "setName":Ljava/lang/String;
    .end local v5    # "setRef":Landroid/icu/text/RBBINode;
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 598
    :cond_6a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method blacklist sawBOF()Z
    .registers 2

    .line 455
    iget-boolean v0, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    return v0
.end method

.method blacklist serializeTrie(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->freezeTrieIfNotYet()V

    .line 385
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v0, p1}, Landroid/icu/util/CodePointTrie;->toBinary(Ljava/io/OutputStream;)I

    .line 386
    return-void
.end method
