.class final Ljava/text/AttributedString$AttributedStringIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedStringIterator"
.end annotation


# instance fields
.field private beginIndex:I

.field private currentIndex:I

.field private currentRunIndex:I

.field private currentRunLimit:I

.field private currentRunStart:I

.field private endIndex:I

.field private relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 2
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    .line 753
    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 755
    if-ltz p3, :cond_0

    #@7
    if-le p3, p4, :cond_1

    #@9
    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Invalid substring range"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 755
    :cond_1
    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    #@15
    move-result v0

    #@16
    if-gt p4, v0, :cond_0

    #@18
    .line 759
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@1a
    .line 760
    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@1c
    .line 761
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@1e
    .line 762
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    #@21
    .line 763
    if-eqz p2, :cond_2

    #@23
    .line 764
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, [Ljava/text/AttributedCharacterIterator$Attribute;

    #@29
    iput-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    #@2b
    .line 753
    :cond_2
    return-void
.end method

.method private getString()Ljava/text/AttributedString;
    .locals 1

    #@0
    .prologue
    .line 991
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2
    return-object v0
.end method

.method private internalSetIndex(I)C
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 997
    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    .line 998
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@4
    if-lt p1, v0, :cond_0

    #@6
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 999
    :cond_0
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    #@d
    .line 1001
    :cond_1
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@f
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@11
    if-ne v0, v1, :cond_2

    #@13
    .line 1002
    const v0, 0xffff

    #@16
    return v0

    #@17
    .line 1004
    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@19
    invoke-static {v0, p1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method private updateRunInfo()V
    .locals 4

    #@0
    .prologue
    .line 1010
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 1011
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@8
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@a
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@c
    .line 1012
    const/4 v1, -0x1

    #@d
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@f
    .line 1009
    :goto_0
    return-void

    #@10
    .line 1014
    :cond_0
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@12
    monitor-enter v2

    #@13
    .line 1015
    const/4 v0, -0x1

    #@14
    .line 1016
    .local v0, "runIndex":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@16
    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    if-ge v0, v1, :cond_1

    #@1c
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@1e
    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    #@20
    add-int/lit8 v3, v0, 0x1

    #@22
    aget v1, v1, v3

    #@24
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@26
    if-gt v1, v3, :cond_1

    #@28
    .line 1017
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1018
    :cond_1
    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@2d
    .line 1019
    if-ltz v0, :cond_4

    #@2f
    .line 1020
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@31
    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    #@33
    aget v1, v1, v0

    #@35
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@37
    .line 1021
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@39
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@3b
    if-ge v1, v3, :cond_2

    #@3d
    .line 1022
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@3f
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@41
    .line 1027
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@43
    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    #@45
    add-int/lit8 v1, v1, -0x1

    #@47
    if-ge v0, v1, :cond_5

    #@49
    .line 1028
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@4b
    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    #@4d
    add-int/lit8 v3, v0, 0x1

    #@4f
    aget v1, v1, v3

    #@51
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@53
    .line 1029
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@55
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@57
    if-le v1, v3, :cond_3

    #@59
    .line 1030
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@5b
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    :cond_3
    :goto_3
    monitor-exit v2

    #@5e
    goto :goto_0

    #@5f
    .line 1025
    :cond_4
    :try_start_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@61
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@63
    goto :goto_2

    #@64
    .line 1014
    :catchall_0
    move-exception v1

    #@65
    monitor-exit v2

    #@66
    throw v1

    #@67
    .line 1033
    :cond_5
    :try_start_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@69
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6b
    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 793
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 794
    .local v1, "other":Ljava/text/AttributedString$AttributedStringIterator;
    return-object v1

    #@7
    .line 796
    .end local v1    # "other":Ljava/text/AttributedString$AttributedStringIterator;
    :catch_0
    move-exception v0

    #@8
    .line 797
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@a
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@d
    throw v2
.end method

.method public current()C
    .locals 2

    #@0
    .prologue
    .line 816
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 817
    const v0, 0xffff

    #@9
    return v0

    #@a
    .line 819
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@c
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@e
    invoke-static {v0, v1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 771
    if-ne p0, p1, :cond_0

    #@4
    .line 772
    return v4

    #@5
    .line 774
    :cond_0
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 775
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 778
    nop

    #@c
    nop

    #@d
    .line 780
    .local v0, "that":Ljava/text/AttributedString$AttributedStringIterator;
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@f
    invoke-direct {v0}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    #@12
    move-result-object v2

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 781
    return v3

    #@16
    .line 782
    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@18
    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@1a
    if-ne v1, v2, :cond_3

    #@1c
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@1e
    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@20
    if-eq v1, v2, :cond_4

    #@22
    .line 783
    :cond_3
    return v3

    #@23
    .line 782
    :cond_4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@25
    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@27
    if-ne v1, v2, :cond_3

    #@29
    .line 784
    return v4
.end method

.method public first()C
    .locals 1

    #@0
    .prologue
    .line 804
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@2
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 954
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2
    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@4
    if-nez v5, :cond_0

    #@6
    .line 957
    new-instance v5, Ljava/util/HashSet;

    #@8
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    #@b
    return-object v5

    #@c
    .line 959
    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@e
    monitor-enter v6

    #@f
    .line 962
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    #@11
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@14
    .line 963
    .local v4, "keys":Ljava/util/Set;
    const/4 v1, 0x0

    #@15
    .line 964
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@17
    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    #@19
    if-ge v1, v5, :cond_3

    #@1b
    .line 965
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@1d
    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    #@1f
    aget v5, v5, v1

    #@21
    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@23
    if-ge v5, v7, :cond_2

    #@25
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@27
    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    #@29
    add-int/lit8 v5, v5, -0x1

    #@2b
    if-eq v1, v5, :cond_1

    #@2d
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2f
    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    #@31
    add-int/lit8 v7, v1, 0x1

    #@33
    aget v5, v5, v7

    #@35
    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@37
    if-le v5, v7, :cond_2

    #@39
    .line 966
    :cond_1
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@3b
    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@3d
    aget-object v0, v5, v1

    #@3f
    .line 967
    .local v0, "currentRunAttributes":Ljava/util/Vector;
    if-eqz v0, :cond_2

    #@41
    .line 968
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@44
    move-result v2

    #@45
    .local v2, "j":I
    move v3, v2

    #@46
    .line 969
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    #@48
    .end local v3    # "j":I
    .restart local v2    # "j":I
    if-lez v3, :cond_2

    #@4a
    .line 970
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    move v3, v2

    #@52
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    #@53
    .line 974
    .end local v0    # "currentRunAttributes":Ljava/util/Vector;
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    :cond_3
    monitor-exit v6

    #@57
    .line 976
    return-object v4

    #@58
    .line 959
    .end local v1    # "i":I
    .end local v4    # "keys":Ljava/util/Set;
    :catchall_0
    move-exception v5

    #@59
    monitor-exit v6

    #@5a
    throw v5
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 981
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@2
    .line 982
    .local v0, "runIndex":I
    if-gez v0, :cond_0

    #@4
    .line 983
    const/4 v1, 0x0

    #@5
    return-object v1

    #@6
    .line 985
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@8
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@a
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@c
    invoke-static {v1, p1, v0, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2
    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@8
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 947
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    #@d
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@10
    return-object v0

    #@11
    .line 944
    :cond_1
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@13
    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@15
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@17
    aget-object v0, v0, v1

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 949
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    #@1d
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@1f
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@21
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@23
    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@25
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    #@28
    return-object v0
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 848
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 852
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 856
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    return v0
.end method

.method public getRunLimit()I
    .locals 1

    #@0
    .prologue
    .line 903
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@2
    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 907
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@2
    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@4
    if-eq v3, v4, :cond_0

    #@6
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@8
    const/4 v4, -0x1

    #@9
    if-ne v3, v4, :cond_1

    #@b
    .line 908
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@d
    return v3

    #@e
    .line 910
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .line 911
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@14
    .line 912
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@16
    .line 913
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@18
    if-ge v1, v3, :cond_3

    #@1a
    .line 914
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@1c
    add-int/lit8 v4, v0, 0x1

    #@1e
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    .line 913
    if-eqz v3, :cond_3

    #@28
    .line 915
    add-int/lit8 v0, v0, 0x1

    #@2a
    .line 916
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2c
    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    #@2e
    add-int/lit8 v3, v3, -0x1

    #@30
    if-ge v0, v3, :cond_2

    #@32
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@34
    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    #@36
    add-int/lit8 v4, v0, 0x1

    #@38
    aget v1, v3, v4

    #@3a
    goto :goto_0

    #@3b
    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@3d
    goto :goto_0

    #@3e
    .line 918
    :cond_3
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@40
    if-le v1, v3, :cond_4

    #@42
    .line 919
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@44
    .line 921
    :cond_4
    return v1
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 926
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@2
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@4
    if-eq v2, v3, :cond_0

    #@6
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@8
    const/4 v3, -0x1

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 927
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@d
    return v2

    #@e
    .line 929
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    #@10
    .line 930
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@12
    .line 931
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@14
    if-ge v1, v2, :cond_3

    #@16
    .line 932
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@18
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@1a
    add-int/lit8 v4, v0, 0x1

    #@1c
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    #@1f
    move-result v2

    #@20
    .line 931
    if-eqz v2, :cond_3

    #@22
    .line 933
    add-int/lit8 v0, v0, 0x1

    #@24
    .line 934
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@26
    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    #@28
    add-int/lit8 v2, v2, -0x1

    #@2a
    if-ge v0, v2, :cond_2

    #@2c
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2e
    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    #@30
    add-int/lit8 v3, v0, 0x1

    #@32
    aget v1, v2, v3

    #@34
    goto :goto_0

    #@35
    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@37
    goto :goto_0

    #@38
    .line 936
    :cond_3
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@3a
    if-le v1, v2, :cond_4

    #@3c
    .line 937
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@3e
    .line 939
    :cond_4
    return v1
.end method

.method public getRunStart()I
    .locals 1

    #@0
    .prologue
    .line 862
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@2
    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 866
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@2
    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@4
    if-eq v3, v4, :cond_0

    #@6
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@8
    const/4 v4, -0x1

    #@9
    if-ne v3, v4, :cond_1

    #@b
    .line 867
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@d
    return v3

    #@e
    .line 869
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    .line 870
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@14
    .line 871
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@16
    .line 872
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@18
    if-le v1, v3, :cond_2

    #@1a
    .line 873
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@1c
    add-int/lit8 v4, v0, -0x1

    #@1e
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    .line 872
    if-eqz v3, :cond_2

    #@28
    .line 874
    add-int/lit8 v0, v0, -0x1

    #@2a
    .line 875
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2c
    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    #@2e
    aget v1, v3, v0

    #@30
    goto :goto_0

    #@31
    .line 877
    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@33
    if-ge v1, v3, :cond_3

    #@35
    .line 878
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@37
    .line 880
    :cond_3
    return v1
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 885
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@2
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@4
    if-eq v2, v3, :cond_0

    #@6
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@8
    const/4 v3, -0x1

    #@9
    if-ne v2, v3, :cond_1

    #@b
    .line 886
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@d
    return v2

    #@e
    .line 888
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    #@10
    .line 889
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@12
    .line 890
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@14
    if-le v1, v2, :cond_2

    #@16
    .line 891
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@18
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    #@1a
    add-int/lit8 v4, v0, -0x1

    #@1c
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    #@1f
    move-result v2

    #@20
    .line 890
    if-eqz v2, :cond_2

    #@22
    .line 892
    add-int/lit8 v0, v0, -0x1

    #@24
    .line 893
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@26
    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    #@28
    aget v1, v2, v0

    #@2a
    goto :goto_0

    #@2b
    .line 895
    :cond_2
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@2d
    if-ge v1, v2, :cond_3

    #@2f
    .line 896
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@31
    .line 898
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 788
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    #@2
    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@a
    xor-int/2addr v0, v1

    #@b
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@d
    xor-int/2addr v0, v1

    #@e
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method public last()C
    .locals 2

    #@0
    .prologue
    .line 808
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 809
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@8
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 811
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@f
    add-int/lit8 v0, v0, -0x1

    #@11
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public next()C
    .locals 2

    #@0
    .prologue
    .line 824
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 825
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 828
    :cond_0
    const v0, 0xffff

    #@12
    return v0
.end method

.method public previous()C
    .locals 2

    #@0
    .prologue
    .line 833
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 834
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 837
    :cond_0
    const v0, 0xffff

    #@12
    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 842
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 843
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid index"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 844
    :cond_1
    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    #@14
    move-result v0

    #@15
    return v0
.end method
