.class Ljava/lang/invoke/Transformers$VarargsCollector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VarargsCollector"
.end annotation


# instance fields
.field private final blacklist arrayType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 535
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 537
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 538
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->lastParameterTypeIsAnArray([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 541
    iput-object p1, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    .line 542
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->arrayType:Ljava/lang/Class;

    .line 543
    return-void

    .line 539
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "target does not have array as last parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z
    .registers 6
    .param p1, "arityStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 654
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_16

    .line 655
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    aget-object v0, p0, p1

    .line 656
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_16

    .line 659
    return v1

    .line 663
    :cond_16
    move v0, p1

    .local v0, "i":I
    :goto_17
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 664
    aget-object v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 665
    const/4 v1, 0x0

    return v1

    .line 663
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 668
    .end local v0    # "i":I
    :cond_27
    return v1
.end method

.method private static greylist-max-o booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 820
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [Z

    .line 821
    .local v0, "arityArray":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 822
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 823
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_28

    .line 828
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v0, v1

    goto :goto_24

    .line 825
    :pswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 826
    nop

    .line 821
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 832
    .end local v1    # "i":I
    :cond_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x5a
        :pswitch_1d
    .end packed-switch
.end method

.method private static greylist-max-o byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 766
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [B

    .line 767
    .local v0, "arityArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 768
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 769
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_28

    .line 774
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    goto :goto_24

    .line 771
    :pswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput-byte v3, v0, v1

    .line 772
    nop

    .line 767
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 778
    .end local v1    # "i":I
    :cond_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x42
        :pswitch_1d
    .end packed-switch
.end method

.method private static greylist-max-o charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 803
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [C

    .line 804
    .local v0, "arityArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 805
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 806
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_28

    .line 811
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_24

    .line 808
    :pswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v3

    aput-char v3, v0, v1

    .line 809
    nop

    .line 804
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 815
    .end local v1    # "i":I
    :cond_27
    return-object v0

    :pswitch_data_28
    .packed-switch 0x43
        :pswitch_1d
    .end packed-switch
.end method

.method public static greylist-max-o collectArguments(CLjava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "basicComponentType"    # C
    .param p2, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p4, "startIdx"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 957
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sparse-switch p0, :sswitch_data_4a

    .line 977
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :sswitch_1c
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 967
    :sswitch_21
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 959
    :sswitch_26
    invoke-static {p2, p3, p1, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 963
    :sswitch_2b
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 961
    :sswitch_30
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 973
    :sswitch_35
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 975
    :sswitch_3a
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 969
    :sswitch_3f
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 965
    :sswitch_44
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_4a
    .sparse-switch
        0x42 -> :sswitch_44
        0x43 -> :sswitch_3f
        0x44 -> :sswitch_3a
        0x46 -> :sswitch_35
        0x49 -> :sswitch_30
        0x4a -> :sswitch_2b
        0x4c -> :sswitch_26
        0x53 -> :sswitch_21
        0x5a -> :sswitch_1c
    .end sparse-switch
.end method

.method private static greylist-max-o copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 982
    .local p2, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    .line 1011
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :sswitch_20
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 1003
    goto :goto_68

    .line 996
    :sswitch_28
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 997
    goto :goto_68

    .line 984
    :sswitch_30
    invoke-virtual {p0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 985
    goto :goto_68

    .line 990
    :sswitch_38
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 991
    goto :goto_68

    .line 987
    :sswitch_40
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 988
    goto :goto_68

    .line 1005
    :sswitch_48
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1006
    goto :goto_68

    .line 1008
    :sswitch_50
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1009
    goto :goto_68

    .line 999
    :sswitch_58
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1000
    goto :goto_68

    .line 993
    :sswitch_60
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 994
    nop

    .line 1013
    :goto_68
    return-void

    nop

    :sswitch_data_6a
    .sparse-switch
        0x42 -> :sswitch_60
        0x43 -> :sswitch_58
        0x44 -> :sswitch_50
        0x46 -> :sswitch_48
        0x49 -> :sswitch_40
        0x4a -> :sswitch_38
        0x4c -> :sswitch_30
        0x53 -> :sswitch_28
        0x5a -> :sswitch_20
    .end sparse-switch
.end method

.method private static greylist-max-o doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 866
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [D

    .line 867
    .local v0, "arityArray":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_4f

    .line 868
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 869
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_50

    .line 889
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_4c

    .line 883
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    .line 884
    goto :goto_4c

    .line 877
    :sswitch_25
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, v0, v1

    .line 878
    goto :goto_4c

    .line 880
    :sswitch_2d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    .line 881
    goto :goto_4c

    .line 874
    :sswitch_35
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, v0, v1

    .line 875
    goto :goto_4c

    .line 871
    :sswitch_3d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 872
    goto :goto_4c

    .line 886
    :sswitch_44
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    .line 887
    nop

    .line 867
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 893
    .end local v1    # "i":I
    :cond_4f
    return-object v0

    :sswitch_data_50
    .sparse-switch
        0x42 -> :sswitch_44
        0x44 -> :sswitch_3d
        0x46 -> :sswitch_35
        0x49 -> :sswitch_2d
        0x4a -> :sswitch_25
        0x53 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static greylist-max-o floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 837
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [F

    .line 838
    .local v0, "arityArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_47

    .line 839
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 840
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_48

    .line 857
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v1

    goto :goto_44

    .line 851
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    .line 852
    goto :goto_44

    .line 845
    :sswitch_25
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    long-to-float v3, v3

    aput v3, v0, v1

    .line 846
    goto :goto_44

    .line 848
    :sswitch_2d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    .line 849
    goto :goto_44

    .line 842
    :sswitch_35
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    aput v3, v0, v1

    .line 843
    goto :goto_44

    .line 854
    :sswitch_3c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    .line 855
    nop

    .line 838
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 861
    .end local v1    # "i":I
    :cond_47
    return-object v0

    :sswitch_data_48
    .sparse-switch
        0x42 -> :sswitch_3c
        0x46 -> :sswitch_35
        0x49 -> :sswitch_2d
        0x4a -> :sswitch_25
        0x53 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static greylist-max-o intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 717
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [I

    .line 718
    .local v0, "arityArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_35

    .line 719
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 720
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_36

    .line 731
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    goto :goto_32

    .line 725
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput v3, v0, v1

    .line 726
    goto :goto_32

    .line 722
    :sswitch_24
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    aput v3, v0, v1

    .line 723
    goto :goto_32

    .line 728
    :sswitch_2b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput v3, v0, v1

    .line 729
    nop

    .line 718
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 735
    .end local v1    # "i":I
    :cond_35
    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x42 -> :sswitch_2b
        0x49 -> :sswitch_24
        0x53 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static greylist-max-o lastParameterTypeIsAnArray([Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 546
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 547
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 740
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [J

    .line 741
    .local v0, "arityArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_3f

    .line 742
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 743
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_40

    .line 757
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_3c

    .line 751
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 752
    goto :goto_3c

    .line 745
    :sswitch_25
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 746
    goto :goto_3c

    .line 748
    :sswitch_2c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 749
    goto :goto_3c

    .line 754
    :sswitch_34
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 755
    nop

    .line 741
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 761
    .end local v1    # "i":I
    :cond_3f
    return-object v0

    :sswitch_data_40
    .sparse-switch
        0x42 -> :sswitch_34
        0x49 -> :sswitch_2c
        0x4a -> :sswitch_25
        0x53 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static greylist-max-o makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p0, "callerFrameType"    # Ljava/lang/invoke/MethodType;
    .param p1, "callerFrameReader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "indexOfArityArray"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 901
    .local p3, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p2

    .line 902
    .local v0, "arityArrayLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 903
    .local v1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 905
    .local v2, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    .line 906
    .local v3, "elementBasicType":C
    sparse-switch v3, :sswitch_data_5c

    .line 947
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 935
    :sswitch_2e
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 927
    :sswitch_33
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 908
    :sswitch_38
    invoke-static {p1, v2, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 919
    :sswitch_3d
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 915
    :sswitch_42
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 939
    :sswitch_47
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 943
    :sswitch_4c
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 931
    :sswitch_51
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 923
    :sswitch_56
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_5c
    .sparse-switch
        0x42 -> :sswitch_56
        0x43 -> :sswitch_51
        0x44 -> :sswitch_4c
        0x46 -> :sswitch_47
        0x49 -> :sswitch_42
        0x4a -> :sswitch_3d
        0x4c -> :sswitch_38
        0x53 -> :sswitch_33
        0x5a -> :sswitch_2e
    .end sparse-switch
.end method

.method private static greylist-max-o makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "callerType"    # Ljava/lang/invoke/MethodType;
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;

    .line 1051
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 1052
    .local v0, "ptypesLength":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 1054
    .local v1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 1058
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p0, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p1, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 1017
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1018
    .local v0, "targetWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1019
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1020
    .local v1, "callerReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1023
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1024
    .local v2, "targetMethodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 1025
    .local v3, "indexOfArityArray":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2a

    .line 1026
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v4

    .line 1027
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1025
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1031
    .end local v4    # "i":I
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1032
    .local v4, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1034
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1033
    invoke-static {v5, v1, v3, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 1038
    .local v5, "arityArray":Ljava/lang/Object;
    invoke-virtual {v0, v5, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1039
    return-void
.end method

.method private static greylist-max-o referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 11
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 677
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 678
    .local v0, "arityArray":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p4, :cond_6b

    .line 679
    add-int v2, v1, p3

    aget-object v2, p1, v2

    .line 680
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 681
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_6c

    goto :goto_61

    .line 701
    :sswitch_14
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 702
    goto :goto_61

    .line 695
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 696
    goto :goto_61

    .line 683
    :sswitch_26
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 684
    goto :goto_61

    .line 689
    :sswitch_2b
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 690
    goto :goto_61

    .line 686
    :sswitch_34
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 687
    goto :goto_61

    .line 704
    :sswitch_3d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 705
    goto :goto_61

    .line 707
    :sswitch_46
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_61

    .line 698
    :sswitch_4f
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 699
    goto :goto_61

    .line 692
    :sswitch_58
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 693
    nop

    .line 710
    :goto_61
    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 678
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 712
    .end local v1    # "i":I
    :cond_6b
    return-object v0

    :sswitch_data_6c
    .sparse-switch
        0x42 -> :sswitch_58
        0x43 -> :sswitch_4f
        0x44 -> :sswitch_46
        0x46 -> :sswitch_3d
        0x49 -> :sswitch_34
        0x4a -> :sswitch_2b
        0x4c -> :sswitch_26
        0x53 -> :sswitch_1d
        0x5a -> :sswitch_14
    .end sparse-switch
.end method

.method private static greylist-max-o shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 783
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [S

    .line 784
    .local v0, "arityArray":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_2f

    .line 785
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 786
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_30

    .line 794
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v0, v1

    goto :goto_2c

    .line 788
    :sswitch_1d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput-short v3, v0, v1

    .line 789
    goto :goto_2c

    .line 791
    :sswitch_24
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 792
    nop

    .line 784
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 798
    .end local v1    # "i":I
    :cond_2f
    return-object v0

    :sswitch_data_30
    .sparse-switch
        0x42 -> :sswitch_24
        0x53 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static greylist-max-o throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "from"    # Ljava/lang/invoke/MethodType;
    .param p1, "to"    # Ljava/lang/invoke/MethodType;

    .line 649
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asFixedArity()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 557
    iget-object v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method blacklist asTypeUncached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 574
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 575
    .local v0, "currentType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 576
    .local v1, "currentFixedArity":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 578
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v2

    .line 579
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 580
    invoke-virtual {v1, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->asTypeCache:Ljava/lang/invoke/MethodHandle;

    return-object v2

    .line 583
    :cond_27
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 584
    .local v2, "arrayLength":I
    if-gez v2, :cond_37

    .line 586
    invoke-static {v0, p1}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 589
    :cond_37
    const/4 v3, 0x0

    .line 591
    .local v3, "collector":Ljava/lang/invoke/MethodHandle;
    :try_start_38
    iget-object v4, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->arrayType:Ljava/lang/Class;

    invoke-virtual {v1, v4, v2}, Ljava/lang/invoke/MethodHandle;->asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_42} :catch_44

    move-object v3, v4

    .line 594
    goto :goto_48

    .line 592
    :catch_44
    move-exception v4

    .line 593
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {v0, p1}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 595
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_48
    iput-object v3, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->asTypeCache:Ljava/lang/invoke/MethodHandle;

    return-object v3
.end method

.method public whitelist test-api isVarargsCollector()Z
    .registers 2

    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 600
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 601
    .local v0, "callerFrameType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 602
    .local v1, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 604
    .local v2, "targetPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 605
    .local v3, "lastTargetIndex":I
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_27

    aget-object v4, v2, v3

    aget-object v5, v1, v3

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 611
    iget-object v4, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-static {v4, p1}, Ljava/lang/invoke/Transformers$VarargsCollector;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 612
    return-void

    .line 615
    :cond_27
    array-length v4, v1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_34

    .line 617
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 620
    :cond_34
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 622
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 625
    :cond_4d
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 626
    .local v4, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v3, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 628
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 632
    :cond_60
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 633
    .local v5, "targetFrameType":Ljava/lang/invoke/MethodType;
    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v6

    .line 634
    .local v6, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-static {p1, v6}, Ljava/lang/invoke/Transformers$VarargsCollector;->prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 637
    iget-object v7, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v7, v6}, Ljava/lang/invoke/Transformers$VarargsCollector;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 640
    invoke-virtual {v6, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 641
    return-void
.end method

.method public whitelist test-api withVarargs(Z)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "makeVarargs"    # Z

    .line 645
    if-eqz p1, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    :goto_6
    return-object v0
.end method
