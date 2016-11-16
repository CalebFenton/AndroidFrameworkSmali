.class public final Lcom/android/dex/Dex$Section;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Lcom/android/dex/util/ByteInput;
.implements Lcom/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Section"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method static synthetic -wrap0(Lcom/android/dex/Dex$Section;)Lcom/android/dex/ClassData;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readClassData()Lcom/android/dex/ClassData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/dex/Dex$Section;)Lcom/android/dex/Code;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readCode()Lcom/android/dex/Code;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dex/Dex;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 519
    iput-object p2, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    #@7
    .line 520
    iput-object p3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@9
    .line 521
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    #@f
    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$Section;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dex/Dex;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    #@3
    return-void
.end method

.method private findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I
    .locals 3
    .param p1, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 698
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v1, v2, :cond_1

    #@4
    .line 699
    aget-object v0, p1, v1

    #@6
    .line 700
    .local v0, "catchHandler":Lcom/android/dex/Code$CatchHandler;
    invoke-virtual {v0}, Lcom/android/dex/Code$CatchHandler;->getOffset()I

    #@9
    move-result v2

    #@a
    if-ne v2, p2, :cond_0

    #@c
    .line 701
    return v1

    #@d
    .line 698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 704
    .end local v0    # "catchHandler":Lcom/android/dex/Code$CatchHandler;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v2
.end method

