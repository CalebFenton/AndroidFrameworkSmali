.class public Ljava/io/ObjectOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;
.implements Ljava/io/ObjectStreamConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectOutputStream$PutField;
    }
.end annotation


# static fields
.field private static final NOT_SC_BLOCK_DATA:B = -0x9t


# instance fields
.field private currentClass:Ljava/io/ObjectStreamClass;

.field private currentHandle:I

.field private currentObject:Ljava/lang/Object;

.field private currentPutField:Ljava/io/EmulatedFieldsForDumping;

.field private enableReplace:Z

.field private nestedLevels:I

.field private objectsWritten:Ljava/io/SerializationHandleMap;

.field private output:Ljava/io/DataOutputStream;

.field private primitiveTypes:Ljava/io/DataOutputStream;

.field private primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

.field private protocolVersion:I

.field private final proxyClassDesc:Ljava/io/ObjectStreamClass;

.field private subclassOverridingImplementation:Z


# direct methods
.method protected constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 112
    const-class v0, Ljava/lang/reflect/Proxy;

    #@5
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    #@b
    .line 245
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    #@e
    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 259
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 112
    const-class v0, Ljava/lang/reflect/Proxy;

    #@6
    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    #@c
    .line 260
    instance-of v0, p1, Ljava/io/DataOutputStream;

    #@e
    if-eqz v0, :cond_0

    #@10
    check-cast p1, Ljava/io/DataOutputStream;

    #@12
    .end local p1    # "output":Ljava/io/OutputStream;
    :goto_0
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@14
    .line 262
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@16
    .line 263
    const/4 v0, 0x2

    #@17
    iput v0, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@19
    .line 264
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    #@1b
    .line 266
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    #@1e
    .line 269
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@20
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@22
    .line 271
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->writeStreamHeader()V

    #@25
    .line 272
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@28
    .line 259
    return-void

    #@29
    .line 261
    .restart local p1    # "output":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    #@2b
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@2e
    move-object p1, v0

    #@2f
    goto :goto_0
.end method

.method private checkWritePrimitiveTypes()V
    .locals 2

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@6
    const/16 v1, 0x80

    #@8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@b
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    #@d
    .line 315
    new-instance v0, Ljava/io/DataOutputStream;

    #@f
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    #@11
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@14
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@16
    .line 310
    :cond_0
    return-void
.end method

.method private computePutField()V
    .locals 2

    #@0
    .prologue
    .line 342
    new-instance v0, Ljava/io/EmulatedFieldsForDumping;

    #@2
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@4
    invoke-direct {v0, p0, v1}, Ljava/io/EmulatedFieldsForDumping;-><init>(Ljava/io/ObjectOutputStream;Ljava/io/ObjectStreamClass;)V

    #@7
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@9
    .line 341
    return-void
.end method

