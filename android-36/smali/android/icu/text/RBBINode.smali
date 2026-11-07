.class Landroid/icu/text/RBBINode;
.super Ljava/lang/Object;
.source "RBBINode.java"


# static fields
.field static final blacklist endMark:I = 0x6

.field static blacklist gLastSerial:I = 0x0

.field private static final blacklist kRecursiveDepthLimit:I = 0xdac

.field static final blacklist leafChar:I = 0x3

.field static final blacklist lookAhead:I = 0x4

.field static final blacklist nodeTypeLimit:I = 0x10

.field static final blacklist nodeTypeNames:[Ljava/lang/String;

.field static final blacklist opBreak:I = 0xd

.field static final blacklist opCat:I = 0x8

.field static final blacklist opLParen:I = 0xf

.field static final blacklist opOr:I = 0x9

.field static final blacklist opPlus:I = 0xb

.field static final blacklist opQuestion:I = 0xc

.field static final blacklist opReverse:I = 0xe

.field static final blacklist opStar:I = 0xa

.field static final blacklist opStart:I = 0x7

.field static final blacklist precLParen:I = 0x2

.field static final blacklist precOpCat:I = 0x4

.field static final blacklist precOpOr:I = 0x3

.field static final blacklist precStart:I = 0x1

.field static final blacklist precZero:I = 0x0

.field static final blacklist setRef:I = 0x0

.field static final blacklist tag:I = 0x5

.field static final blacklist uset:I = 0x1

.field static final blacklist varRef:I = 0x2


# instance fields
.field blacklist fChainIn:Z

.field blacklist fFirstPos:I

.field blacklist fFirstPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fFollowPos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fInputSet:Landroid/icu/text/UnicodeSet;

.field blacklist fLastPos:I

.field blacklist fLastPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fLeftChild:Landroid/icu/text/RBBINode;

.field blacklist fLookAheadEnd:Z

.field blacklist fNullable:Z

.field blacklist fParent:Landroid/icu/text/RBBINode;

.field blacklist fPrecedence:I

.field blacklist fRightChild:Landroid/icu/text/RBBINode;

.field blacklist fRuleRoot:Z

.field blacklist fSerialNum:I

.field blacklist fText:Ljava/lang/String;

.field blacklist fType:I

.field blacklist fVal:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 17

    .line 43
    const-string v15, "opReverse"

    const-string v16, "opLParen"

    const-string v1, "setRef"

    const-string v2, "uset"

    const-string v3, "varRef"

    const-string v4, "leafChar"

    const-string v5, "lookAhead"

    const-string v6, "tag"

    const-string v7, "endMark"

    const-string v8, "opStart"

    const-string v9, "opCat"

    const-string v10, "opOr"

    const-string v11, "opStar"

    const-string v12, "opPlus"

    const-string v13, "opQuestion"

    const-string v14, "opBreak"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "t"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 110
    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ge p1, v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 111
    sget v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/2addr v1, v2

    sput v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    .line 112
    iput p1, p0, Landroid/icu/text/RBBINode;->fType:I

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    .line 117
    const/16 v1, 0x8

    if-ne p1, v1, :cond_37

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_4f

    .line 119
    :cond_37
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3f

    .line 120
    const/4 v0, 0x3

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_4f

    .line 121
    :cond_3f
    const/4 v1, 0x7

    if-ne p1, v1, :cond_45

    .line 122
    iput v2, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_4f

    .line 123
    :cond_45
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4d

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_4f

    .line 126
    :cond_4d
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 128
    :goto_4f
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RBBINode;)V
    .registers 4
    .param p1, "other"    # Landroid/icu/text/RBBINode;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 131
    sget v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    .line 132
    iget v1, p1, Landroid/icu/text/RBBINode;->fType:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fType:I

    .line 133
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 134
    iget v1, p1, Landroid/icu/text/RBBINode;->fPrecedence:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 135
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 136
    iget v1, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 137
    iget v1, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 138
    iget-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    iput-boolean v1, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    .line 139
    iget v1, p1, Landroid/icu/text/RBBINode;->fVal:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fVal:I

    .line 140
    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 141
    iget-boolean v0, p1, Landroid/icu/text/RBBINode;->fChainIn:Z

    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fChainIn:Z

    .line 142
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    .line 145
    return-void
.end method

.method static blacklist printHex(II)V
    .registers 6
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .line 334
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "s":Ljava/lang/String;
    nop

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "00000"

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "leadingZeroes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0, p1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    .line 339
    return-void
.end method