.method private getBytesFrom(I)[B
    .locals 3
    .param p1, "start"    # I

    #@0
    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    .line 761
    .local v0, "end":I
    sub-int v2, v0, p1

    #@8
    new-array v1, v2, [B

    #@a
    .line 762
    .local v1, "result":[B
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 763
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@14
    .line 764
    return-object v1
.end method

.method private readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;
    .locals 7
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readSleb128()I

    #@3
    move-result v4

    #@4
    .line 709
    .local v4, "size":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@7
    move-result v2

    #@8
    .line 710
    .local v2, "handlersCount":I
    new-array v5, v2, [I

    #@a
    .line 711
    .local v5, "typeIndexes":[I
    new-array v0, v2, [I

    #@c
    .line 712
    .local v0, "addresses":[I
    const/4 v3, 0x0

    #@d
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@f
    .line 713
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@12
    move-result v6

    #@13
    aput v6, v5, v3

    #@15
    .line 714
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@18
    move-result v6

    #@19
    aput v6, v0, v3

    #@1b
    .line 712
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 716
    :cond_0
    if-gtz v4, :cond_1

    #@20
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@23
    move-result v1

    #@24
    .line 717
    .local v1, "catchAllAddress":I
    :goto_1
    new-instance v6, Lcom/android/dex/Code$CatchHandler;

    #@26
    invoke-direct {v6, v5, v0, v1, p1}, Lcom/android/dex/Code$CatchHandler;-><init>([I[III)V

    #@29
    return-object v6

    #@2a
    .line 716
    .end local v1    # "catchAllAddress":I
    :cond_1
    const/4 v1, -0x1

    #@2b
    .restart local v1    # "catchAllAddress":I
    goto :goto_1
.end method

.method private readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;
    .locals 6

    #@0
    .prologue
    .line 675
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    .line 676
    .local v0, "baseOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@9
    move-result v1

    #@a
    .line 677
    .local v1, "catchHandlersSize":I
    new-array v4, v1, [Lcom/android/dex/Code$CatchHandler;

    #@c
    .line 678
    .local v4, "result":[Lcom/android/dex/Code$CatchHandler;
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@f
    .line 679
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@11
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    #@14
    move-result v5

    #@15
    sub-int v3, v5, v0

    #@17
    .line 680
    .local v3, "offset":I
    invoke-direct {p0, v3}, Lcom/android/dex/Dex$Section;->readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;

    #@1a
    move-result-object v5

    #@1b
    aput-object v5, v4, v2

    #@1d
    .line 678
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 682
    .end local v3    # "offset":I
    :cond_0
    return-object v4
.end method

.method private readClassData()Lcom/android/dex/ClassData;
    .locals 9

    #@0
    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@3
    move-result v5

    #@4
    .line 722
    .local v5, "staticFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@7
    move-result v3

    #@8
    .line 723
    .local v3, "instanceFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@b
    move-result v1

    #@c
    .line 724
    .local v1, "directMethodsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@f
    move-result v7

    #@10
    .line 725
    .local v7, "virtualMethodsSize":I
    invoke-direct {p0, v5}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    #@13
    move-result-object v4

    #@14
    .line 726
    .local v4, "staticFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v3}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    #@17
    move-result-object v2

    #@18
    .line 727
    .local v2, "instanceFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v1}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    #@1b
    move-result-object v0

    #@1c
    .line 728
    .local v0, "directMethods":[Lcom/android/dex/ClassData$Method;
    invoke-direct {p0, v7}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    #@1f
    move-result-object v6

    #@20
    .line 729
    .local v6, "virtualMethods":[Lcom/android/dex/ClassData$Method;
    new-instance v8, Lcom/android/dex/ClassData;

    #@22
    invoke-direct {v8, v4, v2, v0, v6}, Lcom/android/dex/ClassData;-><init>([Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Method;[Lcom/android/dex/ClassData$Method;)V

    #@25
    return-object v8
.end method

.method private readCode()Lcom/android/dex/Code;
    .locals 12

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 643
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@4
    move-result v1

    #@5
    .line 644
    .local v1, "registersSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@8
    move-result v2

    #@9
    .line 645
    .local v2, "insSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@c
    move-result v3

    #@d
    .line 646
    .local v3, "outsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@10
    move-result v10

    #@11
    .line 647
    .local v10, "triesSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@14
    move-result v4

    #@15
    .line 648
    .local v4, "debugInfoOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@18
    move-result v8

    #@19
    .line 649
    .local v8, "instructionsSize":I
    invoke-virtual {p0, v8}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    #@1c
    move-result-object v5

    #@1d
    .line 652
    .local v5, "instructions":[S
    if-lez v10, :cond_1

    #@1f
    .line 653
    array-length v0, v5

    #@20
    rem-int/lit8 v0, v0, 0x2

    #@22
    const/4 v11, 0x1

    #@23
    if-ne v0, v11, :cond_0

    #@25
    .line 654
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    #@28
    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@2a
    iget-object v11, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2c
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    #@2f
    move-result v11

    #@30
    invoke-virtual {v0, v11}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@33
    move-result-object v9

    #@34
    .line 663
    .local v9, "triesSection":Lcom/android/dex/Dex$Section;
    mul-int/lit8 v0, v10, 0x8

    #@36
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->skip(I)V

    #@39
    .line 664
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;

    #@3c
    move-result-object v7

    #@3d
    .line 665
    .local v7, "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    invoke-direct {v9, v10, v7}, Lcom/android/dex/Dex$Section;->readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;

    #@40
    move-result-object v6

    #@41
    .line 670
    .end local v9    # "triesSection":Lcom/android/dex/Dex$Section;
    .local v6, "tries":[Lcom/android/dex/Code$Try;
    :goto_0
    new-instance v0, Lcom/android/dex/Code;

    #@43
    invoke-direct/range {v0 .. v7}, Lcom/android/dex/Code;-><init>(IIII[S[Lcom/android/dex/Code$Try;[Lcom/android/dex/Code$CatchHandler;)V

    #@46
    return-object v0

    #@47
    .line 667
    .end local v6    # "tries":[Lcom/android/dex/Code$Try;
    .end local v7    # "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    :cond_1
    new-array v6, v0, [Lcom/android/dex/Code$Try;

    #@49
    .line 668
    .restart local v6    # "tries":[Lcom/android/dex/Code$Try;
    new-array v7, v0, [Lcom/android/dex/Code$CatchHandler;

    #@4b
    .restart local v7    # "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    goto :goto_0
.end method

.method private readFields(I)[Lcom/android/dex/ClassData$Field;
    .locals 5
    .param p1, "count"    # I

    #@0
    .prologue
    .line 733
    new-array v3, p1, [Lcom/android/dex/ClassData$Field;

    #@2
    .line 734
    .local v3, "result":[Lcom/android/dex/ClassData$Field;
    const/4 v1, 0x0

    #@3
    .line 735
    .local v1, "fieldIndex":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    #@6
    .line 736
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@9
    move-result v4

    #@a
    add-int/2addr v1, v4

    #@b
    .line 737
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@e
    move-result v0

    #@f
    .line 738
    .local v0, "accessFlags":I
    new-instance v4, Lcom/android/dex/ClassData$Field;

    #@11
    invoke-direct {v4, v1, v0}, Lcom/android/dex/ClassData$Field;-><init>(II)V

    #@14
    aput-object v4, v3, v2

    #@16
    .line 735
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 740
    .end local v0    # "accessFlags":I
    :cond_0
    return-object v3
.end method

.method private readMethods(I)[Lcom/android/dex/ClassData$Method;
    .locals 6
    .param p1, "count"    # I

    #@0
    .prologue
    .line 744
    new-array v4, p1, [Lcom/android/dex/ClassData$Method;

    #@2
    .line 745
    .local v4, "result":[Lcom/android/dex/ClassData$Method;
    const/4 v3, 0x0

    #@3
    .line 746
    .local v3, "methodIndex":I
    const/4 v2, 0x0

    #@4
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    #@6
    .line 747
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@9
    move-result v5

    #@a
    add-int/2addr v3, v5

    #@b
    .line 748
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@e
    move-result v0

    #@f
    .line 749
    .local v0, "accessFlags":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@12
    move-result v1

    #@13
    .line 750
    .local v1, "codeOff":I
    new-instance v5, Lcom/android/dex/ClassData$Method;

    #@15
    invoke-direct {v5, v3, v0, v1}, Lcom/android/dex/ClassData$Method;-><init>(III)V

    #@18
    aput-object v5, v4, v2

    #@1a
    .line 746
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 752
    .end local v0    # "accessFlags":I
    .end local v1    # "codeOff":I
    :cond_0
    return-object v4
.end method

.method private readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;
    .locals 7
    .param p1, "triesSize"    # I
    .param p2, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;

    #@0
    .prologue
    .line 686
    new-array v4, p1, [Lcom/android/dex/Code$Try;

    #@2
    .line 687
    .local v4, "result":[Lcom/android/dex/Code$Try;
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    #@5
    .line 688
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@8
    move-result v5

    #@9
    .line 689
    .local v5, "startAddress":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@c
    move-result v3

    #@d
    .line 690
    .local v3, "instructionCount":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@10
    move-result v1

    #@11
    .line 691
    .local v1, "handlerOffset":I
    invoke-direct {p0, p2, v1}, Lcom/android/dex/Dex$Section;->findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I

    #@14
    move-result v0

    #@15
    .line 692
    .local v0, "catchHandlerIndex":I
    new-instance v6, Lcom/android/dex/Code$Try;

    #@17
    invoke-direct {v6, v5, v3, v0}, Lcom/android/dex/Code$Try;-><init>(III)V

    #@1a
    aput-object v6, v4, v2

    #@1c
    .line 687
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 694
    .end local v0    # "catchHandlerIndex":I
    .end local v1    # "handlerOffset":I
    .end local v3    # "instructionCount":I
    .end local v5    # "startAddress":I
    :cond_0
    return-object v4
.end method


# virtual methods
.method public alignToFourBytes()V
    .locals 2

    #@0
    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x3

    #@a
    and-int/lit8 v1, v1, -0x4

    #@c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@f
    .line 790
    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 798
    :goto_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    and-int/lit8 v0, v0, 0x3

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 799
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@10
    goto :goto_0

    #@11
    .line 797
    :cond_0
    return-void
.end method

.method public assertFourByteAligned()V
    .locals 2

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    and-int/lit8 v0, v0, 0x3

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Not four byte aligned!"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 803
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 1

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readAnnotation()Lcom/android/dex/Annotation;
    .locals 6

    #@0
    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readByte()B

    #@3
    move-result v1

    #@4
    .line 769
    .local v1, "visibility":B
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@9
    move-result v0

    #@a
    .line 770
    .local v0, "start":I
    new-instance v2, Lcom/android/dex/EncodedValueReader;

    #@c
    const/16 v3, 0x1d

    #@e
    invoke-direct {v2, p0, v3}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    #@11
    invoke-virtual {v2}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    #@14
    .line 771
    new-instance v2, Lcom/android/dex/Annotation;

    #@16
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@18
    new-instance v4, Lcom/android/dex/EncodedValue;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    #@1d
    move-result-object v5

    #@1e
    invoke-direct {v4, v5}, Lcom/android/dex/EncodedValue;-><init>([B)V

    #@21
    invoke-direct {v2, v3, v1, v4}, Lcom/android/dex/Annotation;-><init>(Lcom/android/dex/Dex;BLcom/android/dex/EncodedValue;)V

    #@24
    return-object v2
.end method

.method public readByte()B
    .locals 1

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readByteArray(I)[B
    .locals 2
    .param p1, "length"    # I

    #@0
    .prologue
    .line 545
    new-array v0, p1, [B

    #@2
    .line 546
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@7
    .line 547
    return-object v0
.end method

.method public readClassDef()Lcom/android/dex/ClassDef;
    .locals 11

    #@0
    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->getPosition()I

    #@3
    move-result v2

    #@4
    .line 629
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@7
    move-result v3

    #@8
    .line 630
    .local v3, "type":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b
    move-result v4

    #@c
    .line 631
    .local v4, "accessFlags":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@f
    move-result v5

    #@10
    .line 632
    .local v5, "supertype":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@13
    move-result v6

    #@14
    .line 633
    .local v6, "interfacesOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@17
    move-result v7

    #@18
    .line 634
    .local v7, "sourceFileIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1b
    move-result v8

    #@1c
    .line 635
    .local v8, "annotationsOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1f
    move-result v9

    #@20
    .line 636
    .local v9, "classDataOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@23
    move-result v10

    #@24
    .line 637
    .local v10, "staticValuesOffset":I
    new-instance v0, Lcom/android/dex/ClassDef;

    #@26
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@28
    invoke-direct/range {v0 .. v10}, Lcom/android/dex/ClassDef;-><init>(Lcom/android/dex/Dex;IIIIIIIII)V

    #@2b
    return-object v0
.end method

.method public readEncodedArray()Lcom/android/dex/EncodedValue;
    .locals 3

    #@0
    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    .line 776
    .local v0, "start":I
    new-instance v1, Lcom/android/dex/EncodedValueReader;

    #@8
    const/16 v2, 0x1c

    #@a
    invoke-direct {v1, p0, v2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    #@d
    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    #@10
    .line 777
    new-instance v1, Lcom/android/dex/EncodedValue;

    #@12
    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Lcom/android/dex/EncodedValue;-><init>([B)V

    #@19
    return-object v1
.end method

.method public readFieldId()Lcom/android/dex/FieldId;
    .locals 5

    #@0
    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    .line 608
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@7
    move-result v2

    #@8
    .line 609
    .local v2, "typeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b
    move-result v1

    #@c
    .line 610
    .local v1, "nameIndex":I
    new-instance v3, Lcom/android/dex/FieldId;

    #@e
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@10
    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/dex/FieldId;-><init>(Lcom/android/dex/Dex;III)V

    #@13
    return-object v3
.end method

.method public readInt()I
    .locals 1

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readMethodId()Lcom/android/dex/MethodId;
    .locals 5

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@3
    move-result v0

    #@4
    .line 615
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    #@7
    move-result v2

    #@8
    .line 616
    .local v2, "protoIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b
    move-result v1

    #@c
    .line 617
    .local v1, "nameIndex":I
    new-instance v3, Lcom/android/dex/MethodId;

    #@e
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@10
    invoke-direct {v3, v4, v0, v2, v1}, Lcom/android/dex/MethodId;-><init>(Lcom/android/dex/Dex;III)V

    #@13
    return-object v3
.end method

.method public readProtoId()Lcom/android/dex/ProtoId;
    .locals 5

    #@0
    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3
    move-result v2

    #@4
    .line 622
    .local v2, "shortyIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@7
    move-result v1

    #@8
    .line 623
    .local v1, "returnTypeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b
    move-result v0

    #@c
    .line 624
    .local v0, "parametersOffset":I
    new-instance v3, Lcom/android/dex/ProtoId;

    #@e
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@10
    invoke-direct {v3, v4, v2, v1, v0}, Lcom/android/dex/ProtoId;-><init>(Lcom/android/dex/Dex;III)V

    #@13
    return-object v3
.end method

.method public readShort()S
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readShortArray(I)[S
    .locals 3
    .param p1, "length"    # I

    #@0
    .prologue
    .line 551
    if-nez p1, :cond_0

    #@2
    .line 552
    sget-object v2, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    #@4
    return-object v2

    #@5
    .line 554
    :cond_0
    new-array v1, p1, [S

    #@7
    .line 555
    .local v1, "result":[S
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@a
    .line 556
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    #@d
    move-result v2

    #@e
    aput-short v2, v1, v0

    #@10
    .line 555
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 558
    :cond_1
    return-object v1
.end method

.method public readSleb128()I
    .locals 1

    #@0
    .prologue
    .line 570
    invoke-static {p0}, Lcom/android/dex/Leb128;->readSignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3
    move-result v2

    #@4
    .line 586
    .local v2, "offset":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@9
    move-result v5

    #@a
    .line 587
    .local v5, "savedPosition":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 588
    .local v4, "savedLimit":I
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@15
    .line 589
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@17
    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    #@1c
    move-result v7

    #@1d
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@20
    .line 591
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    #@23
    move-result v1

    #@24
    .line 592
    .local v1, "expectedLength":I
    new-array v6, v1, [C

    #@26
    invoke-static {p0, v6}, Lcom/android/dex/Mutf8;->decode(Lcom/android/dex/util/ByteInput;[C)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 593
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@2d
    move-result v6

    #@2e
    if-eq v6, v1, :cond_0

    #@30
    .line 594
    new-instance v6, Lcom/android/dex/DexException;

    #@32
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "Declared length "

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    .line 595
    const-string/jumbo v8, " doesn\'t match decoded length of "

    #@45
    .line 594
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    .line 595
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4c
    move-result v8

    #@4d
    .line 594
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    invoke-direct {v6, v7}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@58
    throw v6
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 598
    .end local v1    # "expectedLength":I
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@5a
    .line 599
    .local v0, "e":Ljava/io/UTFDataFormatException;
    :try_start_1
    new-instance v6, Lcom/android/dex/DexException;

    #@5c
    invoke-direct {v6, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    #@5f
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 600
    .end local v0    # "e":Ljava/io/UTFDataFormatException;
    :catchall_0
    move-exception v6

    #@61
    .line 601
    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@63
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@66
    .line 602
    iget-object v7, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@68
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@6b
    .line 600
    throw v6

    #@6c
    .line 601
    .restart local v1    # "expectedLength":I
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@6e
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@71
    .line 602
    iget-object v6, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@73
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@76
    .line 597
    return-object v3
.end method

.method public readTypeList()Lcom/android/dex/TypeList;
    .locals 4

    #@0
    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3
    move-result v0

    #@4
    .line 579
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    #@7
    move-result-object v1

    #@8
    .line 580
    .local v1, "types":[S
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytes()V

    #@b
    .line 581
    new-instance v2, Lcom/android/dex/TypeList;

    #@d
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    #@f
    invoke-direct {v2, v3, v1}, Lcom/android/dex/TypeList;-><init>(Lcom/android/dex/Dex;[S)V

    #@12
    return-object v2
.end method

.method public readUleb128()I
    .locals 1

    #@0
    .prologue
    .line 562
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readUleb128p1()I
    .locals 1

    #@0
    .prologue
    .line 566
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    #@0
    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    #@3
    move-result v0

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method public remaining()I
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 781
    if-gez p1, :cond_0

    #@2
    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@a
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    add-int/2addr v1, p1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@14
    .line 780
    return-void
.end method

.method public used()I
    .locals 2

    #@0
    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@5
    .line 809
    return-void
.end method

.method public write([S)V
    .locals 3
    .param p1, "shorts"    # [S

    #@0
    .prologue
    .line 830
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-short v0, p1, v1

    #@6
    .line 831
    .local v0, "s":S
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@9
    .line 830
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 829
    .end local v0    # "s":S
    :cond_0
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "b"    # I

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    int-to-byte v1, p1

    #@3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@6
    .line 813
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5
    .line 835
    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "i"    # S

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@5
    .line 817
    return-void
.end method

.method public writeSleb128(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 849
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 847
    return-void

    #@4
    .line 850
    :catch_0
    move-exception v0

    #@5
    .line 851
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Section limit "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " exceeded by "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
.end method

.method public writeStringData(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 857
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 858
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    #@7
    .line 859
    invoke-static {p1}, Lcom/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->write([B)V

    #@e
    .line 860
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 855
    return-void

    #@13
    .line 861
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    #@14
    .line 862
    .local v0, "e":Ljava/io/UTFDataFormatException;
    new-instance v2, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v2
.end method

.method public writeTypeList(Lcom/android/dex/TypeList;)V
    .locals 4
    .param p1, "typeList"    # Lcom/android/dex/TypeList;

    #@0
    .prologue
    .line 867
    invoke-virtual {p1}, Lcom/android/dex/TypeList;->getTypes()[S

    #@3
    move-result-object v1

    #@4
    .line 868
    .local v1, "types":[S
    array-length v2, v1

    #@5
    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@8
    .line 869
    const/4 v2, 0x0

    #@9
    array-length v3, v1

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-short v0, v1, v2

    #@e
    .line 870
    .local v0, "type":S
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@11
    .line 869
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 872
    .end local v0    # "type":S
    :cond_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    #@17
    .line 866
    return-void
.end method

.method public writeUleb128(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 841
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 839
    return-void

    #@4
    .line 842
    :catch_0
    move-exception v0

    #@5
    .line 843
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Section limit "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " exceeded by "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
.end method

.method public writeUleb128p1(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 574
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    #@5
    .line 573
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 822
    int-to-short v0, p1

    #@1
    .line 823
    .local v0, "s":S
    const v1, 0xffff

    #@4
    and-int/2addr v1, v0

    #@5
    if-eq p1, v1, :cond_0

    #@7
    .line 824
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Expected an unsigned short: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 826
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@24
    .line 821
    return-void
.end method