.method private dumpCycle(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 417
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    #@6
    move-result v0

    #@7
    .line 418
    .local v0, "handle":I
    if-eq v0, v2, :cond_0

    #@9
    .line 419
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeCyclicReference(I)V

    #@c
    .line 420
    return v0

    #@d
    .line 422
    :cond_0
    return v2
.end method

.method private nextHandle()I
    .locals 2

    #@0
    .prologue
    .line 464
    iget v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    #@6
    return v0
.end method

.method private registerObjectWritten(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 492
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    #@3
    move-result v0

    #@4
    .line 493
    .local v0, "handle":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@6
    invoke-virtual {v1, p1, v0}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    #@9
    .line 494
    return v0
.end method

.method private removeUnsharedReference(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "previousHandle"    # I

    #@0
    .prologue
    .line 507
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_0

    #@3
    .line 508
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    #@8
    .line 506
    :goto_0
    return-void

    #@9
    .line 510
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@b
    invoke-virtual {v0, p1}, Ljava/io/SerializationHandleMap;->remove(Ljava/lang/Object;)I

    #@e
    goto :goto_0
.end method

.method private resetSeenObjects()V
    .locals 1

    #@0
    .prologue
    .line 565
    new-instance v0, Ljava/io/SerializationHandleMap;

    #@2
    invoke-direct {v0}, Ljava/io/SerializationHandleMap;-><init>()V

    #@5
    iput-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@7
    .line 566
    const/high16 v0, 0x7e0000

    #@9
    iput v0, p0, Ljava/io/ObjectOutputStream;->currentHandle:I

    #@b
    .line 564
    return-void
.end method

.method private resetState()V
    .locals 1

    #@0
    .prologue
    .line 576
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    #@3
    .line 577
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@6
    .line 575
    return-void
.end method

.method private writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    .locals 9
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, 0x78

    #@3
    const/4 v5, -0x1

    #@4
    .line 726
    if-nez p1, :cond_0

    #@6
    .line 727
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    #@9
    .line 728
    return v5

    #@a
    .line 730
    :cond_0
    const/4 v1, -0x1

    #@b
    .line 731
    .local v1, "handle":I
    if-nez p2, :cond_1

    #@d
    .line 732
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    .line 734
    :cond_1
    if-ne v1, v5, :cond_6

    #@13
    .line 735
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    .line 736
    .local v0, "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    #@18
    .line 737
    .local v4, "previousHandle":I
    if-eqz p2, :cond_2

    #@1a
    .line 738
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@1c
    invoke-virtual {v5, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    #@1f
    move-result v4

    #@20
    .line 742
    :cond_2
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    #@23
    move-result v1

    #@24
    .line 744
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isProxy()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_5

    #@2a
    .line 745
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2c
    const/16 v6, 0x7d

    #@2e
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@31
    .line 746
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@34
    move-result-object v3

    #@35
    .line 747
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@37
    array-length v6, v3

    #@38
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3b
    .line 748
    const/4 v2, 0x0

    #@3c
    .local v2, "i":I
    :goto_0
    array-length v5, v3

    #@3d
    if-ge v2, v5, :cond_3

    #@3f
    .line 749
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@41
    aget-object v6, v3, v2

    #@43
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@4a
    .line 748
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 751
    :cond_3
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateProxyClass(Ljava/lang/Class;)V

    #@50
    .line 752
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@52
    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@55
    .line 753
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->proxyClassDesc:Ljava/io/ObjectStreamClass;

    #@57
    const/4 v6, 0x0

    #@58
    invoke-direct {p0, v5, v6}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    #@5b
    .line 754
    if-eqz p2, :cond_4

    #@5d
    .line 756
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@60
    .line 758
    :cond_4
    return v1

    #@61
    .line 761
    .end local v2    # "i":I
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@63
    const/16 v6, 0x72

    #@65
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@68
    .line 762
    iget v5, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@6a
    const/4 v6, 0x1

    #@6b
    if-ne v5, v6, :cond_7

    #@6d
    .line 763
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    #@70
    .line 772
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    #@73
    .line 773
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@76
    .line 774
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@78
    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@7b
    .line 775
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    #@7e
    move-result-object v5

    #@7f
    invoke-direct {p0, v5, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    #@82
    .line 776
    if-eqz p2, :cond_6

    #@84
    .line 778
    invoke-direct {p0, p1, v4}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@87
    .line 781
    .end local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "previousHandle":I
    :cond_6
    return v1

    #@88
    .line 767
    .restart local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "previousHandle":I
    :cond_7
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@8a
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@8c
    .line 768
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    #@8f
    .line 769
    iput-object v8, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@91
    goto :goto_1
.end method

.method private writeCyclicReference(I)V
    .locals 2
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 789
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2
    const/16 v1, 0x71

    #@4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@7
    .line 790
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@c
    .line 788
    return-void
.end method

.method private writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;
    .locals 8
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, 0x12

    #@3
    .line 1663
    invoke-virtual {p1, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    #@6
    .line 1664
    const/4 v2, -0x1

    #@7
    .line 1665
    .local v2, "previousHandle":I
    if-eqz p2, :cond_0

    #@9
    .line 1666
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@b
    invoke-virtual {v4, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    #@e
    move-result v2

    #@f
    .line 1668
    :cond_0
    const/4 v1, -0x1

    #@10
    .line 1669
    .local v1, "handle":I
    if-nez p2, :cond_1

    #@12
    .line 1670
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    #@15
    move-result v1

    #@16
    .line 1672
    :cond_1
    const/4 v4, -0x1

    #@17
    if-ne v1, v4, :cond_2

    #@19
    .line 1673
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    .line 1676
    .local v0, "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    #@20
    .line 1678
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@22
    const/16 v5, 0x72

    #@24
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@27
    .line 1679
    iget v4, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@29
    const/4 v5, 0x1

    #@2a
    if-ne v4, v5, :cond_3

    #@2c
    .line 1680
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    #@2f
    .line 1689
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->annotateClass(Ljava/lang/Class;)V

    #@32
    .line 1690
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@35
    .line 1691
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@37
    const/16 v5, 0x78

    #@39
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@3c
    .line 1693
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    #@3f
    move-result-object v3

    #@40
    .line 1694
    .local v3, "superClassDesc":Ljava/io/ObjectStreamClass;
    if-eqz v3, :cond_4

    #@42
    .line 1696
    invoke-virtual {v3, v6}, Ljava/io/ObjectStreamClass;->setFlags(B)V

    #@45
    .line 1697
    invoke-direct {p0, v3, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    #@48
    .line 1701
    :goto_1
    if-eqz p2, :cond_2

    #@4a
    .line 1703
    invoke-direct {p0, p1, v2}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@4d
    .line 1706
    .end local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "superClassDesc":Ljava/io/ObjectStreamClass;
    :cond_2
    return-object p1

    #@4e
    .line 1684
    .restart local v0    # "classToWrite":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@50
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@52
    .line 1685
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    #@55
    .line 1686
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@57
    goto :goto_0

    #@58
    .line 1699
    .restart local v3    # "superClassDesc":Ljava/io/ObjectStreamClass;
    :cond_4
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@5a
    const/16 v5, 0x70

    #@5c
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@5f
    goto :goto_1
.end method

.method private writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V
    .locals 7
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .param p2, "externalizable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 824
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    #@3
    move-result-object v4

    #@4
    .line 825
    .local v4, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    #@5
    .line 826
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    #@6
    .line 830
    .local v1, "fieldCount":I
    if-nez p2, :cond_0

    #@8
    sget-object v6, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    #@a
    if-eq v4, v6, :cond_0

    #@c
    .line 831
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@f
    move-result-object v2

    #@10
    .line 832
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    array-length v1, v2

    #@11
    .line 836
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    :cond_0
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@13
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@16
    .line 838
    const/4 v3, 0x0

    #@17
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@19
    .line 839
    aget-object v0, v2, v3

    #@1b
    .line 840
    .local v0, "f":Ljava/io/ObjectStreamField;
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@1d
    invoke-virtual {v0, v6}, Ljava/io/ObjectStreamField;->writeField(Ljava/io/DataOutputStream;)Z

    #@20
    move-result v5

    #@21
    .line 841
    .local v5, "wasPrimitive":Z
    if-nez v5, :cond_1

    #@23
    .line 842
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {p0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@2a
    .line 838
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 823
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "wasPrimitive":Z
    :cond_2
    return-void
.end method

.method private writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V
    .locals 11
    .param p1, "emulatedFields"    # Ljava/io/EmulatedFieldsForDumping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 882
    invoke-virtual {p1}, Ljava/io/EmulatedFieldsForDumping;->emulatedFields()Ljava/io/EmulatedFields;

    #@4
    move-result-object v0

    #@5
    .line 883
    .local v0, "accessibleSimulatedFields":Ljava/io/EmulatedFields;
    invoke-virtual {v0}, Ljava/io/EmulatedFields;->slots()[Ljava/io/EmulatedFields$ObjectSlot;

    #@8
    move-result-object v9

    #@9
    array-length v10, v9

    #@a
    move v8, v5

    #@b
    :goto_0
    if-ge v8, v10, :cond_10

    #@d
    aget-object v2, v9, v8

    #@f
    .line 884
    .local v2, "slot":Ljava/io/EmulatedFields$ObjectSlot;
    invoke-virtual {v2}, Ljava/io/EmulatedFields$ObjectSlot;->getFieldValue()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 885
    .local v1, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/EmulatedFields$ObjectSlot;->getField()Ljava/io/ObjectStreamField;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    #@1a
    move-result-object v3

    #@1b
    .line 886
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    if-ne v3, v4, :cond_1

    #@1f
    .line 887
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@21
    if-eqz v1, :cond_0

    #@23
    check-cast v1, Ljava/lang/Integer;

    #@25
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v4

    #@29
    :goto_1
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2c
    .line 883
    :goto_2
    add-int/lit8 v4, v8, 0x1

    #@2e
    move v8, v4

    #@2f
    goto :goto_0

    #@30
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    move v4, v5

    #@31
    .line 887
    goto :goto_1

    #@32
    .line 888
    :cond_1
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@34
    if-ne v3, v4, :cond_3

    #@36
    .line 889
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@38
    if-eqz v1, :cond_2

    #@3a
    check-cast v1, Ljava/lang/Byte;

    #@3c
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    #@3f
    move-result v4

    #@40
    :goto_3
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@43
    goto :goto_2

    #@44
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_2
    move v4, v5

    #@45
    goto :goto_3

    #@46
    .line 890
    :cond_3
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@48
    if-ne v3, v4, :cond_5

    #@4a
    .line 891
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@4c
    if-eqz v1, :cond_4

    #@4e
    check-cast v1, Ljava/lang/Character;

    #@50
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    #@53
    move-result v4

    #@54
    :goto_4
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@57
    goto :goto_2

    #@58
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_4
    move v4, v5

    #@59
    goto :goto_4

    #@5a
    .line 892
    :cond_5
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@5c
    if-ne v3, v4, :cond_7

    #@5e
    .line 893
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@60
    if-eqz v1, :cond_6

    #@62
    check-cast v1, Ljava/lang/Short;

    #@64
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    #@67
    move-result v4

    #@68
    :goto_5
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@6b
    goto :goto_2

    #@6c
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_6
    move v4, v5

    #@6d
    goto :goto_5

    #@6e
    .line 894
    :cond_7
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@70
    if-ne v3, v4, :cond_9

    #@72
    .line 895
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@74
    if-eqz v1, :cond_8

    #@76
    check-cast v1, Ljava/lang/Boolean;

    #@78
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@7b
    move-result v4

    #@7c
    :goto_6
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@7f
    goto :goto_2

    #@80
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_8
    move v4, v5

    #@81
    goto :goto_6

    #@82
    .line 896
    :cond_9
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@84
    if-ne v3, v4, :cond_b

    #@86
    .line 897
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@88
    if-eqz v1, :cond_a

    #@8a
    check-cast v1, Ljava/lang/Long;

    #@8c
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@8f
    move-result-wide v6

    #@90
    :goto_7
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@93
    goto :goto_2

    #@94
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_a
    const-wide/16 v6, 0x0

    #@96
    goto :goto_7

    #@97
    .line 898
    :cond_b
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@99
    if-ne v3, v4, :cond_d

    #@9b
    .line 899
    iget-object v6, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@9d
    if-eqz v1, :cond_c

    #@9f
    check-cast v1, Ljava/lang/Float;

    #@a1
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@a4
    move-result v4

    #@a5
    :goto_8
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@a8
    goto :goto_2

    #@a9
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_c
    const/4 v4, 0x0

    #@aa
    goto :goto_8

    #@ab
    .line 900
    :cond_d
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@ad
    if-ne v3, v4, :cond_f

    #@af
    .line 901
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@b1
    if-eqz v1, :cond_e

    #@b3
    check-cast v1, Ljava/lang/Double;

    #@b5
    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@b8
    move-result-wide v6

    #@b9
    :goto_9
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@bc
    goto/16 :goto_2

    #@be
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :cond_e
    const-wide/16 v6, 0x0

    #@c0
    goto :goto_9

    #@c1
    .line 904
    :cond_f
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@c4
    goto/16 :goto_2

    #@c6
    .line 880
    .end local v1    # "fieldValue":Ljava/lang/Object;
    .end local v2    # "slot":Ljava/io/EmulatedFields$ObjectSlot;
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    return-void
.end method

.method private writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 928
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@3
    move-result-object v7

    #@4
    const/4 v6, 0x0

    #@5
    array-length v8, v7

    #@6
    :goto_0
    if-ge v6, v8, :cond_a

    #@8
    aget-object v1, v7, v6

    #@a
    .line 930
    .local v1, "fieldDesc":Ljava/io/ObjectStreamField;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getTypeInternal()Ljava/lang/Class;

    #@d
    move-result-object v5

    #@e
    .line 931
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v1}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    #@11
    move-result-object v0

    #@12
    .line 932
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    #@14
    .line 933
    new-instance v6, Ljava/io/InvalidClassException;

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    .line 934
    const-string/jumbo v8, " doesn\'t have a serializable field "

    #@26
    .line 933
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    .line 934
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .line 933
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    .line 935
    const-string/jumbo v8, " of type "

    #@35
    .line 933
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@44
    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@45
    .line 962
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@46
    .line 964
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    #@48
    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4b
    throw v6

    #@4c
    .line 937
    .end local v2    # "iae":Ljava/lang/IllegalAccessException;
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@4e
    if-ne v5, v9, :cond_1

    #@50
    .line 938
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@52
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    #@55
    move-result v10

    #@56
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@59
    .line 928
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@5b
    goto :goto_0

    #@5c
    .line 939
    :cond_1
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5e
    if-ne v5, v9, :cond_2

    #@60
    .line 940
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@62
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    #@65
    move-result v10

    #@66
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    goto :goto_1

    #@6a
    .line 965
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    #@6b
    .line 969
    .local v3, "nsf":Ljava/lang/NoSuchFieldError;
    new-instance v6, Ljava/io/InvalidClassException;

    #@6d
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-direct {v6, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@74
    throw v6

    #@75
    .line 941
    .end local v3    # "nsf":Ljava/lang/NoSuchFieldError;
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_2
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@77
    if-ne v5, v9, :cond_3

    #@79
    .line 942
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@7b
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    #@7e
    move-result-wide v10

    #@7f
    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@82
    goto :goto_1

    #@83
    .line 943
    :cond_3
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@85
    if-ne v5, v9, :cond_4

    #@87
    .line 944
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@89
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    #@8c
    move-result v10

    #@8d
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@90
    goto :goto_1

    #@91
    .line 945
    :cond_4
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@93
    if-ne v5, v9, :cond_5

    #@95
    .line 946
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@97
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@9a
    move-result v10

    #@9b
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@9e
    goto :goto_1

    #@9f
    .line 947
    :cond_5
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@a1
    if-ne v5, v9, :cond_6

    #@a3
    .line 948
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@a5
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    #@a8
    move-result-wide v10

    #@a9
    invoke-virtual {v9, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@ac
    goto :goto_1

    #@ad
    .line 949
    :cond_6
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@af
    if-ne v5, v9, :cond_7

    #@b1
    .line 950
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@b3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    #@b6
    move-result v10

    #@b7
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@ba
    goto :goto_1

    #@bb
    .line 951
    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@bd
    if-ne v5, v9, :cond_8

    #@bf
    .line 952
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@c1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    #@c4
    move-result v10

    #@c5
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@c8
    goto :goto_1

    #@c9
    .line 955
    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cc
    move-result-object v4

    #@cd
    .line 956
    .local v4, "objField":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isUnshared()Z

    #@d0
    move-result v9

    #@d1
    if-eqz v9, :cond_9

    #@d3
    .line 957
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->writeUnshared(Ljava/lang/Object;)V

    #@d6
    goto :goto_1

    #@d7
    .line 959
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@da
    goto/16 :goto_1

    #@dc
    .line 927
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldDesc":Ljava/io/ObjectStreamField;
    .end local v4    # "objField":Ljava/lang/Object;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    return-void
.end method

.method private writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1013
    if-nez p1, :cond_0

    #@3
    .line 1014
    new-instance v9, Ljava/io/NotActiveException;

    #@5
    invoke-direct {v9}, Ljava/io/NotActiveException;-><init>()V

    #@8
    throw v9

    #@9
    .line 1019
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectStreamClass;->getHierarchy()Ljava/util/List;

    #@c
    move-result-object v5

    #@d
    .line 1020
    .local v5, "hierarchy":Ljava/util/List;, "Ljava/util/List<Ljava/io/ObjectStreamClass;>;"
    const/4 v6, 0x0

    #@e
    .local v6, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@11
    move-result v2

    #@12
    .local v2, "end":I
    :goto_0
    if-ge v6, v2, :cond_5

    #@14
    .line 1021
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v8

    #@18
    check-cast v8, Ljava/io/ObjectStreamClass;

    #@1a
    .line 1024
    .local v8, "osc":Ljava/io/ObjectStreamClass;
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@1c
    .line 1025
    iput-object v8, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@1e
    .line 1029
    const/4 v4, 0x0

    #@1f
    .line 1030
    .local v4, "executed":Z
    :try_start_0
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->hasMethodWriteObject()Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_1

    #@25
    .line 1031
    invoke-virtual {v8}, Ljava/io/ObjectStreamClass;->getMethodWriteObject()Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v7

    #@29
    .line 1033
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    #@2a
    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    #@2c
    const/4 v10, 0x0

    #@2d
    aput-object p0, v9, v10

    #@2f
    invoke-virtual {v7, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 1034
    const/4 v4, 0x1

    #@33
    .line 1048
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_1
    if-eqz v4, :cond_4

    #@35
    .line 1049
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@38
    .line 1050
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@3a
    const/16 v10, 0x78

    #@3c
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .line 1059
    :goto_1
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@41
    .line 1060
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@43
    .line 1061
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@45
    .line 1020
    add-int/lit8 v6, v6, 0x1

    #@47
    goto :goto_0

    #@48
    .line 1043
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@49
    .line 1044
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    #@4b
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@52
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    .line 1056
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v9

    #@54
    .line 1059
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@56
    .line 1060
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@58
    .line 1061
    iput-object v11, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@5a
    .line 1056
    throw v9

    #@5b
    .line 1035
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    #@5c
    .line 1036
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@5f
    move-result-object v3

    #@60
    .line 1037
    .local v3, "ex":Ljava/lang/Throwable;
    instance-of v9, v3, Ljava/lang/RuntimeException;

    #@62
    if-eqz v9, :cond_2

    #@64
    .line 1038
    check-cast v3, Ljava/lang/RuntimeException;

    #@66
    .end local v3    # "ex":Ljava/lang/Throwable;
    throw v3

    #@67
    .line 1039
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_2
    instance-of v9, v3, Ljava/lang/Error;

    #@69
    if-eqz v9, :cond_3

    #@6b
    .line 1040
    check-cast v3, Ljava/lang/Error;

    #@6d
    .end local v3    # "ex":Ljava/lang/Throwable;
    throw v3

    #@6e
    .line 1042
    .restart local v3    # "ex":Ljava/lang/Throwable;
    :cond_3
    check-cast v3, Ljava/io/IOException;

    #@70
    .end local v3    # "ex":Ljava/lang/Throwable;
    throw v3

    #@71
    .line 1054
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@74
    goto :goto_1

    #@75
    .line 1012
    .end local v4    # "executed":Z
    .end local v8    # "osc":Ljava/io/ObjectStreamClass;
    :cond_5
    return-void
.end method

.method private writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    .locals 16
    .param p1, "array"    # Ljava/lang/Object;
    .param p3, "arrayClDesc"    # Ljava/io/ObjectStreamClass;
    .param p5, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1113
    .local p2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@4
    const/16 v14, 0x75

    #@6
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@9
    .line 1114
    const/4 v13, 0x0

    #@a
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p3

    #@e
    invoke-direct {v0, v1, v13}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    #@11
    .line 1116
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    #@14
    move-result v7

    #@15
    .line 1117
    .local v7, "handle":I
    if-nez p5, :cond_0

    #@17
    .line 1118
    move-object/from16 v0, p0

    #@19
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v13, v0, v7}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    #@20
    .line 1126
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->isPrimitive()Z

    #@23
    move-result v13

    #@24
    if-eqz v13, :cond_a

    #@26
    .line 1127
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@28
    move-object/from16 v0, p4

    #@2a
    if-ne v0, v13, :cond_1

    #@2c
    move-object/from16 v9, p1

    #@2e
    .line 1128
    check-cast v9, [I

    #@30
    .line 1129
    .local v9, "intArray":[I
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@34
    array-length v14, v9

    #@35
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@38
    .line 1130
    const/4 v8, 0x0

    #@39
    .local v8, "i":I
    :goto_0
    array-length v13, v9

    #@3a
    if-ge v8, v13, :cond_2

    #@3c
    .line 1131
    move-object/from16 v0, p0

    #@3e
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@40
    aget v14, v9, v8

    #@42
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@45
    .line 1130
    add-int/lit8 v8, v8, 0x1

    #@47
    goto :goto_0

    #@48
    .line 1133
    .end local v8    # "i":I
    .end local v9    # "intArray":[I
    :cond_1
    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@4a
    move-object/from16 v0, p4

    #@4c
    if-ne v0, v13, :cond_3

    #@4e
    move-object/from16 v3, p1

    #@50
    .line 1134
    check-cast v3, [B

    #@52
    .line 1135
    .local v3, "byteArray":[B
    move-object/from16 v0, p0

    #@54
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@56
    array-length v14, v3

    #@57
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@5a
    .line 1136
    move-object/from16 v0, p0

    #@5c
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@5e
    array-length v14, v3

    #@5f
    const/4 v15, 0x0

    #@60
    invoke-virtual {v13, v3, v15, v14}, Ljava/io/DataOutputStream;->write([BII)V

    #@63
    .line 1188
    .end local v3    # "byteArray":[B
    :cond_2
    return v7

    #@64
    .line 1137
    :cond_3
    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@66
    move-object/from16 v0, p4

    #@68
    if-ne v0, v13, :cond_4

    #@6a
    move-object/from16 v4, p1

    #@6c
    .line 1138
    check-cast v4, [C

    #@6e
    .line 1139
    .local v4, "charArray":[C
    move-object/from16 v0, p0

    #@70
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@72
    array-length v14, v4

    #@73
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@76
    .line 1140
    const/4 v8, 0x0

    #@77
    .restart local v8    # "i":I
    :goto_1
    array-length v13, v4

    #@78
    if-ge v8, v13, :cond_2

    #@7a
    .line 1141
    move-object/from16 v0, p0

    #@7c
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@7e
    aget-char v14, v4, v8

    #@80
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@83
    .line 1140
    add-int/lit8 v8, v8, 0x1

    #@85
    goto :goto_1

    #@86
    .line 1143
    .end local v4    # "charArray":[C
    .end local v8    # "i":I
    :cond_4
    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@88
    move-object/from16 v0, p4

    #@8a
    if-ne v0, v13, :cond_5

    #@8c
    move-object/from16 v12, p1

    #@8e
    .line 1144
    check-cast v12, [S

    #@90
    .line 1145
    .local v12, "shortArray":[S
    move-object/from16 v0, p0

    #@92
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@94
    array-length v14, v12

    #@95
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@98
    .line 1146
    const/4 v8, 0x0

    #@99
    .restart local v8    # "i":I
    :goto_2
    array-length v13, v12

    #@9a
    if-ge v8, v13, :cond_2

    #@9c
    .line 1147
    move-object/from16 v0, p0

    #@9e
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@a0
    aget-short v14, v12, v8

    #@a2
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@a5
    .line 1146
    add-int/lit8 v8, v8, 0x1

    #@a7
    goto :goto_2

    #@a8
    .line 1149
    .end local v8    # "i":I
    .end local v12    # "shortArray":[S
    :cond_5
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@aa
    move-object/from16 v0, p4

    #@ac
    if-ne v0, v13, :cond_6

    #@ae
    move-object/from16 v2, p1

    #@b0
    .line 1150
    check-cast v2, [Z

    #@b2
    .line 1151
    .local v2, "booleanArray":[Z
    move-object/from16 v0, p0

    #@b4
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@b6
    array-length v14, v2

    #@b7
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@ba
    .line 1152
    const/4 v8, 0x0

    #@bb
    .restart local v8    # "i":I
    :goto_3
    array-length v13, v2

    #@bc
    if-ge v8, v13, :cond_2

    #@be
    .line 1153
    move-object/from16 v0, p0

    #@c0
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@c2
    aget-boolean v14, v2, v8

    #@c4
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@c7
    .line 1152
    add-int/lit8 v8, v8, 0x1

    #@c9
    goto :goto_3

    #@ca
    .line 1155
    .end local v2    # "booleanArray":[Z
    .end local v8    # "i":I
    :cond_6
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@cc
    move-object/from16 v0, p4

    #@ce
    if-ne v0, v13, :cond_7

    #@d0
    move-object/from16 v10, p1

    #@d2
    .line 1156
    check-cast v10, [J

    #@d4
    .line 1157
    .local v10, "longArray":[J
    move-object/from16 v0, p0

    #@d6
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@d8
    array-length v14, v10

    #@d9
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@dc
    .line 1158
    const/4 v8, 0x0

    #@dd
    .restart local v8    # "i":I
    :goto_4
    array-length v13, v10

    #@de
    if-ge v8, v13, :cond_2

    #@e0
    .line 1159
    move-object/from16 v0, p0

    #@e2
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@e4
    aget-wide v14, v10, v8

    #@e6
    invoke-virtual {v13, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@e9
    .line 1158
    add-int/lit8 v8, v8, 0x1

    #@eb
    goto :goto_4

    #@ec
    .line 1161
    .end local v8    # "i":I
    .end local v10    # "longArray":[J
    :cond_7
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@ee
    move-object/from16 v0, p4

    #@f0
    if-ne v0, v13, :cond_8

    #@f2
    move-object/from16 v6, p1

    #@f4
    .line 1162
    check-cast v6, [F

    #@f6
    .line 1163
    .local v6, "floatArray":[F
    move-object/from16 v0, p0

    #@f8
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@fa
    array-length v14, v6

    #@fb
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@fe
    .line 1164
    const/4 v8, 0x0

    #@ff
    .restart local v8    # "i":I
    :goto_5
    array-length v13, v6

    #@100
    if-ge v8, v13, :cond_2

    #@102
    .line 1165
    move-object/from16 v0, p0

    #@104
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@106
    aget v14, v6, v8

    #@108
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@10b
    .line 1164
    add-int/lit8 v8, v8, 0x1

    #@10d
    goto :goto_5

    #@10e
    .line 1167
    .end local v6    # "floatArray":[F
    .end local v8    # "i":I
    :cond_8
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@110
    move-object/from16 v0, p4

    #@112
    if-ne v0, v13, :cond_9

    #@114
    move-object/from16 v5, p1

    #@116
    .line 1168
    check-cast v5, [D

    #@118
    .line 1169
    .local v5, "doubleArray":[D
    move-object/from16 v0, p0

    #@11a
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@11c
    array-length v14, v5

    #@11d
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@120
    .line 1170
    const/4 v8, 0x0

    #@121
    .restart local v8    # "i":I
    :goto_6
    array-length v13, v5

    #@122
    if-ge v8, v13, :cond_2

    #@124
    .line 1171
    move-object/from16 v0, p0

    #@126
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@128
    aget-wide v14, v5, v8

    #@12a
    invoke-virtual {v13, v14, v15}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@12d
    .line 1170
    add-int/lit8 v8, v8, 0x1

    #@12f
    goto :goto_6

    #@130
    .line 1174
    .end local v5    # "doubleArray":[D
    .end local v8    # "i":I
    :cond_9
    new-instance v13, Ljava/io/InvalidClassException;

    #@132
    new-instance v14, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v15, "Wrong base type in "

    #@13a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v14

    #@13e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@141
    move-result-object v15

    #@142
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v14

    #@146
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v14

    #@14a
    invoke-direct {v13, v14}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    #@14d
    throw v13

    #@14e
    :cond_a
    move-object/from16 v11, p1

    #@150
    .line 1178
    check-cast v11, [Ljava/lang/Object;

    #@152
    .line 1179
    .local v11, "objectArray":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@154
    iget-object v13, v0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@156
    array-length v14, v11

    #@157
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@15a
    .line 1180
    const/4 v8, 0x0

    #@15b
    .restart local v8    # "i":I
    :goto_7
    array-length v13, v11

    #@15c
    if-ge v8, v13, :cond_2

    #@15e
    .line 1185
    aget-object v13, v11, v8

    #@160
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v13}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@165
    .line 1180
    add-int/lit8 v8, v8, 0x1

    #@167
    goto :goto_7
.end method

.method private writeNewClass(Ljava/lang/Class;Z)I
    .locals 4
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1205
    .local p1, "object":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2
    const/16 v3, 0x76

    #@4
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@7
    .line 1212
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@a
    move-result-object v0

    #@b
    .line 1216
    .local v0, "clDesc":Ljava/io/ObjectStreamClass;
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->isEnum()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1217
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    #@14
    .line 1222
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    #@17
    move-result v1

    #@18
    .line 1223
    .local v1, "handle":I
    if-nez p2, :cond_0

    #@1a
    .line 1224
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@1c
    invoke-virtual {v2, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    #@1f
    .line 1227
    :cond_0
    return v1

    #@20
    .line 1219
    .end local v1    # "handle":I
    :cond_1
    invoke-direct {p0, v0, p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    #@23
    goto :goto_0
.end method

.method private writeNewClassDesc(Ljava/io/ObjectStreamClass;)V
    .locals 6
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1245
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@9
    .line 1246
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@b
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    #@e
    move-result-wide v4

    #@f
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@12
    .line 1247
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    #@15
    move-result v1

    #@16
    .line 1249
    .local v1, "flags":B
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@19
    move-result v0

    #@1a
    .line 1251
    .local v0, "externalizable":Z
    if-eqz v0, :cond_0

    #@1c
    .line 1252
    iget v2, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@1e
    const/4 v3, 0x1

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    .line 1253
    and-int/lit8 v2, v1, -0x9

    #@23
    int-to-byte v1, v2

    #@24
    .line 1260
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@26
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@29
    .line 1261
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getFlags()B

    #@2c
    move-result v2

    #@2d
    const/16 v3, 0x12

    #@2f
    if-eq v3, v2, :cond_2

    #@31
    .line 1262
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeFieldDescriptors(Ljava/io/ObjectStreamClass;Z)V

    #@34
    .line 1244
    :goto_1
    return-void

    #@35
    .line 1257
    :cond_1
    or-int/lit8 v2, v1, 0x8

    #@37
    int-to-byte v1, v2

    #@38
    goto :goto_0

    #@39
    .line 1265
    :cond_2
    iget-object v2, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@3f
    goto :goto_1
.end method

.method private writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1711
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@4
    .line 1713
    .local v5, "originalCurrentPutField":Ljava/io/EmulatedFieldsForDumping;
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@6
    .line 1715
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@8
    const/16 v10, 0x7e

    #@a
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@d
    .line 1716
    :goto_0
    if-eqz p2, :cond_0

    #@f
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    #@12
    move-result v9

    #@13
    if-eqz v9, :cond_2

    #@15
    .line 1720
    :cond_0
    invoke-static {p2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@18
    move-result-object v0

    #@19
    .line 1721
    .local v0, "classDesc":Ljava/io/ObjectStreamClass;
    invoke-direct {p0, v0, p3}, Ljava/io/ObjectOutputStream;->writeEnumDesc(Ljava/io/ObjectStreamClass;Z)Ljava/io/ObjectStreamClass;

    #@1c
    .line 1723
    const/4 v6, -0x1

    #@1d
    .line 1724
    .local v6, "previousHandle":I
    if-eqz p3, :cond_1

    #@1f
    .line 1725
    iget-object v9, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@21
    invoke-virtual {v9, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    #@24
    move-result v6

    #@25
    .line 1727
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    #@28
    move-result v3

    #@29
    .line 1729
    .local v3, "handle":I
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v9}, Ljava/io/ObjectStreamClass;->fields()[Ljava/io/ObjectStreamField;

    #@30
    move-result-object v2

    #@31
    .line 1732
    .local v2, "fields":[Ljava/io/ObjectStreamField;
    if-eqz v2, :cond_5

    #@33
    array-length v9, v2

    #@34
    if-le v9, v11, :cond_5

    #@36
    .line 1733
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass;->getSuperclass()Ljava/io/ObjectStreamClass;

    #@39
    move-result-object v9

    #@3a
    aget-object v10, v2, v11

    #@3c
    invoke-virtual {v9, v10}, Ljava/io/ObjectStreamClass;->checkAndGetReflectionField(Ljava/io/ObjectStreamField;)Ljava/lang/reflect/Field;

    #@3f
    move-result-object v1

    #@40
    .line 1734
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_3

    #@42
    .line 1735
    new-instance v9, Ljava/lang/NoSuchFieldError;

    #@44
    invoke-direct {v9}, Ljava/lang/NoSuchFieldError;-><init>()V

    #@47
    throw v9

    #@48
    .line 1718
    .end local v0    # "classDesc":Ljava/io/ObjectStreamClass;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/io/ObjectStreamField;
    .end local v3    # "handle":I
    .end local v6    # "previousHandle":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@4b
    move-result-object p2

    #@4c
    goto :goto_0

    #@4d
    .line 1738
    .restart local v0    # "classDesc":Ljava/io/ObjectStreamClass;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "fields":[Ljava/io/ObjectStreamField;
    .restart local v3    # "handle":I
    .restart local v6    # "previousHandle":I
    :cond_3
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v7

    #@51
    check-cast v7, Ljava/lang/String;

    #@53
    .line 1739
    .local v7, "str":Ljava/lang/String;
    const/4 v8, -0x1

    #@54
    .line 1740
    .local v8, "strHandle":I
    if-nez p3, :cond_4

    #@56
    .line 1741
    invoke-direct {p0, v7}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    #@59
    move-result v8

    #@5a
    .line 1743
    :cond_4
    const/4 v9, -0x1

    #@5b
    if-ne v8, v9, :cond_5

    #@5d
    .line 1744
    invoke-direct {p0, v7, p3}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 1751
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "strHandle":I
    :cond_5
    if-eqz p3, :cond_6

    #@62
    .line 1753
    invoke-direct {p0, p1, v6}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@65
    .line 1755
    :cond_6
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@67
    .line 1756
    return v3

    #@68
    .line 1746
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    #@69
    .line 1747
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/AssertionError;

    #@6b
    invoke-direct {v9, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6e
    throw v9
.end method

.method private writeNewException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1302
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@3
    const/16 v1, 0x7b

    #@5
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@8
    .line 1303
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    #@b
    .line 1304
    invoke-direct {p0, p1, v2, v2, v2}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    #@e
    .line 1305
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetSeenObjects()V

    #@11
    .line 1301
    return-void
.end method

.method private writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
    .param p3, "clDesc"    # Ljava/io/ObjectStreamClass;
    .param p4, "unshared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/io/ObjectStreamClass;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    #@1
    .line 1336
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@3
    .line 1337
    .local v4, "originalCurrentPutField":Ljava/io/EmulatedFieldsForDumping;
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@5
    .line 1340
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isExternalizable()Z

    #@8
    move-result v1

    #@9
    .line 1341
    .local v1, "externalizable":Z
    invoke-virtual {p3}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@c
    move-result v6

    #@d
    .line 1342
    .local v6, "serializable":Z
    if-nez v1, :cond_0

    #@f
    if-eqz v6, :cond_4

    #@11
    .line 1348
    :cond_0
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@13
    const/16 v8, 0x73

    #@15
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@18
    .line 1349
    const/4 v7, 0x0

    #@19
    invoke-direct {p0, p3, v7}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I

    #@1c
    .line 1350
    const/4 v5, -0x1

    #@1d
    .line 1351
    .local v5, "previousHandle":I
    if-eqz p4, :cond_1

    #@1f
    .line 1352
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@21
    invoke-virtual {v7, p1}, Ljava/io/SerializationHandleMap;->get(Ljava/lang/Object;)I

    #@24
    move-result v5

    #@25
    .line 1355
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->registerObjectWritten(Ljava/lang/Object;)I

    #@28
    move-result v2

    #@29
    .line 1361
    .local v2, "handle":I
    iput-object p1, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@2b
    .line 1362
    iput-object p3, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@2d
    .line 1364
    if-eqz v1, :cond_8

    #@2f
    .line 1365
    :try_start_0
    iget v7, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@31
    const/4 v8, 0x1

    #@32
    if-ne v7, v8, :cond_5

    #@34
    const/4 v3, 0x1

    #@35
    .line 1366
    .local v3, "noBlockData":Z
    :goto_0
    if-eqz v3, :cond_2

    #@37
    .line 1367
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@39
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@3b
    .line 1370
    :cond_2
    move-object v0, p1

    #@3c
    check-cast v0, Ljava/io/Externalizable;

    #@3e
    move-object v7, v0

    #@3f
    invoke-interface {v7, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    #@42
    .line 1371
    if-eqz v3, :cond_6

    #@44
    .line 1372
    const/4 v7, 0x0

    #@45
    iput-object v7, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 1389
    .end local v3    # "noBlockData":Z
    :goto_1
    if-eqz p4, :cond_3

    #@49
    .line 1391
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@4c
    .line 1393
    :cond_3
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@4e
    .line 1394
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@50
    .line 1395
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@52
    .line 1398
    return v2

    #@53
    .line 1344
    .end local v2    # "handle":I
    .end local v5    # "previousHandle":I
    :cond_4
    new-instance v7, Ljava/io/NotSerializableException;

    #@55
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    invoke-direct {v7, v8}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v7

    #@5d
    .line 1365
    .restart local v2    # "handle":I
    .restart local v5    # "previousHandle":I
    :cond_5
    const/4 v3, 0x0

    #@5e
    .restart local v3    # "noBlockData":Z
    goto :goto_0

    #@5f
    .line 1378
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@62
    .line 1379
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@64
    const/16 v8, 0x78

    #@66
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@69
    goto :goto_1

    #@6a
    .line 1386
    .end local v3    # "noBlockData":Z
    :catchall_0
    move-exception v7

    #@6b
    .line 1389
    if-eqz p4, :cond_7

    #@6d
    .line 1391
    invoke-direct {p0, p1, v5}, Ljava/io/ObjectOutputStream;->removeUnsharedReference(Ljava/lang/Object;I)V

    #@70
    .line 1393
    :cond_7
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@72
    .line 1394
    iput-object v9, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@74
    .line 1395
    iput-object v4, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@76
    .line 1386
    throw v7

    #@77
    .line 1384
    :cond_8
    :try_start_2
    iget-object v7, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@79
    invoke-direct {p0, p1, v7}, Ljava/io/ObjectOutputStream;->writeHierarchy(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    goto :goto_1
.end method

.method private writeNewString(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1414
    invoke-static {p1, v8}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    #@4
    move-result-wide v2

    #@5
    .line 1417
    .local v2, "count":J
    const-wide/32 v6, 0xffff

    #@8
    cmp-long v5, v2, v6

    #@a
    if-gtz v5, :cond_1

    #@c
    .line 1418
    long-to-int v5, v2

    #@d
    add-int/lit8 v5, v5, 0x3

    #@f
    new-array v0, v5, [B

    #@11
    .line 1419
    .local v0, "buffer":[B
    const/4 v4, 0x1

    #@12
    .local v4, "offset":I
    const/16 v5, 0x74

    #@14
    aput-byte v5, v0, v8

    #@16
    .line 1420
    long-to-int v5, v2

    #@17
    int-to-short v5, v5

    #@18
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@1a
    invoke-static {v0, v4, v5, v6}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@1d
    .line 1421
    add-int/lit8 v4, v4, 0x2

    #@1f
    .line 1428
    :goto_0
    invoke-static {v0, v4, p1}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    #@22
    .line 1429
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@24
    array-length v6, v0

    #@25
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/DataOutputStream;->write([BII)V

    #@28
    .line 1431
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->nextHandle()I

    #@2b
    move-result v1

    #@2c
    .line 1432
    .local v1, "handle":I
    if-nez p2, :cond_0

    #@2e
    .line 1433
    iget-object v5, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@30
    invoke-virtual {v5, p1, v1}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I

    #@33
    .line 1436
    :cond_0
    return v1

    #@34
    .line 1423
    .end local v0    # "buffer":[B
    .end local v1    # "handle":I
    .end local v4    # "offset":I
    :cond_1
    long-to-int v5, v2

    #@35
    add-int/lit8 v5, v5, 0x9

    #@37
    new-array v0, v5, [B

    #@39
    .line 1424
    .restart local v0    # "buffer":[B
    const/4 v4, 0x1

    #@3a
    .restart local v4    # "offset":I
    const/16 v5, 0x7c

    #@3c
    aput-byte v5, v0, v8

    #@3e
    .line 1425
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@40
    invoke-static {v0, v4, v2, v3, v5}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@43
    .line 1426
    add-int/lit8 v4, v4, 0x8

    #@45
    goto :goto_0
.end method

.method private writeNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1448
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2
    const/16 v1, 0x70

    #@4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@7
    .line 1447
    return-void
.end method

.method private writeObject(Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1481
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@2
    iget-object v4, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@4
    if-ne v3, v4, :cond_3

    #@6
    const/4 v2, 0x1

    #@7
    .line 1482
    .local v2, "setOutput":Z
    :goto_0
    if-eqz v2, :cond_0

    #@9
    .line 1483
    const/4 v3, 0x0

    #@a
    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@c
    .line 1487
    :cond_0
    iget-boolean v3, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    #@e
    if-eqz v3, :cond_1

    #@10
    if-eqz p2, :cond_4

    #@12
    .line 1494
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@15
    .line 1497
    const/4 v3, 0x1

    #@16
    const/4 v4, 0x1

    #@17
    invoke-direct {p0, p1, p2, v3, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    #@1a
    .line 1498
    if-eqz v2, :cond_2

    #@1c
    .line 1499
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@1e
    iput-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 1480
    :cond_2
    return-void

    #@21
    .line 1481
    .end local v2    # "setOutput":Z
    :cond_3
    const/4 v2, 0x0

    #@22
    .restart local v2    # "setOutput":Z
    goto :goto_0

    #@23
    .line 1488
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeObjectOverride(Ljava/lang/Object;)V

    #@26
    .line 1489
    return-void

    #@27
    .line 1501
    :catch_0
    move-exception v0

    #@28
    .line 1504
    .local v0, "ioEx1":Ljava/io/IOException;
    iget v3, p0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@2a
    if-nez v3, :cond_5

    #@2c
    .line 1506
    :try_start_1
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeNewException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    .line 1513
    :cond_5
    :goto_1
    throw v0

    #@30
    .line 1507
    :catch_1
    move-exception v1

    #@31
    .local v1, "ioEx2":Ljava/io/IOException;
    goto :goto_1
.end method

.method private writeObjectInternal(Ljava/lang/Object;ZZZ)I
    .locals 17
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "unshared"    # Z
    .param p3, "computeClassBasedReplacement"    # Z
    .param p4, "computeStreamReplacement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1541
    if-nez p1, :cond_0

    #@2
    .line 1542
    invoke-direct/range {p0 .. p0}, Ljava/io/ObjectOutputStream;->writeNull()V

    #@5
    .line 1543
    const/4 v3, -0x1

    #@6
    return v3

    #@7
    .line 1545
    :cond_0
    if-nez p2, :cond_1

    #@9
    .line 1546
    invoke-direct/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->dumpCycle(Ljava/lang/Object;)I

    #@c
    move-result v9

    #@d
    .line 1547
    .local v9, "handle":I
    const/4 v3, -0x1

    #@e
    if-eq v9, v3, :cond_1

    #@10
    .line 1548
    return v9

    #@11
    .line 1553
    .end local v9    # "handle":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v5

    #@15
    .line 1554
    .local v5, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v5}, Ljava/io/ObjectStreamClass;->lookupStreamClass(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    #@18
    move-result-object v6

    #@19
    .line 1556
    .local v6, "clDesc":Ljava/io/ObjectStreamClass;
    move-object/from16 v0, p0

    #@1b
    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@1d
    add-int/lit8 v3, v3, 0x1

    #@1f
    move-object/from16 v0, p0

    #@21
    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@23
    .line 1559
    :try_start_0
    move-object/from16 v0, p0

    #@25
    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@27
    if-eqz v3, :cond_2

    #@29
    move/from16 v3, p4

    #@2b
    :goto_0
    if-nez v3, :cond_4

    #@2d
    .line 1561
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    #@2f
    if-ne v5, v3, :cond_3

    #@31
    .line 1562
    check-cast p1, Ljava/lang/Class;

    #@33
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v3

    #@37
    .line 1653
    move-object/from16 v0, p0

    #@39
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@3b
    add-int/lit8 v4, v4, -0x1

    #@3d
    move-object/from16 v0, p0

    #@3f
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@41
    .line 1562
    return v3

    #@42
    .line 1559
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    #@43
    goto :goto_0

    #@44
    .line 1565
    :cond_3
    :try_start_1
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    #@46
    if-ne v5, v3, :cond_4

    #@48
    .line 1566
    check-cast p1, Ljava/io/ObjectStreamClass;

    #@4a
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    move-result v3

    #@4e
    .line 1653
    move-object/from16 v0, p0

    #@50
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@52
    add-int/lit8 v4, v4, -0x1

    #@54
    move-object/from16 v0, p0

    #@56
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@58
    .line 1566
    return v3

    #@59
    .line 1570
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->isSerializable()Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_8

    #@5f
    if-eqz p3, :cond_8

    #@61
    .line 1571
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->hasMethodWriteReplace()Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_8

    #@67
    .line 1572
    invoke-virtual {v6}, Ljava/io/ObjectStreamClass;->getMethodWriteReplace()Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    move-result-object v12

    #@6b
    .line 1575
    .local v12, "methodWriteReplace":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    #@6c
    :try_start_3
    check-cast v3, [Ljava/lang/Object;

    #@6e
    move-object/from16 v0, p1

    #@70
    invoke-virtual {v12, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    move-result-object v13

    #@74
    .line 1590
    .local v13, "replObj":Ljava/lang/Object;
    :goto_1
    move-object/from16 v0, p1

    #@76
    if-eq v13, v0, :cond_8

    #@78
    .line 1592
    const/4 v3, 0x0

    #@79
    const/4 v4, 0x0

    #@7a
    :try_start_4
    move-object/from16 v0, p0

    #@7c
    move/from16 v1, p4

    #@7e
    invoke-direct {v0, v13, v3, v4, v1}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    #@81
    move-result v14

    #@82
    .line 1596
    .local v14, "replacementHandle":I
    const/4 v3, -0x1

    #@83
    if-eq v14, v3, :cond_5

    #@85
    .line 1597
    move-object/from16 v0, p0

    #@87
    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@89
    move-object/from16 v0, p1

    #@8b
    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8e
    .line 1653
    :cond_5
    move-object/from16 v0, p0

    #@90
    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@92
    add-int/lit8 v3, v3, -0x1

    #@94
    move-object/from16 v0, p0

    #@96
    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@98
    .line 1599
    return v14

    #@99
    .line 1578
    .end local v13    # "replObj":Ljava/lang/Object;
    .end local v14    # "replacementHandle":I
    :catch_0
    move-exception v11

    #@9a
    .line 1581
    .local v11, "ite":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@9d
    move-result-object v16

    #@9e
    .line 1582
    .local v16, "target":Ljava/lang/Throwable;
    move-object/from16 v0, v16

    #@a0
    instance-of v3, v0, Ljava/io/ObjectStreamException;

    #@a2
    if-eqz v3, :cond_6

    #@a4
    .line 1583
    check-cast v16, Ljava/io/ObjectStreamException;

    #@a6
    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a7
    .line 1652
    .end local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    .end local p1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    #@a8
    .line 1653
    move-object/from16 v0, p0

    #@aa
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@ac
    add-int/lit8 v4, v4, -0x1

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@b2
    .line 1652
    throw v3

    #@b3
    .line 1584
    .restart local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    .restart local v16    # "target":Ljava/lang/Throwable;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    :try_start_6
    move-object/from16 v0, v16

    #@b5
    instance-of v3, v0, Ljava/lang/Error;

    #@b7
    if-eqz v3, :cond_7

    #@b9
    .line 1585
    check-cast v16, Ljava/lang/Error;

    #@bb
    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16

    #@bc
    .line 1587
    .restart local v16    # "target":Ljava/lang/Throwable;
    :cond_7
    check-cast v16, Ljava/lang/RuntimeException;

    #@be
    .end local v16    # "target":Ljava/lang/Throwable;
    throw v16

    #@bf
    .line 1576
    .end local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v10

    #@c0
    .line 1577
    .local v10, "iae":Ljava/lang/IllegalAccessException;
    move-object/from16 v13, p1

    #@c2
    .restart local v13    # "replObj":Ljava/lang/Object;
    goto :goto_1

    #@c3
    .line 1608
    .end local v10    # "iae":Ljava/lang/IllegalAccessException;
    .end local v12    # "methodWriteReplace":Ljava/lang/reflect/Method;
    .end local v13    # "replObj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    #@c5
    iget-boolean v3, v0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@c7
    if-eqz v3, :cond_a

    #@c9
    if-eqz p4, :cond_a

    #@cb
    .line 1610
    invoke-virtual/range {p0 .. p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    move-result-object v15

    #@cf
    .line 1611
    .local v15, "streamReplacement":Ljava/lang/Object;
    move-object/from16 v0, p1

    #@d1
    if-eq v15, v0, :cond_a

    #@d3
    .line 1613
    const/4 v3, 0x0

    #@d4
    .line 1614
    const/4 v4, 0x0

    #@d5
    .line 1613
    move-object/from16 v0, p0

    #@d7
    move/from16 v1, p3

    #@d9
    invoke-direct {v0, v15, v3, v1, v4}, Ljava/io/ObjectOutputStream;->writeObjectInternal(Ljava/lang/Object;ZZZ)I

    #@dc
    move-result v14

    #@dd
    .line 1616
    .restart local v14    # "replacementHandle":I
    const/4 v3, -0x1

    #@de
    if-eq v14, v3, :cond_9

    #@e0
    .line 1617
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@e4
    move-object/from16 v0, p1

    #@e6
    invoke-virtual {v3, v0, v14}, Ljava/io/SerializationHandleMap;->put(Ljava/lang/Object;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@e9
    .line 1653
    :cond_9
    move-object/from16 v0, p0

    #@eb
    iget v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@ed
    add-int/lit8 v3, v3, -0x1

    #@ef
    move-object/from16 v0, p0

    #@f1
    iput v3, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@f3
    .line 1619
    return v14

    #@f4
    .line 1626
    .end local v14    # "replacementHandle":I
    .end local v15    # "streamReplacement":Ljava/lang/Object;
    :cond_a
    :try_start_7
    sget-object v3, Ljava/io/ObjectStreamClass;->CLASSCLASS:Ljava/lang/Class;

    #@f6
    if-ne v5, v3, :cond_b

    #@f8
    .line 1627
    check-cast p1, Ljava/lang/Class;

    #@fa
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewClass(Ljava/lang/Class;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@fd
    move-result v3

    #@fe
    .line 1653
    move-object/from16 v0, p0

    #@100
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@102
    add-int/lit8 v4, v4, -0x1

    #@104
    move-object/from16 v0, p0

    #@106
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@108
    .line 1627
    return v3

    #@109
    .line 1631
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    :try_start_8
    sget-object v3, Ljava/io/ObjectStreamClass;->OBJECTSTREAMCLASSCLASS:Ljava/lang/Class;

    #@10b
    if-ne v5, v3, :cond_c

    #@10d
    .line 1632
    check-cast p1, Ljava/io/ObjectStreamClass;

    #@10f
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeClassDesc(Ljava/io/ObjectStreamClass;Z)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@112
    move-result v3

    #@113
    .line 1653
    move-object/from16 v0, p0

    #@115
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@117
    add-int/lit8 v4, v4, -0x1

    #@119
    move-object/from16 v0, p0

    #@11b
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@11d
    .line 1632
    return v3

    #@11e
    .line 1636
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_c
    :try_start_9
    sget-object v3, Ljava/io/ObjectStreamClass;->STRINGCLASS:Ljava/lang/Class;

    #@120
    if-ne v5, v3, :cond_d

    #@122
    .line 1637
    check-cast p1, Ljava/lang/String;

    #@124
    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct/range {p0 .. p2}, Ljava/io/ObjectOutputStream;->writeNewString(Ljava/lang/String;Z)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@127
    move-result v3

    #@128
    .line 1653
    move-object/from16 v0, p0

    #@12a
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@12c
    add-int/lit8 v4, v4, -0x1

    #@12e
    move-object/from16 v0, p0

    #@130
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@132
    .line 1637
    return v3

    #@133
    .line 1641
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    #@136
    move-result v3

    #@137
    if-eqz v3, :cond_e

    #@139
    .line 1642
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@13c
    move-result-object v7

    #@13d
    move-object/from16 v3, p0

    #@13f
    move-object/from16 v4, p1

    #@141
    move/from16 v8, p2

    #@143
    invoke-direct/range {v3 .. v8}, Ljava/io/ObjectOutputStream;->writeNewArray(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Ljava/lang/Class;Z)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@146
    move-result v3

    #@147
    .line 1653
    move-object/from16 v0, p0

    #@149
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@14b
    add-int/lit8 v4, v4, -0x1

    #@14d
    move-object/from16 v0, p0

    #@14f
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@151
    .line 1642
    return v3

    #@152
    .line 1646
    :cond_e
    :try_start_b
    move-object/from16 v0, p1

    #@154
    instance-of v3, v0, Ljava/lang/Enum;

    #@156
    if-eqz v3, :cond_f

    #@158
    .line 1647
    move-object/from16 v0, p0

    #@15a
    move-object/from16 v1, p1

    #@15c
    move/from16 v2, p2

    #@15e
    invoke-direct {v0, v1, v5, v2}, Ljava/io/ObjectOutputStream;->writeNewEnum(Ljava/lang/Object;Ljava/lang/Class;Z)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@161
    move-result v3

    #@162
    .line 1653
    move-object/from16 v0, p0

    #@164
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@166
    add-int/lit8 v4, v4, -0x1

    #@168
    move-object/from16 v0, p0

    #@16a
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@16c
    .line 1647
    return v3

    #@16d
    .line 1651
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    #@16f
    move-object/from16 v1, p1

    #@171
    move/from16 v2, p2

    #@173
    invoke-direct {v0, v1, v5, v6, v2}, Ljava/io/ObjectOutputStream;->writeNewObject(Ljava/lang/Object;Ljava/lang/Class;Ljava/io/ObjectStreamClass;Z)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@176
    move-result v3

    #@177
    .line 1653
    move-object/from16 v0, p0

    #@179
    iget v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@17b
    add-int/lit8 v4, v4, -0x1

    #@17d
    move-object/from16 v0, p0

    #@17f
    iput v4, v0, Ljava/io/ObjectOutputStream;->nestedLevels:I

    #@181
    .line 1651
    return v3
.end method


# virtual methods
.method protected annotateClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method protected annotateProxyClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 302
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->flush()V

    #@3
    .line 330
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    #@8
    .line 327
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 358
    new-instance v0, Ljava/io/NotActiveException;

    #@6
    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    #@9
    throw v0

    #@a
    .line 360
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@c
    iget-object v1, p0, Ljava/io/ObjectOutputStream;->currentClass:Ljava/io/ObjectStreamClass;

    #@e
    invoke-direct {p0, v0, v1}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/lang/Object;Ljava/io/ObjectStreamClass;)V

    #@11
    .line 356
    return-void
.end method

.method protected drain()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 371
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 372
    :cond_0
    return-void

    #@a
    .line 376
    :cond_1
    const/4 v0, 0x0

    #@b
    .line 377
    .local v0, "offset":I
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    #@d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@10
    move-result-object v2

    #@11
    .line 379
    .local v2, "written":[B
    :goto_0
    array-length v3, v2

    #@12
    if-ge v0, v3, :cond_4

    #@14
    .line 380
    array-length v3, v2

    #@15
    sub-int/2addr v3, v0

    #@16
    const/16 v4, 0x400

    #@18
    if-le v3, v4, :cond_2

    #@1a
    const/16 v1, 0x400

    #@1c
    .line 382
    .local v1, "toWrite":I
    :goto_1
    const/16 v3, 0x100

    #@1e
    if-ge v1, v3, :cond_3

    #@20
    .line 383
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@22
    const/16 v4, 0x77

    #@24
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@27
    .line 384
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@29
    int-to-byte v4, v1

    #@2a
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@2d
    .line 391
    :goto_2
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2f
    invoke-virtual {v3, v2, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    #@32
    .line 392
    add-int/2addr v0, v1

    #@33
    goto :goto_0

    #@34
    .line 381
    .end local v1    # "toWrite":I
    :cond_2
    array-length v3, v2

    #@35
    sub-int v1, v3, v0

    #@37
    .restart local v1    # "toWrite":I
    goto :goto_1

    #@38
    .line 386
    :cond_3
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@3a
    const/16 v4, 0x7a

    #@3c
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@3f
    .line 387
    iget-object v3, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@41
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@44
    goto :goto_2

    #@45
    .line 396
    .end local v1    # "toWrite":I
    :cond_4
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@47
    .line 397
    iput-object v5, p0, Ljava/io/ObjectOutputStream;->primitiveTypesBuffer:Ljava/io/ByteArrayOutputStream;

    #@49
    .line 370
    return-void
.end method

.method protected enableReplaceObject(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 438
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@2
    .line 439
    .local v0, "originalValue":Z
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream;->enableReplace:Z

    #@4
    .line 440
    return v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 453
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@3
    .line 454
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    #@8
    .line 452
    return-void
.end method

.method public putFields()Ljava/io/ObjectOutputStream$PutField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentObject:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 483
    new-instance v0, Ljava/io/NotActiveException;

    #@6
    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    #@9
    throw v0

    #@a
    .line 485
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 486
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->computePutField()V

    #@11
    .line 488
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@13
    return-object v0
.end method

.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 532
    return-object p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream;->drain()V

    #@3
    .line 553
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@5
    const/16 v1, 0x79

    #@7
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@a
    .line 555
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->resetState()V

    #@d
    .line 546
    return-void
.end method

.method public useProtocolVersion(I)V
    .locals 3
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->objectsWritten:Ljava/io/SerializationHandleMap;

    #@2
    invoke-virtual {v0}, Ljava/io/SerializationHandleMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Cannot set protocol version when stream in use"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 598
    :cond_0
    const/4 v0, 0x1

    #@12
    if-eq p1, v0, :cond_1

    #@14
    .line 599
    const/4 v0, 0x2

    #@15
    if-eq p1, v0, :cond_1

    #@17
    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Unknown protocol: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 602
    :cond_1
    iput p1, p0, Ljava/io/ObjectOutputStream;->protocolVersion:I

    #@33
    .line 594
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 638
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 639
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    #@8
    .line 637
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 622
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 623
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    #@8
    .line 621
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 652
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@8
    .line 650
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 665
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@8
    .line 663
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 680
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@8
    .line 678
    return-void
.end method

.method public writeChar(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 692
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 693
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    #@8
    .line 691
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 706
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 707
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    #@8
    .line 705
    return-void
.end method

.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "classDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1279
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;->writeNewClassDesc(Ljava/io/ObjectStreamClass;)V

    #@3
    .line 1278
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 802
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 803
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    #@8
    .line 801
    return-void
.end method

.method public writeFields()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 861
    new-instance v0, Ljava/io/NotActiveException;

    #@6
    invoke-direct {v0}, Ljava/io/NotActiveException;-><init>()V

    #@9
    throw v0

    #@a
    .line 863
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->currentPutField:Ljava/io/EmulatedFieldsForDumping;

    #@c
    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream;->writeFieldValues(Ljava/io/EmulatedFieldsForDumping;)V

    #@f
    .line 858
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 983
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 984
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    #@8
    .line 982
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 1076
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@8
    .line 1074
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 1089
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    #@8
    .line 1087
    return-void
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1461
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    #@4
    .line 1460
    return-void
.end method

.method protected writeObjectOverride(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1769
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream;->subclassOverridingImplementation:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1771
    new-instance v0, Ljava/io/IOException;

    #@6
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1768
    :cond_0
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1784
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 1785
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@8
    .line 1783
    return-void
.end method

.method protected writeStreamHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1795
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@2
    const/16 v1, -0x5313

    #@4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@7
    .line 1796
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->output:Ljava/io/DataOutputStream;

    #@9
    const/4 v1, 0x5

    #@a
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@d
    .line 1794
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1809
    invoke-direct {p0}, Ljava/io/ObjectOutputStream;->checkWritePrimitiveTypes()V

    #@3
    .line 1810
    iget-object v0, p0, Ljava/io/ObjectOutputStream;->primitiveTypes:Ljava/io/DataOutputStream;

    #@5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@8
    .line 1808
    return-void
.end method

.method public writeUnshared(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1477
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;Z)V

    #@4
    .line 1476
    return-void
.end method
