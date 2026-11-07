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
        "Ljava/util/AbstractMap<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field greylist-max-o beginIndex:I

.field greylist-max-o endIndex:I

.field greylist-max-o runIndex:I

.field final synthetic blacklist this$0:Ljava/text/AttributedString;


# direct methods
.method constructor blacklist <init>(Ljava/text/AttributedString;III)V
    .registers 5
    .param p2, "runIndex"    # I
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

    .line 1052
    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1053
    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    .line 1054
    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    .line 1055
    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    .line 1056
    return-void
.end method


# virtual methods
.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1060
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    monitor-enter v1

    .line 1061
    :try_start_8
    iget-object v2, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1062
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_50

    .line 1063
    iget-object v4, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v5, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 1064
    .local v4, "key":Ljava/text/AttributedCharacterIterator$Attribute;
    iget-object v5, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget v6, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1065
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_45

    .line 1066
    iget-object v6, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget v7, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v9, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v6, v4, v7, v8, v9}, Ljava/text/AttributedString;->-$$Nest$mgetAttributeCheckRange(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1068
    if-nez v5, :cond_45

    .line 1069
    goto :goto_4d

    .line 1073
    :cond_45
    new-instance v6, Ljava/text/AttributeEntry;

    invoke-direct {v6, v4, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1074
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v4    # "key":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;>;"
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1076
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_50
    monitor-exit v1

    .line 1077
    return-object v0

    .line 1076
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_52

    throw v2
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .line 1081
    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    move-object v1, p1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/text/AttributedString;->-$$Nest$mgetAttributeCheckRange(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