.method static blacklist printInt(II)V
    .registers 4
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .line 327
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method static blacklist printNode(Landroid/icu/text/RBBINode;)V
    .registers 4
    .param p0, "n"    # Landroid/icu/text/RBBINode;

    .line 286
    if-nez p0, :cond_a

    .line 287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -- null --\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6f

    .line 289
    :cond_a
    iget v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 290
    sget-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    aget-object v0, v0, v1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    const/4 v2, 0x0

    if-nez v0, :cond_23

    move v0, v2

    goto :goto_27

    :cond_23
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_27
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 292
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_30

    move v0, v2

    goto :goto_34

    :cond_30
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_34
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 293
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_3c

    goto :goto_40

    :cond_3c
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget v2, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_40
    const/16 v0, 0xc

    invoke-static {v2, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 294
    iget v1, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    invoke-static {v1, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 295
    iget v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 297
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    .line 298
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    :cond_6f
    :goto_6f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static blacklist printString(Ljava/lang/String;I)V
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "minWidth"    # I

    .line 310
    move v0, p1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x20

    if-gez v0, :cond_d

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    .end local v0    # "i":I
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "i":I
    :goto_11
    if-ge v0, p1, :cond_1b

    .line 315
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 317
    .end local v0    # "i":I
    :cond_1b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    return-void
.end method


# virtual methods
.method blacklist cloneTree()Landroid/icu/text/RBBINode;
    .registers 3

    .line 159
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 162
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    .local v0, "n":Landroid/icu/text/RBBINode;
    goto :goto_38

    .line 163
    .end local v0    # "n":Landroid/icu/text/RBBINode;
    :cond_c
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 164
    move-object v0, p0

    .restart local v0    # "n":Landroid/icu/text/RBBINode;
    goto :goto_38

    .line 166
    .end local v0    # "n":Landroid/icu/text/RBBINode;
    :cond_13
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBINode;-><init>(Landroid/icu/text/RBBINode;)V

    .line 167
    .restart local v0    # "n":Landroid/icu/text/RBBINode;
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_28

    .line 168
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 169
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 171
    :cond_28
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_38

    .line 172
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 173
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 176
    :cond_38
    :goto_38
    return-object v0
.end method

.method blacklist findNodes(Ljava/util/List;I)V
    .registers 4
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 265
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-ne v0, p2, :cond_7

    .line 266
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_7
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_10

    .line 269
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 271
    :cond_10
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_19

    .line 272
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 274
    :cond_19
    return-void
.end method

.method blacklist flattenSets()V
    .registers 5

    .line 230
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 232
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2a

    .line 233
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fType:I

    if-nez v0, :cond_25

    .line 234
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 235
    .local v0, "setRefNode":Landroid/icu/text/RBBINode;
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 236
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 237
    .local v2, "replTree":Landroid/icu/text/RBBINode;
    invoke-virtual {v2}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 238
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 239
    .end local v0    # "setRefNode":Landroid/icu/text/RBBINode;
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v2    # "replTree":Landroid/icu/text/RBBINode;
    goto :goto_2a

    .line 240
    :cond_25
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenSets()V

    .line 244
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_4a

    .line 245
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget v0, v0, Landroid/icu/text/RBBINode;->fType:I

    if-nez v0, :cond_45

    .line 246
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 247
    .restart local v0    # "setRefNode":Landroid/icu/text/RBBINode;
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 248
    .restart local v1    # "usetNode":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 249
    .restart local v2    # "replTree":Landroid/icu/text/RBBINode;
    invoke-virtual {v2}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 250
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 252
    .end local v0    # "setRefNode":Landroid/icu/text/RBBINode;
    .end local v1    # "usetNode":Landroid/icu/text/RBBINode;
    .end local v2    # "replTree":Landroid/icu/text/RBBINode;
    goto :goto_4a

    .line 253
    :cond_45
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenSets()V

    .line 256
    :cond_4a
    :goto_4a
    return-void
.end method

.method blacklist flattenVariables(I)Landroid/icu/text/RBBINode;
    .registers 4
    .param p1, "depth"    # I

    .line 200
    const/16 v0, 0xdac

    if-gt p1, v0, :cond_3d

    .line 203
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 204
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 205
    .local v0, "retNode":Landroid/icu/text/RBBINode;
    iget-boolean v1, p0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    iput-boolean v1, v0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 206
    iget-boolean v1, p0, Landroid/icu/text/RBBINode;->fChainIn:Z

    iput-boolean v1, v0, Landroid/icu/text/RBBINode;->fChainIn:Z

    .line 207
    return-object v0

    .line 210
    .end local v0    # "retNode":Landroid/icu/text/RBBINode;
    :cond_18
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2a

    .line 211
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->flattenVariables(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 212
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 214
    :cond_2a
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_3c

    .line 215
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->flattenVariables(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 216
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 218
    :cond_3c
    return-object p0

    .line 201
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist printTree(Z)V
    .registers 4
    .param p1, "printHeading"    # Z

    .line 350
    if-eqz p1, :cond_10

    .line 351
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    Serial       type     Parent  LeftChild  RightChild    position  value"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    :cond_10
    invoke-static {p0}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    .line 357
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 358
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 359
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 362
    :cond_22
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2b

    .line 363
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 366
    :cond_2b
    return-void
.end method
