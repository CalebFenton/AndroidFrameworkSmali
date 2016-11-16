.class final Ljava/text/AttributedString$AttributeMap;
.super Ljava/util/AbstractMap;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field beginIndex:I

.field endIndex:I

.field runIndex:I

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;III)V
    .locals 0
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "runIndex"    # I
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    #@0
    .prologue
    .line 1049
    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 1050
    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@7
    .line 1051
    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    #@9
    .line 1052
    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    #@b
    .line 1049
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 11

    #@0
    .prologue
    .line 1056
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1057
    .local v3, "set":Ljava/util/HashSet;
    iget-object v7, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@7
    monitor-enter v7

    #@8
    .line 1058
    :try_start_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@a
    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@c
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@e
    aget-object v6, v6, v8

    #@10
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@13
    move-result v4

    #@14
    .line 1059
    .local v4, "size":I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@17
    .line 1060
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@19
    iget-object v6, v6, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    #@1b
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@1d
    aget-object v6, v6, v8

    #@1f
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    #@25
    .line 1061
    .local v2, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@27
    iget-object v6, v6, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    #@29
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@2b
    aget-object v6, v6, v8

    #@2d
    invoke-virtual {v6, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    .line 1062
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/text/Annotation;

    #@33
    if-eqz v6, :cond_0

    #@35
    .line 1063
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@37
    .line 1064
    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@39
    iget v9, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    #@3b
    iget v10, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    #@3d
    .line 1063
    invoke-static {v6, v2, v8, v9, v10}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    .line 1065
    if-nez v5, :cond_0

    #@43
    .line 1059
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0

    #@46
    .line 1069
    :cond_0
    new-instance v0, Ljava/text/AttributeEntry;

    #@48
    invoke-direct {v0, v2, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    #@4b
    .line 1070
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 1057
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v4    # "size":I
    .end local v5    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    #@50
    monitor-exit v7

    #@51
    throw v6

    #@52
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_1
    monitor-exit v7

    #@53
    .line 1073
    return-object v3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1077
    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    #@2
    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    #@4
    .end local p1    # "key":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    #@6
    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    #@8
    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    #@a
    invoke-static {v0, p1, v1, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method
