.class Landroid/icu/text/RBBINode;
.super Ljava/lang/Object;
.source "RBBINode.java"


# static fields
.field static final endMark:I = 0x6

.field static gLastSerial:I = 0x0

.field static final leafChar:I = 0x3

.field static final lookAhead:I = 0x4

.field static final nodeTypeLimit:I = 0x10

.field static final nodeTypeNames:[Ljava/lang/String;

.field static final opBreak:I = 0xd

.field static final opCat:I = 0x8

.field static final opLParen:I = 0xf

.field static final opOr:I = 0x9

.field static final opPlus:I = 0xb

.field static final opQuestion:I = 0xc

.field static final opReverse:I = 0xe

.field static final opStar:I = 0xa

.field static final opStart:I = 0x7

.field static final precLParen:I = 0x2

.field static final precOpCat:I = 0x4

.field static final precOpOr:I = 0x3

.field static final precStart:I = 0x1

.field static final precZero:I = 0x0

.field static final setRef:I = 0x0

.field static final tag:I = 0x5

.field static final uset:I = 0x1

.field static final varRef:I = 0x2


# instance fields
.field fFirstPos:I

.field fFirstPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fFollowPos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fInputSet:Landroid/icu/text/UnicodeSet;

.field fLastPos:I

.field fLastPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fLeftChild:Landroid/icu/text/RBBINode;

.field fLookAheadEnd:Z

.field fNullable:Z

.field fParent:Landroid/icu/text/RBBINode;

.field fPrecedence:I

.field fRightChild:Landroid/icu/text/RBBINode;

.field fSerialNum:I

.field fText:Ljava/lang/String;

.field fType:I

.field fVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 40
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 41
    const-string/jumbo v1, "setRef"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 42
    const-string/jumbo v1, "uset"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 43
    const-string/jumbo v1, "varRef"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 44
    const-string/jumbo v1, "leafChar"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 45
    const-string/jumbo v1, "lookAhead"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 46
    const-string/jumbo v1, "tag"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 47
    const-string/jumbo v1, "endMark"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 48
    const-string/jumbo v1, "opStart"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 49
    const-string/jumbo v1, "opCat"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 50
    const-string/jumbo v1, "opOr"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    .line 51
    const-string/jumbo v1, "opStar"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 52
    const-string/jumbo v1, "opPlus"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 53
    const-string/jumbo v1, "opQuestion"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    .line 54
    const-string/jumbo v1, "opBreak"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 55
    const-string/jumbo v1, "opReverse"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 56
    const-string/jumbo v1, "opLParen"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 40
    sput-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    #@6e
    .line 18
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "t"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 71
    iput v2, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@7
    .line 102
    const/16 v0, 0x10

    #@9
    if-ge p1, v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@f
    .line 103
    sget v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    sput v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    #@15
    iput v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@17
    .line 104
    iput p1, p0, Landroid/icu/text/RBBINode;->fType:I

    #@19
    .line 106
    new-instance v0, Ljava/util/HashSet;

    #@1b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@20
    .line 107
    new-instance v0, Ljava/util/HashSet;

    #@22
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@25
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@27
    .line 108
    new-instance v0, Ljava/util/HashSet;

    #@29
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@2c
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@2e
    .line 109
    const/16 v0, 0x8

    #@30
    if-ne p1, v0, :cond_1

    #@32
    .line 110
    const/4 v0, 0x4

    #@33
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@35
    .line 101
    :goto_1
    return-void

    #@36
    :cond_0
    move v0, v2

    #@37
    .line 102
    goto :goto_0

    #@38
    .line 111
    :cond_1
    const/16 v0, 0x9

    #@3a
    if-ne p1, v0, :cond_2

    #@3c
    .line 112
    const/4 v0, 0x3

    #@3d
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@3f
    goto :goto_1

    #@40
    .line 113
    :cond_2
    const/4 v0, 0x7

    #@41
    if-ne p1, v0, :cond_3

    #@43
    .line 114
    iput v1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@45
    goto :goto_1

    #@46
    .line 115
    :cond_3
    const/16 v0, 0xf

    #@48
    if-ne p1, v0, :cond_4

    #@4a
    .line 116
    const/4 v0, 0x2

    #@4b
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@4d
    goto :goto_1

    #@4e
    .line 118
    :cond_4
    iput v2, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@50
    goto :goto_1
.end method

.method constructor <init>(Landroid/icu/text/RBBINode;)V
    .locals 2
    .param p1, "other"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@6
    .line 123
    sget v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    sput v0, Landroid/icu/text/RBBINode;->gLastSerial:I

    #@c
    iput v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@e
    .line 124
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@10
    iput v0, p0, Landroid/icu/text/RBBINode;->fType:I

    #@12
    .line 125
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@14
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@16
    .line 126
    iget v0, p1, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@18
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@1a
    .line 127
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@1c
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@1e
    .line 128
    iget v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@20
    iput v0, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@22
    .line 129
    iget v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    #@24
    iput v0, p0, Landroid/icu/text/RBBINode;->fLastPos:I

    #@26
    .line 130
    iget-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@28
    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@2a
    .line 131
    iget v0, p1, Landroid/icu/text/RBBINode;->fVal:I

    #@2c
    iput v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    #@2e
    .line 132
    new-instance v0, Ljava/util/HashSet;

    #@30
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@32
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@35
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@37
    .line 133
    new-instance v0, Ljava/util/HashSet;

    #@39
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@3b
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@3e
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@40
    .line 134
    new-instance v0, Ljava/util/HashSet;

    #@42
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@44
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@47
    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@49
    .line 122
    return-void
.end method

.method static printHex(II)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 320
    const/16 v2, 0x10

    #@3
    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 321
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v2, "00000"

    #@a
    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    rsub-int/lit8 v3, v3, 0x5

    #@10
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    #@13
    move-result v3

    #@14
    .line 321
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 323
    .local v0, "leadingZeroes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 324
    invoke-static {v1, p1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    #@2c
    .line 319
    return-void
.end method

.method static printInt(II)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    #@0
    .prologue
    .line 313
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 314
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v1

    #@e
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    #@11
    .line 312
    return-void
.end method

.method static printNode(Landroid/icu/text/RBBINode;)V
    .locals 5
    .param p0, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    const/16 v4, 0xc

    #@2
    const/16 v3, 0xb

    #@4
    const/4 v1, 0x0

    #@5
    .line 272
    if-nez p0, :cond_1

    #@7
    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v1, " -- null --\n"

    #@c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@f
    .line 287
    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v1, ""

    #@14
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@17
    .line 270
    return-void

    #@18
    .line 275
    :cond_1
    iget v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@1a
    const/16 v2, 0xa

    #@1c
    invoke-static {v0, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@1f
    .line 276
    sget-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    #@21
    iget v2, p0, Landroid/icu/text/RBBINode;->fType:I

    #@23
    aget-object v0, v0, v2

    #@25
    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    #@28
    .line 277
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2a
    if-nez v0, :cond_2

    #@2c
    move v0, v1

    #@2d
    :goto_1
    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@30
    .line 278
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@32
    if-nez v0, :cond_3

    #@34
    move v0, v1

    #@35
    :goto_2
    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@38
    .line 279
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@3a
    if-nez v0, :cond_4

    #@3c
    :goto_3
    invoke-static {v1, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@3f
    .line 280
    iget v0, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@41
    invoke-static {v0, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@44
    .line 281
    iget v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    #@46
    const/4 v1, 0x7

    #@47
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@4a
    .line 283
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    #@4c
    const/4 v1, 0x2

    #@4d
    if-ne v0, v1, :cond_0

    #@4f
    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@51
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, " "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-object v2, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6a
    goto :goto_0

    #@6b
    .line 277
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@6d
    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@6f
    goto :goto_1

    #@70
    .line 278
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@72
    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@74
    goto :goto_2

    #@75
    .line 279
    :cond_4
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@77
    iget v1, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@79
    goto :goto_3
.end method

.method static printString(Ljava/lang/String;I)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "minWidth"    # I

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 296
    move v0, p1

    #@3
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@5
    .line 298
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    #@a
    .line 296
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    :goto_1
    if-ge v0, p1, :cond_1

    #@13
    .line 301
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    #@18
    .line 300
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 303
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1d
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@20
    .line 295
    return-void
.end method


# virtual methods
.method cloneTree()Landroid/icu/text/RBBINode;
    .locals 3

    #@0
    .prologue
    .line 149
    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    #@2
    const/4 v2, 0x2

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 152
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@7
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@a
    move-result-object v0

    #@b
    .line 166
    .local v0, "n":Landroid/icu/text/RBBINode;
    :cond_0
    :goto_0
    return-object v0

    #@c
    .line 153
    .end local v0    # "n":Landroid/icu/text/RBBINode;
    :cond_1
    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    #@e
    const/4 v2, 0x1

    #@f
    if-ne v1, v2, :cond_2

    #@11
    .line 154
    move-object v0, p0

    #@12
    .restart local v0    # "n":Landroid/icu/text/RBBINode;
    goto :goto_0

    #@13
    .line 156
    .end local v0    # "n":Landroid/icu/text/RBBINode;
    :cond_2
    new-instance v0, Landroid/icu/text/RBBINode;

    #@15
    invoke-direct {v0, p0}, Landroid/icu/text/RBBINode;-><init>(Landroid/icu/text/RBBINode;)V

    #@18
    .line 157
    .restart local v0    # "n":Landroid/icu/text/RBBINode;
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 158
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1e
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@21
    move-result-object v1

    #@22
    iput-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@24
    .line 159
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@26
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@28
    .line 161
    :cond_3
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 162
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2e
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@31
    move-result-object v1

    #@32
    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@34
    .line 163
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@36
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@38
    goto :goto_0
.end method

.method findNodes(Ljava/util/List;I)V
    .locals 1
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 251
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    #@2
    if-ne v0, p2, :cond_0

    #@4
    .line 252
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    .line 254
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 255
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@10
    .line 257
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 258
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@16
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@19
    .line 250
    :cond_2
    return-void
.end method

.method flattenSets()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 216
    iget v4, p0, Landroid/icu/text/RBBINode;->fType:I

    #@3
    if-eqz v4, :cond_0

    #@5
    const/4 v3, 0x1

    #@6
    :cond_0
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@9
    .line 218
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 219
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@f
    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    #@11
    if-nez v3, :cond_3

    #@13
    .line 220
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@15
    .line 221
    .local v1, "setRefNode":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@17
    .line 222
    .local v2, "usetNode":Landroid/icu/text/RBBINode;
    iget-object v0, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@19
    .line 223
    .local v0, "replTree":Landroid/icu/text/RBBINode;
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1f
    .line 224
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@21
    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@23
    .line 230
    .end local v0    # "replTree":Landroid/icu/text/RBBINode;
    .end local v1    # "setRefNode":Landroid/icu/text/RBBINode;
    .end local v2    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 231
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@29
    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    #@2b
    if-nez v3, :cond_4

    #@2d
    .line 232
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2f
    .line 233
    .restart local v1    # "setRefNode":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@31
    .line 234
    .restart local v2    # "usetNode":Landroid/icu/text/RBBINode;
    iget-object v0, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@33
    .line 235
    .restart local v0    # "replTree":Landroid/icu/text/RBBINode;
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@36
    move-result-object v3

    #@37
    iput-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@39
    .line 236
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@3b
    iput-object p0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@3d
    .line 215
    .end local v0    # "replTree":Landroid/icu/text/RBBINode;
    .end local v1    # "setRefNode":Landroid/icu/text/RBBINode;
    .end local v2    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_2
    :goto_1
    return-void

    #@3e
    .line 226
    :cond_3
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@40
    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    #@43
    goto :goto_0

    #@44
    .line 239
    :cond_4
    iget-object v3, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@46
    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    #@49
    goto :goto_1
.end method

.method flattenVariables()Landroid/icu/text/RBBINode;
    .locals 3

    #@0
    .prologue
    .line 190
    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    #@2
    const/4 v2, 0x2

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 191
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@7
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    #@a
    move-result-object v0

    #@b
    .line 193
    .local v0, "retNode":Landroid/icu/text/RBBINode;
    return-object v0

    #@c
    .line 196
    .end local v0    # "retNode":Landroid/icu/text/RBBINode;
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 197
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@12
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@18
    .line 198
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1a
    iput-object p0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@1c
    .line 200
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 201
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@28
    .line 202
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2a
    iput-object p0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2c
    .line 204
    :cond_2
    return-object p0
.end method

.method printTree(Z)V
    .locals 3
    .param p1, "printHeading"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 336
    if-eqz p1, :cond_0

    #@3
    .line 337
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    const-string/jumbo v1, "-------------------------------------------------------------------"

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b
    .line 338
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d
    const-string/jumbo v1, "    Serial       type     Parent  LeftChild  RightChild    position  value"

    #@10
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13
    .line 340
    :cond_0
    invoke-static {p0}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    #@16
    .line 343
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    #@18
    const/4 v1, 0x2

    #@19
    if-eq v0, v1, :cond_2

    #@1b
    .line 344
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 345
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@21
    invoke-virtual {v0, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@24
    .line 348
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 349
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2a
    invoke-virtual {v0, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@2d
    .line 335
    :cond_2
    return-void
.end method
