.class Landroid/net/apf/ApfGenerator$Instruction;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Instruction"
.end annotation


# instance fields
.field private mCompareBytes:[B

.field private mHasImm:Z

.field private mImm:I

.field private mImmSigned:Z

.field private mImmSize:B

.field private mLabel:Ljava/lang/String;

.field private final mOpcode:B

.field private final mRegister:B

.field private mTargetLabel:Ljava/lang/String;

.field private mTargetLabelSize:B

.field offset:I

.field final synthetic this$0:Landroid/net/apf/ApfGenerator;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/apf/ApfGenerator;
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;

    #@0
    .prologue
    .line 118
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@5
    .line 117
    return-void
.end method

.method constructor <init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/apf/ApfGenerator;
    .param p2, "opcode"    # Landroid/net/apf/ApfGenerator$Opcodes;
    .param p3, "register"    # Landroid/net/apf/ApfGenerator$Register;

    #@0
    .prologue
    .line 112
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 113
    iget v0, p2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@7
    int-to-byte v0, v0

    #@8
    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@a
    .line 114
    iget v0, p3, Landroid/net/apf/ApfGenerator$Register;->value:I

    #@c
    int-to-byte v0, v0

    #@d
    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    #@f
    .line 112
    return-void
.end method

.method private calculateImmSize(IZ)B
    .locals 1
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 289
    if-nez p1, :cond_0

    #@3
    .line 290
    return v0

    #@4
    .line 292
    :cond_0
    if-eqz p2, :cond_2

    #@6
    const/16 v0, -0x80

    #@8
    if-lt p1, v0, :cond_2

    #@a
    const/16 v0, 0x7f

    #@c
    if-gt p1, v0, :cond_2

    #@e
    .line 294
    :cond_1
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 293
    :cond_2
    if-nez p2, :cond_3

    #@12
    if-ltz p1, :cond_3

    #@14
    const/16 v0, 0xff

    #@16
    if-le p1, v0, :cond_1

    #@18
    .line 296
    :cond_3
    if-eqz p2, :cond_5

    #@1a
    const/16 v0, -0x8000

    #@1c
    if-lt p1, v0, :cond_5

    #@1e
    const/16 v0, 0x7fff

    #@20
    if-gt p1, v0, :cond_5

    #@22
    .line 298
    :cond_4
    const/4 v0, 0x2

    #@23
    return v0

    #@24
    .line 297
    :cond_5
    if-nez p2, :cond_6

    #@26
    if-ltz p1, :cond_6

    #@28
    const v0, 0xffff

    #@2b
    if-le p1, v0, :cond_4

    #@2d
    .line 300
    :cond_6
    const/4 v0, 0x4

    #@2e
    return v0
.end method

.method private calculateTargetLabelOffset()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@2
    const-string/jumbo v3, "__DROP__"

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 270
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@9
    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get0(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    #@c
    move-result-object v0

    #@d
    .line 276
    .local v0, "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :goto_0
    if-nez v0, :cond_2

    #@f
    .line 277
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "label not found: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 271
    .end local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_0
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@2d
    const-string/jumbo v3, "__PASS__"

    #@30
    if-ne v2, v3, :cond_1

    #@32
    .line 272
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@34
    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get2(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;

    #@37
    move-result-object v0

    #@38
    .restart local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_0

    #@39
    .line 274
    .end local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_1
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@3b
    invoke-static {v2}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    #@3e
    move-result-object v2

    #@3f
    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@41
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@47
    .restart local v0    # "targetLabelInstruction":Landroid/net/apf/ApfGenerator$Instruction;
    goto :goto_0

    #@48
    .line 280
    :cond_2
    iget v2, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@4a
    iget v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@4c
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@4f
    move-result v4

    #@50
    add-int/2addr v3, v4

    #@51
    sub-int v1, v2, v3

    #@53
    .line 281
    .local v1, "targetLabelOffset":I
    if-gez v1, :cond_3

    #@55
    .line 282
    new-instance v2, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "backward branches disallowed; label: "

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    .line 283
    iget-object v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@65
    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-direct {v2, v3}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 285
    :cond_3
    return v1
.end method

.method private generateImmSizeField()B
    .locals 2

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    #@3
    move-result v0

    #@4
    .line 203
    .local v0, "immSize":B
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x3

    #@8
    .end local v0    # "immSize":B
    :cond_0
    return v0
.end method

.method private generateInstructionByte()B
    .locals 3

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateImmSizeField()B

    #@3
    move-result v0

    #@4
    .line 211
    .local v0, "sizeField":B
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@6
    shl-int/lit8 v1, v1, 0x3

    #@8
    shl-int/lit8 v2, v0, 0x1

    #@a
    or-int/2addr v1, v2

    #@b
    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mRegister:B

    #@d
    or-int/2addr v1, v2

    #@e
    int-to-byte v1, v1

    #@f
    return v1
.end method

.method private generatedImmSize()B
    .locals 2

    #@0
    .prologue
    .line 264
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    #@2
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@4
    if-le v0, v1, :cond_0

    #@6
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@b
    goto :goto_0
.end method

.method private writeValue(I[BI)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "bytecode"    # [B
    .param p3, "writingOffset"    # I

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    #@3
    move-result v2

    #@4
    add-int/lit8 v0, v2, -0x1

    #@6
    .local v0, "i":I
    move v1, p3

    #@7
    .end local p3    # "writingOffset":I
    .local v1, "writingOffset":I
    :goto_0
    if-ltz v0, :cond_0

    #@9
    .line 225
    add-int/lit8 p3, v1, 0x1

    #@b
    .end local v1    # "writingOffset":I
    .restart local p3    # "writingOffset":I
    mul-int/lit8 v2, v0, 0x8

    #@d
    shr-int v2, p1, v2

    #@f
    and-int/lit16 v2, v2, 0xff

    #@11
    int-to-byte v2, v2

    #@12
    aput-byte v2, p2, v1

    #@14
    .line 224
    add-int/lit8 v0, v0, -0x1

    #@16
    move v1, p3

    #@17
    .end local p3    # "writingOffset":I
    .restart local v1    # "writingOffset":I
    goto :goto_0

    #@18
    .line 227
    :cond_0
    return v1
.end method


# virtual methods
.method generate([B)V
    .locals 5
    .param p1, "bytecode"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    iget-byte v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@2
    sget-object v3, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    iget v3, v3, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@6
    if-ne v2, v3, :cond_0

    #@8
    .line 235
    return-void

    #@9
    .line 237
    :cond_0
    iget v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@b
    .line 238
    .local v0, "writingOffset":I
    add-int/lit8 v1, v0, 0x1

    #@d
    .end local v0    # "writingOffset":I
    .local v1, "writingOffset":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generateInstructionByte()B

    #@10
    move-result v2

    #@11
    aput-byte v2, p1, v0

    #@13
    .line 239
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@15
    if-eqz v2, :cond_4

    #@17
    .line 240
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    #@1a
    move-result v2

    #@1b
    invoke-direct {p0, v2, p1, v1}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    #@1e
    move-result v0

    #@1f
    .line 242
    .end local v1    # "writingOffset":I
    .restart local v0    # "writingOffset":I
    :goto_0
    iget-boolean v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 243
    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    #@25
    invoke-direct {p0, v2, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->writeValue(I[BI)I

    #@28
    move-result v0

    #@29
    .line 245
    :cond_1
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@2b
    if-eqz v2, :cond_2

    #@2d
    .line 246
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@2f
    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@31
    array-length v3, v3

    #@32
    const/4 v4, 0x0

    #@33
    invoke-static {v2, v4, p1, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 247
    iget-object v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@38
    array-length v2, v2

    #@39
    add-int/2addr v0, v2

    #@3a
    .line 249
    :cond_2
    iget v2, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@3c
    sub-int v2, v0, v2

    #@3e
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@41
    move-result v3

    #@42
    if-eq v2, v3, :cond_3

    #@44
    .line 250
    new-instance v2, Ljava/lang/IllegalStateException;

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "wrote "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    iget v4, p0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@54
    sub-int v4, v0, v4

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    .line 251
    const-string/jumbo v4, " but should have written "

    #@5d
    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 251
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@64
    move-result v4

    #@65
    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@70
    throw v2

    #@71
    .line 233
    :cond_3
    return-void

    #@72
    .end local v0    # "writingOffset":I
    .restart local v1    # "writingOffset":I
    :cond_4
    move v0, v1

    #@73
    .end local v1    # "writingOffset":I
    .restart local v0    # "writingOffset":I
    goto :goto_0
.end method

.method setCompareBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 153
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "adding compare bytes to non-JNEBS instruction"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 156
    :cond_0
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@13
    .line 152
    return-void
.end method

.method setImm(IZ)V
    .locals 1
    .param p1, "imm"    # I
    .param p2, "signed"    # Z

    #@0
    .prologue
    .line 122
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    #@3
    .line 123
    iput p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImm:I

    #@5
    .line 124
    iput-boolean p2, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSigned:Z

    #@7
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    #@a
    move-result v0

    #@b
    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mImmSize:B

    #@d
    .line 121
    return-void
.end method

.method setLabel(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@2
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 138
    new-instance v0, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "duplicate label "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 140
    :cond_0
    iget-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@28
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@2a
    iget v1, v1, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@2c
    if-eq v0, v1, :cond_1

    #@2e
    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    #@30
    const-string/jumbo v1, "adding label to non-label instruction"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 143
    :cond_1
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mLabel:Ljava/lang/String;

    #@39
    .line 144
    iget-object v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->this$0:Landroid/net/apf/ApfGenerator;

    #@3b
    invoke-static {v0}, Landroid/net/apf/ApfGenerator;->-get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    .line 136
    return-void
.end method

.method setSignedImm(I)V
    .locals 1
    .param p1, "imm"    # I

    #@0
    .prologue
    .line 133
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    #@4
    .line 132
    return-void
.end method

.method setTargetLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    iput-object p1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@2
    .line 149
    const/4 v0, 0x4

    #@3
    iput-byte v0, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@5
    .line 147
    return-void
.end method

.method setUnsignedImm(I)V
    .locals 1
    .param p1, "imm"    # I

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->setImm(IZ)V

    #@4
    .line 128
    return-void
.end method

.method shrink()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 185
    iget-object v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 186
    return v2

    #@6
    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@9
    move-result v0

    #@a
    .line 189
    .local v0, "oldSize":I
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@c
    .line 190
    .local v1, "oldTargetLabelSize":I
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->calculateTargetLabelOffset()I

    #@f
    move-result v3

    #@10
    invoke-direct {p0, v3, v2}, Landroid/net/apf/ApfGenerator$Instruction;->calculateImmSize(IZ)B

    #@13
    move-result v3

    #@14
    iput-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@16
    .line 191
    iget-byte v3, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabelSize:B

    #@18
    if-le v3, v1, :cond_1

    #@1a
    .line 192
    new-instance v2, Ljava/lang/IllegalStateException;

    #@1c
    const-string/jumbo v3, "instruction grew"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@26
    move-result v3

    #@27
    if-ge v3, v0, :cond_2

    #@29
    const/4 v2, 0x1

    #@2a
    :cond_2
    return v2
.end method

.method size()I
    .locals 3

    #@0
    .prologue
    .line 163
    iget-byte v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mOpcode:B

    #@2
    sget-object v2, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    iget v2, v2, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 164
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 166
    :cond_0
    const/4 v0, 0x1

    #@b
    .line 167
    .local v0, "size":I
    iget-boolean v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mHasImm:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 168
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    #@12
    move-result v1

    #@13
    add-int/lit8 v0, v1, 0x1

    #@15
    .line 170
    :cond_1
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mTargetLabel:Ljava/lang/String;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 171
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator$Instruction;->generatedImmSize()B

    #@1c
    move-result v1

    #@1d
    add-int/2addr v0, v1

    #@1e
    .line 173
    :cond_2
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@20
    if-eqz v1, :cond_3

    #@22
    .line 174
    iget-object v1, p0, Landroid/net/apf/ApfGenerator$Instruction;->mCompareBytes:[B

    #@24
    array-length v1, v1

    #@25
    add-int/2addr v0, v1

    #@26
    .line 176
    :cond_3
    return v0
.end method
