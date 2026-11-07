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
.field private greylist-max-o beginIndex:I

.field private greylist-max-o currentIndex:I

.field private greylist-max-o currentRunIndex:I

.field private greylist-max-o currentRunLimit:I

.field private greylist-max-o currentRunStart:I

.field private greylist-max-o endIndex:I

.field private greylist-max-o relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic blacklist this$0:Ljava/text/AttributedString;


# direct methods
.method constructor blacklist <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .registers 6
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 758
    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    if-ltz p3, :cond_23

    if-gt p3, p4, :cond_23

    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    move-result p1

    if-gt p4, p1, :cond_23

    .line 764
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 765
    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 766
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 767
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 768
    if-eqz p2, :cond_22

    .line 769
    invoke-virtual {p2}, [Ljava/text/AttributedCharacterIterator$Attribute;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    .line 771
    :cond_22
    return-void

    .line 761
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid substring range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o getString()Ljava/text/AttributedString;
    .registers 2

    .line 994
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    return-object v0
.end method

.method private greylist-max-o internalSetIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 1000
    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 1001
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    if-lt p1, v0, :cond_d

    .line 1002
    :cond_a
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 1004
    :cond_d
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_17

    .line 1005
    const v0, 0xffff

    return v0

    .line 1007
    :cond_17
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-static {v0, p1}, Ljava/text/AttributedString;->-$$Nest$mcharAt(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method private greylist-max-o updateRunInfo()V
    .registers 5

    .line 1013
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_10

    .line 1014
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1015
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    goto :goto_68

    .line 1017
    :cond_10
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v0

    .line 1018
    const/4 v1, -0x1

    .line 1019
    .local v1, "runIndex":I
    :goto_14
    :try_start_14
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-gt v2, v3, :cond_2b

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1021
    :cond_2b
    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1022
    if-ltz v1, :cond_42

    .line 1023
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v1

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1024
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v2, v3, :cond_46

    .line 1025
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    goto :goto_46

    .line 1028
    :cond_42
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1030
    :cond_46
    :goto_46
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_63

    .line 1031
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1032
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v2, v3, :cond_67

    .line 1033
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    goto :goto_67

    .line 1036
    :cond_63
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1038
    .end local v1    # "runIndex":I
    :cond_67
    :goto_67
    monitor-exit v0

    .line 1040
    :goto_68
    return-void

    .line 1038
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_14 .. :try_end_6b} :catchall_69

    throw v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 796
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 797
    .local v0, "other":Ljava/text/AttributedString$AttributedStringIterator;
    return-object v0

    .line 799
    .end local v0    # "other":Ljava/text/AttributedString$AttributedStringIterator;
    :catch_7
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api current()C
    .registers 3

    .line 819
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_a

    .line 820
    const v0, 0xffff

    return v0

    .line 822
    :cond_a
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    invoke-static {v0, v1}, Ljava/text/AttributedString;->-$$Nest$mcharAt(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 776
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 777
    return v0

    .line 779
    :cond_4
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    move-object v1, p1

    check-cast v1, Ljava/text/AttributedString$AttributedStringIterator;

    .line 783
    .local v1, "that":Ljava/text/AttributedString$AttributedStringIterator;
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {v1}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    move-result-object v4

    if-eq v3, v4, :cond_15

    .line 784
    return v2

    .line 785
    :cond_15
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v3, v4, :cond_29

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v4, v1, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v3, v4, :cond_28

    goto :goto_29

    .line 787
    :cond_28
    return v0

    .line 786
    :cond_29
    :goto_29
    return v2

    .line 780
    .end local v1    # "that":Ljava/text/AttributedString$AttributedStringIterator;
    :cond_2a
    return v2
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 807
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api getAllAttributeKeys()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .line 957
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 960
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 962
    :cond_c
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v0

    .line 965
    :try_start_f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 966
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v2, 0x0

    .line 967
    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    if-ge v2, v3, :cond_57

    .line 968
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v3, v3, v2

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v3, v4, :cond_54

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_39

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v3, v4, :cond_54

    .line 969
    :cond_39
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v3, v2

    .line 970
    .local v3, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-eqz v3, :cond_54

    .line 971
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 972
    .local v4, "j":I
    :goto_45
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "j":I
    .local v5, "j":I
    if-lez v4, :cond_54

    .line 973
    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_45

    .line 977
    .end local v3    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v5    # "j":I
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 979
    :cond_57
    monitor-exit v0

    return-object v1

    .line 980
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v2    # "i":I
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_f .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public whitelist test-api getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .registers 6
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 984
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 985
    .local v0, "runIndex":I
    if-gez v0, :cond_6

    .line 986
    const/4 v1, 0x0

    return-object v1

    .line 988
    :cond_6
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-static {v1, p1, v0, v2, v3}, Ljava/text/AttributedString;->-$$Nest$mgetAttributeCheckRange(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getAttributes()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-eqz v0, :cond_24

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    goto :goto_24

    .line 952
    :cond_16
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    return-object v0

    .line 950
    :cond_24
    :goto_24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-object v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 851
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 855
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 859
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    return v0
.end method

.method public whitelist test-api getRunLimit()I
    .registers 2

    .line 906
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist test-api getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 910
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_44

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_44

    .line 913
    :cond_c
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 914
    .local v0, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 915
    .local v1, "runLimit":I
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 916
    .local v2, "runIndex":I
    :goto_14
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v3, :cond_3d

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v2, 0x1

    .line 917
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-$$Nest$mgetAttribute(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/text/AttributedString;->-$$Nest$smvaluesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 918
    add-int/lit8 v2, v2, 0x1

    .line 919
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_39

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    goto :goto_3b

    :cond_39
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    :goto_3b
    move v1, v3

    goto :goto_14

    .line 921
    :cond_3d
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_43

    .line 922
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 924
    :cond_43
    return v1

    .line 911
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "runLimit":I
    .end local v2    # "runIndex":I
    :cond_44
    :goto_44
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist test-api getRunLimit(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 929
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_3e

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_3e

    .line 932
    :cond_c
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 933
    .local v0, "runLimit":I
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 934
    .local v1, "runIndex":I
    :goto_10
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v1, 0x1

    .line 935
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-$$Nest$mattributeValuesMatch(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 936
    add-int/lit8 v1, v1, 0x1

    .line 937
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    goto :goto_35

    :cond_33
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    :goto_35
    move v0, v2

    goto :goto_10

    .line 939
    :cond_37
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v0, v2, :cond_3d

    .line 940
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 942
    :cond_3d
    return v0

    .line 930
    .end local v0    # "runLimit":I
    .end local v1    # "runIndex":I
    :cond_3e
    :goto_3e
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public whitelist test-api getRunStart()I
    .registers 2

    .line 865
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist test-api getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .registers 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .line 869
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_36

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_36

    .line 872
    :cond_c
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    .local v0, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 874
    .local v1, "runStart":I
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 875
    .local v2, "runIndex":I
    :goto_14
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v3, :cond_2f

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v2, -0x1

    .line 876
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-$$Nest$mgetAttribute(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/text/AttributedString;->-$$Nest$smvaluesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 877
    add-int/lit8 v2, v2, -0x1

    .line 878
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v3, v2

    goto :goto_14

    .line 880
    :cond_2f
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_35

    .line 881
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 883
    :cond_35
    return v1

    .line 870
    .end local v0    # "value":Ljava/lang/Object;
    .end local v1    # "runStart":I
    .end local v2    # "runIndex":I
    :cond_36
    :goto_36
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist test-api getRunStart(Ljava/util/Set;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 888
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_30

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_30

    .line 891
    :cond_c
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 892
    .local v0, "runStart":I
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 893
    .local v1, "runIndex":I
    :goto_10
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v2, :cond_29

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v1, -0x1

    .line 894
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-$$Nest$mattributeValuesMatch(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 895
    add-int/lit8 v1, v1, -0x1

    .line 896
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v0, v2, v1

    goto :goto_10

    .line 898
    :cond_29
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v0, v2, :cond_2f

    .line 899
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 901
    :cond_2f
    return v0

    .line 889
    .end local v0    # "runStart":I
    .end local v1    # "runIndex":I
    :cond_30
    :goto_30
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 791
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api last()C
    .registers 3

    .line 811
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v0, v1, :cond_d

    .line 812
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 814
    :cond_d
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 3

    .line 827
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v1, :cond_f

    .line 828
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 831
    :cond_f
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 3

    .line 836
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v1, :cond_f

    .line 837
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 840
    :cond_f
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 4
    .param p1, "position"    # I

    .line 845
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-gt p1, v0, :cond_d

    .line 847
    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 846
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
