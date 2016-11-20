.class public Landroid/net/apf/ApfGenerator;
.super Ljava/lang/Object;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/apf/ApfGenerator$ExtendedOpcodes;,
        Landroid/net/apf/ApfGenerator$IllegalInstructionException;,
        Landroid/net/apf/ApfGenerator$Instruction;,
        Landroid/net/apf/ApfGenerator$Opcodes;,
        Landroid/net/apf/ApfGenerator$Register;
    }
.end annotation


# static fields
.field public static final DROP_LABEL:Ljava/lang/String; = "__DROP__"

.field public static final FILTER_AGE_MEMORY_SLOT:I = 0xf

.field public static final FIRST_PREFILLED_MEMORY_SLOT:I = 0xd

.field public static final IPV4_HEADER_SIZE_MEMORY_SLOT:I = 0xd

.field public static final LAST_PREFILLED_MEMORY_SLOT:I = 0xf

.field public static final MEMORY_SLOTS:I = 0x10

.field public static final PACKET_SIZE_MEMORY_SLOT:I = 0xe

.field public static final PASS_LABEL:Ljava/lang/String; = "__PASS__"


# instance fields
.field private final mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

.field private mGenerated:Z

.field private final mInstructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/apf/ApfGenerator$Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private final mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;


# direct methods
.method static synthetic -get0(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/apf/ApfGenerator;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/apf/ApfGenerator;)Landroid/net/apf/ApfGenerator$Instruction;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 358
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    #@a
    .line 359
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mLabels:Ljava/util/HashMap;

    #@11
    .line 360
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@13
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@15
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@18
    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@1a
    .line 361
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@1c
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@1e
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@21
    iput-object v0, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@23
    .line 30
    return-void
.end method

.method private addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V
    .locals 2
    .param p1, "instruction"    # Landroid/net/apf/ApfGenerator$Instruction;

    #@0
    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Program already generated"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 377
    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12
    .line 373
    return-void
.end method

.method private updateInstructionOffsets()I
    .locals 4

    #@0
    .prologue
    .line 826
    const/4 v2, 0x0

    #@1
    .line 827
    .local v2, "offset":I
    iget-object v3, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "instruction$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@13
    .line 828
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    iput v2, v0, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@15
    .line 829
    invoke-virtual {v0}, Landroid/net/apf/ApfGenerator$Instruction;->size()I

    #@18
    move-result v3

    #@19
    add-int/2addr v2, v3

    #@1a
    goto :goto_0

    #@1b
    .line 831
    .end local v0    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_0
    return v2
.end method


# virtual methods
.method public addAdd(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 485
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 486
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@a
    .line 487
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 488
    return-object p0
.end method

.method public addAddR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 556
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 557
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 558
    return-object p0
.end method

.method public addAnd(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 515
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 516
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 517
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 518
    return-object p0
.end method

.method public addAndR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 584
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 585
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 586
    return-object p0
.end method

.method public addDiv(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 506
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@a
    .line 507
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 508
    return-object p0
.end method

.method public addDivR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 574
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 575
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 576
    return-object p0
.end method

.method public addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 407
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@a
    .line 408
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 409
    return-object p0
.end method

.method public addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "bytes"    # [B
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 739
    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 740
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@6
    const-string/jumbo v2, "JNEBS fails with R1"

    #@9
    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 742
    :cond_0
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@f
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    #@11
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@14
    .line 743
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    array-length v1, p2

    #@15
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@18
    .line 744
    invoke-virtual {v0, p3}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@1b
    .line 745
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setCompareBytes([B)V

    #@1e
    .line 746
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@21
    .line 747
    return-object p0
.end method

.method public addJumpIfR0AnyBitsSet(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 672
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 673
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 674
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@d
    .line 675
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@10
    .line 676
    return-object p0
.end method

.method public addJumpIfR0AnyBitsSetR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 727
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 728
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@c
    .line 729
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@f
    .line 730
    return-object p0
.end method

.method public addJumpIfR0Equals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 625
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 626
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@d
    .line 627
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@10
    .line 628
    return-object p0
.end method

.method public addJumpIfR0EqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 683
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 684
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@c
    .line 685
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@f
    .line 686
    return-object p0
.end method

.method public addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 648
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 649
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 650
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@d
    .line 651
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@10
    .line 652
    return-object p0
.end method

.method public addJumpIfR0GreaterThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 705
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 706
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@c
    .line 707
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@f
    .line 708
    return-object p0
.end method

.method public addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 660
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 661
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 662
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@d
    .line 663
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@10
    .line 664
    return-object p0
.end method

.method public addJumpIfR0LessThanR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 716
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 717
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@c
    .line 718
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@f
    .line 719
    return-object p0
.end method

.method public addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 636
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 637
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 638
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@d
    .line 639
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@10
    .line 640
    return-object p0
.end method

.method public addJumpIfR0NotEqualsR1(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 694
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 695
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setTargetLabel(Ljava/lang/String;)V

    #@c
    .line 696
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@f
    .line 697
    return-object p0
.end method

.method public addLeftShift(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 535
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 536
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@a
    .line 537
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 538
    return-object p0
.end method

.method public addLeftShiftR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 604
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 605
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 606
    return-object p0
.end method

.method public addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 428
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 429
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 430
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 431
    return-object p0
.end method

.method public addLoad16Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 463
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 464
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 465
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 466
    return-object p0
.end method

.method public addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 439
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 440
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 441
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 442
    return-object p0
.end method

.method public addLoad32Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 475
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 476
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 477
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 478
    return-object p0
.end method

.method public addLoad8(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 417
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 418
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 419
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 420
    return-object p0
.end method

.method public addLoad8Indexed(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 451
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 452
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 453
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 454
    return-object p0
.end method

.method public addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 4
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 756
    if-ltz p2, :cond_0

    #@2
    const/16 v1, 0xf

    #@4
    if-le p2, v1, :cond_1

    #@6
    .line 757
    :cond_0
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "illegal memory slot number: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 759
    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@22
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@24
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@27
    .line 760
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->LDM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@29
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@2b
    add-int/2addr v1, p2

    #@2c
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@2f
    .line 761
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@32
    .line 762
    return-object p0
.end method

.method public addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 613
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 614
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p2}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@a
    .line 615
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 616
    return-object p0
.end method

.method public addMove(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    #@0
    .prologue
    .line 815
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 816
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->MOVE:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@9
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@b
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@e
    .line 817
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@11
    .line 818
    return-object p0
.end method

.method public addMul(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 495
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 496
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@a
    .line 497
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 498
    return-object p0
.end method

.method public addMulR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 565
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 566
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 567
    return-object p0
.end method

.method public addNeg(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    #@0
    .prologue
    .line 794
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 795
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NEG:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@9
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@b
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@e
    .line 796
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@11
    .line 797
    return-object p0
.end method

.method public addNot(Landroid/net/apf/ApfGenerator$Register;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;

    #@0
    .prologue
    .line 784
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@7
    .line 785
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->NOT:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@9
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@b
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@e
    .line 786
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@11
    .line 787
    return-object p0
.end method

.method public addOr(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 525
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 526
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@a
    .line 527
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 528
    return-object p0
.end method

.method public addOrR1()Landroid/net/apf/ApfGenerator;
    .locals 3

    #@0
    .prologue
    .line 594
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    #@6
    invoke-direct {v0, p0, v1, v2}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@9
    .line 595
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@c
    .line 596
    return-object p0
.end method

.method public addRightShift(I)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 546
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 547
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    neg-int v1, p1

    #@8
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setSignedImm(I)V

    #@b
    .line 548
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@e
    .line 549
    return-object p0
.end method

.method public addStoreToMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;
    .locals 4
    .param p1, "register"    # Landroid/net/apf/ApfGenerator$Register;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 771
    if-ltz p2, :cond_0

    #@2
    const/16 v1, 0xf

    #@4
    if-le p2, v1, :cond_1

    #@6
    .line 772
    :cond_0
    new-instance v1, Landroid/net/apf/ApfGenerator$IllegalInstructionException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "illegal memory slot number: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Landroid/net/apf/ApfGenerator$IllegalInstructionException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 774
    :cond_1
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@22
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@24
    invoke-direct {v0, p0, v1, p1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;Landroid/net/apf/ApfGenerator$Register;)V

    #@27
    .line 775
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->STM:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@29
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@2b
    add-int/2addr v1, p2

    #@2c
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@2f
    .line 776
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@32
    .line 777
    return-object p0
.end method

.method public addSwap()Landroid/net/apf/ApfGenerator;
    .locals 2

    #@0
    .prologue
    .line 804
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 805
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    sget-object v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->SWAP:Landroid/net/apf/ApfGenerator$ExtendedOpcodes;

    #@9
    iget v1, v1, Landroid/net/apf/ApfGenerator$ExtendedOpcodes;->value:I

    #@b
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfGenerator$Instruction;->setUnsignedImm(I)V

    #@e
    .line 806
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@11
    .line 807
    return-object p0
.end method

.method public defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    new-instance v0, Landroid/net/apf/ApfGenerator$Instruction;

    #@2
    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    #@4
    invoke-direct {v0, p0, v1}, Landroid/net/apf/ApfGenerator$Instruction;-><init>(Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfGenerator$Opcodes;)V

    #@7
    .line 397
    .local v0, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v0, p1}, Landroid/net/apf/ApfGenerator$Instruction;->setLabel(Ljava/lang/String;)V

    #@a
    .line 398
    invoke-direct {p0, v0}, Landroid/net/apf/ApfGenerator;->addInstruction(Landroid/net/apf/ApfGenerator$Instruction;)V

    #@d
    .line 399
    return-object p0
.end method

.method public generate()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    #@0
    .prologue
    .line 851
    iget-boolean v7, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    #@2
    if-eqz v7, :cond_0

    #@4
    .line 852
    new-instance v7, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v8, "Can only generate() once!"

    #@9
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v7

    #@d
    .line 854
    :cond_0
    const/4 v7, 0x1

    #@e
    iput-boolean v7, p0, Landroid/net/apf/ApfGenerator;->mGenerated:Z

    #@10
    .line 863
    const/16 v3, 0xa

    #@12
    .line 865
    .local v3, "iterations_remaining":I
    :goto_0
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    #@15
    move-result v6

    #@16
    .line 867
    .local v6, "total_size":I
    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mDropLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@18
    add-int/lit8 v8, v6, 0x1

    #@1a
    iput v8, v7, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@1c
    .line 868
    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mPassLabel:Landroid/net/apf/ApfGenerator$Instruction;

    #@1e
    iput v6, v7, Landroid/net/apf/ApfGenerator$Instruction;->offset:I

    #@20
    .line 870
    add-int/lit8 v4, v3, -0x1

    #@22
    .end local v3    # "iterations_remaining":I
    .local v4, "iterations_remaining":I
    if-nez v3, :cond_2

    #@24
    .line 880
    :cond_1
    new-array v0, v6, [B

    #@26
    .line 881
    .local v0, "bytecode":[B
    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    #@28
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v2

    #@2c
    .local v2, "instruction$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_5

    #@32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/net/apf/ApfGenerator$Instruction;

    #@38
    .line 882
    .local v1, "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v1, v0}, Landroid/net/apf/ApfGenerator$Instruction;->generate([B)V

    #@3b
    goto :goto_1

    #@3c
    .line 872
    .end local v0    # "bytecode":[B
    .end local v1    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    .end local v2    # "instruction$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    #@3d
    .line 873
    .local v5, "shrunk":Z
    iget-object v7, p0, Landroid/net/apf/ApfGenerator;->mInstructions:Ljava/util/ArrayList;

    #@3f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v2

    #@43
    .restart local v2    # "instruction$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_4

    #@49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Landroid/net/apf/ApfGenerator$Instruction;

    #@4f
    .line 874
    .restart local v1    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    invoke-virtual {v1}, Landroid/net/apf/ApfGenerator$Instruction;->shrink()Z

    #@52
    move-result v7

    #@53
    if-eqz v7, :cond_3

    #@55
    .line 875
    const/4 v5, 0x1

    #@56
    goto :goto_2

    #@57
    .line 878
    .end local v1    # "instruction":Landroid/net/apf/ApfGenerator$Instruction;
    :cond_4
    if-eqz v5, :cond_1

    #@59
    move v3, v4

    #@5a
    .end local v4    # "iterations_remaining":I
    .restart local v3    # "iterations_remaining":I
    goto :goto_0

    #@5b
    .line 884
    .end local v3    # "iterations_remaining":I
    .end local v5    # "shrunk":Z
    .restart local v0    # "bytecode":[B
    .restart local v4    # "iterations_remaining":I
    :cond_5
    return-object v0
.end method

.method public programLengthOverEstimate()I
    .locals 1

    #@0
    .prologue
    .line 839
    invoke-direct {p0}, Landroid/net/apf/ApfGenerator;->updateInstructionOffsets()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setApfVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    #@0
    .prologue
    .line 370
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method
