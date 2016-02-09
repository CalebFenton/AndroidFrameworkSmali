.class final Ljava/util/TreeMap$BoundedMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$BoundedMap$BoundedIterator;,
        Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;,
        Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static synthetic -java_util_TreeMap$BoundSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$java$util$TreeMap$Bound:[I

.field private final transient ascending:Z

.field private transient entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedEntrySet;"
        }
    .end annotation
.end field

.field private final transient from:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient fromBound:Ljava/util/TreeMap$Bound;

.field private transient keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.BoundedMap.BoundedKeySet;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;

.field private final transient to:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient toBound:Ljava/util/TreeMap$Bound;


# direct methods
.method static synthetic -get0(Ljava/util/TreeMap$BoundedMap;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@2
    return-object v0
.end method

.method private static synthetic -getjava_util_TreeMap$BoundSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/TreeMap$BoundedMap;->-java_util_TreeMap$BoundSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/TreeMap$BoundedMap;->-java_util_TreeMap$BoundSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/util/TreeMap$Bound;->values()[Ljava/util/TreeMap$Bound;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@10
    invoke-virtual {v1}, Ljava/util/TreeMap$Bound;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@19
    invoke-virtual {v1}, Ljava/util/TreeMap$Bound;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@22
    invoke-virtual {v1}, Ljava/util/TreeMap$Bound;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Ljava/util/TreeMap$BoundedMap;->-java_util_TreeMap$BoundSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;
    .locals 1
    .param p1, "first"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V
    .locals 3
    .param p2, "ascending"    # Z
    .param p4, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p6, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1103
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p3, "from":Ljava/lang/Object;, "TK;"
    .local p5, "to":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@5
    .line 1108
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@7
    if-eq p4, v0, :cond_0

    #@9
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@b
    if-eq p6, v0, :cond_0

    #@d
    .line 1109
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@f
    invoke-interface {v0, p3, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_1

    #@15
    .line 1110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " > "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 1112
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@35
    if-eq p4, v0, :cond_2

    #@37
    .line 1113
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@39
    invoke-interface {v0, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3c
    .line 1118
    :cond_1
    :goto_0
    iput-boolean p2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@3e
    .line 1119
    iput-object p3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@40
    .line 1120
    iput-object p4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@42
    .line 1121
    iput-object p5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@44
    .line 1122
    iput-object p6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@46
    .line 1103
    return-void

    #@47
    .line 1114
    :cond_2
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@49
    if-eq p6, v0, :cond_1

    #@4b
    .line 1115
    iget-object v0, p1, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@4d
    invoke-interface {v0, p5, p5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@50
    goto :goto_0
.end method

.method private bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;
    .locals 2
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1192
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/util/TreeMap$Node;->getKey()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    invoke-direct {p0, v1, p2, p3}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .end local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_0
    return-object p1

    #@e
    .restart local p1    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_0
    move-object p1, v0

    #@f
    goto :goto_0
.end method

.method private endpoint(Z)Ljava/util/TreeMap$Node;
    .locals 4
    .param p1, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@2
    if-ne v1, p1, :cond_1

    #@4
    .line 1245
    invoke-static {}, Ljava/util/TreeMap$BoundedMap;->-getjava_util_TreeMap$BoundSwitchesValues()[I

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@a
    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    #@d
    move-result v2

    #@e
    aget v1, v1, v2

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 1256
    new-instance v1, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v1

    #@19
    .line 1247
    :pswitch_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@1b
    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@1d
    if-nez v1, :cond_0

    #@1f
    const/4 v0, 0x0

    #@20
    .line 1258
    :goto_0
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@22
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@24
    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 1247
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2b
    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@2d
    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    #@30
    move-result-object v0

    #@31
    .local v0, "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    #@32
    .line 1250
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_1
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@34
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@36
    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@38
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@3b
    move-result-object v0

    #@3c
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    #@3d
    .line 1253
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@3f
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@41
    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@43
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@46
    move-result-object v0

    #@47
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_0

    #@48
    .line 1260
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :cond_1
    invoke-static {}, Ljava/util/TreeMap$BoundedMap;->-getjava_util_TreeMap$BoundSwitchesValues()[I

    #@4b
    move-result-object v1

    #@4c
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@4e
    invoke-virtual {v2}, Ljava/util/TreeMap$Bound;->ordinal()I

    #@51
    move-result v2

    #@52
    aget v1, v1, v2

    #@54
    packed-switch v1, :pswitch_data_1

    #@57
    .line 1271
    new-instance v1, Ljava/lang/AssertionError;

    #@59
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@5c
    throw v1

    #@5d
    .line 1262
    :pswitch_3
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@5f
    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@61
    if-nez v1, :cond_2

    #@63
    const/4 v0, 0x0

    #@64
    .line 1273
    :goto_1
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@66
    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@68
    invoke-direct {p0, v0, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    #@6b
    move-result-object v1

    #@6c
    return-object v1

    #@6d
    .line 1262
    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@6f
    iget-object v1, v1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    #@71
    invoke-virtual {v1}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    #@74
    move-result-object v0

    #@75
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_1

    #@76
    .line 1265
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_4
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@78
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@7a
    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@7c
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@7f
    move-result-object v0

    #@80
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_1

    #@81
    .line 1268
    .end local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    :pswitch_5
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@83
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@85
    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@87
    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@8a
    move-result-object v0

    #@8b
    .restart local v0    # "node":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    goto :goto_1

    #@8c
    .line 1245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@96
    .line 1260
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;
    .locals 5
    .param p2, "relation"    # Ljava/util/TreeMap$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Relation;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1297
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-boolean v3, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@2
    invoke-virtual {p2, v3}, Ljava/util/TreeMap$Relation;->forOrder(Z)Ljava/util/TreeMap$Relation;

    #@5
    move-result-object p2

    #@6
    .line 1298
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@8
    .line 1299
    .local v1, "fromBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@a
    .line 1301
    .local v2, "toBoundForCheck":Ljava/util/TreeMap$Bound;
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@c
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@e
    if-eq v3, v4, :cond_2

    #@10
    sget-object v3, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@12
    if-eq p2, v3, :cond_0

    #@14
    sget-object v3, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@16
    if-ne p2, v3, :cond_2

    #@18
    .line 1302
    :cond_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@1a
    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@1c
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@1e
    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    .line 1303
    .local v0, "comparison":I
    if-gtz v0, :cond_1

    #@24
    .line 1304
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@26
    .line 1305
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@28
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@2a
    if-ne v3, v4, :cond_6

    #@2c
    .line 1306
    sget-object p2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@2e
    .line 1311
    :cond_1
    :goto_0
    sget-object v2, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@30
    .line 1314
    .end local v0    # "comparison":I
    :cond_2
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@32
    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@34
    if-eq v3, v4, :cond_5

    #@36
    sget-object v3, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@38
    if-eq p2, v3, :cond_3

    #@3a
    sget-object v3, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@3c
    if-ne p2, v3, :cond_5

    #@3e
    .line 1315
    :cond_3
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@40
    iget-object v3, v3, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@42
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@44
    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@47
    move-result v0

    #@48
    .line 1316
    .restart local v0    # "comparison":I
    if-ltz v0, :cond_4

    #@4a
    .line 1317
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@4c
    .line 1318
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@4e
    sget-object v4, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@50
    if-ne v3, v4, :cond_7

    #@52
    .line 1319
    sget-object p2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@54
    .line 1324
    :cond_4
    :goto_1
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@56
    .line 1327
    .end local v0    # "comparison":I
    :cond_5
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@58
    invoke-virtual {v3, p1, p2}, Ljava/util/TreeMap;->find(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/TreeMap$Node;

    #@5b
    move-result-object v3

    #@5c
    invoke-direct {p0, v3, v1, v2}, Ljava/util/TreeMap$BoundedMap;->bound(Ljava/util/TreeMap$Node;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/util/TreeMap$Node;

    #@5f
    move-result-object v3

    #@60
    return-object v3

    #@61
    .line 1307
    .restart local v0    # "comparison":I
    :cond_6
    if-gez v0, :cond_1

    #@63
    .line 1308
    sget-object p2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@65
    goto :goto_0

    #@66
    .line 1320
    :cond_7
    if-lez v0, :cond_4

    #@68
    .line 1321
    sget-object p2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@6a
    goto :goto_1
.end method

.method private isInBounds(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1157
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@4
    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z
    .locals 3
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "Ljava/util/TreeMap$Bound;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 1165
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 1166
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@7
    iget-object v0, v0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@9
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@b
    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    if-gez v0, :cond_1

    #@11
    .line 1167
    return v2

    #@12
    .line 1169
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@14
    if-ne p2, v0, :cond_1

    #@16
    .line 1170
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@18
    iget-object v0, v0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@1a
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@1c
    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1f
    move-result v0

    #@20
    if-gtz v0, :cond_1

    #@22
    .line 1171
    return v2

    #@23
    .line 1175
    :cond_1
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@25
    if-ne p3, v0, :cond_2

    #@27
    .line 1176
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@29
    iget-object v0, v0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@2b
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@2d
    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    if-lez v0, :cond_3

    #@33
    .line 1177
    return v2

    #@34
    .line 1179
    :cond_2
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@36
    if-ne p3, v0, :cond_3

    #@38
    .line 1180
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@3a
    iget-object v0, v0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    #@3c
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@3e
    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@41
    move-result v0

    #@42
    if-ltz v0, :cond_3

    #@44
    .line 1181
    return v2

    #@45
    .line 1185
    :cond_3
    const/4 v0, 0x1

    #@46
    return v0
.end method

.method private outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p3, "toBound"    # Ljava/util/TreeMap$Bound;

    #@0
    .prologue
    .line 1471
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, " not in range "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 1472
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@14
    invoke-virtual {p2, v2}, Ljava/util/TreeMap$Bound;->leftCap(Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 1472
    const-string/jumbo v2, ".."

    #@1f
    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1472
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@25
    invoke-virtual {p3, v2}, Ljava/util/TreeMap$Bound;->rightCap(Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    return-object v0
.end method

.method private subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;
    .locals 11
    .param p2, "fromBound"    # Ljava/util/TreeMap$Bound;
    .param p4, "toBound"    # Ljava/util/TreeMap$Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/TreeMap$Bound;",
            "TK;",
            "Ljava/util/TreeMap$Bound;",
            ")",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1433
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1434
    move-object v9, p1

    #@5
    .line 1435
    .local v9, "fromTmp":Ljava/lang/Object;, "TK;"
    move-object v7, p2

    #@6
    .line 1436
    .local v7, "fromBoundTmp":Ljava/util/TreeMap$Bound;
    move-object p1, p3

    #@7
    .line 1437
    move-object p2, p4

    #@8
    .line 1438
    move-object p3, v9

    #@9
    .line 1439
    move-object p4, v7

    #@a
    .line 1447
    .end local v7    # "fromBoundTmp":Ljava/util/TreeMap$Bound;
    .end local v9    # "fromTmp":Ljava/lang/Object;, "TK;"
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@c
    if-ne p2, v0, :cond_3

    #@e
    .line 1448
    iget-object p1, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@10
    .line 1449
    iget-object p2, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@12
    .line 1457
    :cond_1
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@14
    if-ne p4, v0, :cond_5

    #@16
    .line 1458
    iget-object p3, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@18
    .line 1459
    iget-object p4, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@1a
    .line 1467
    :cond_2
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@1c
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@1e
    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@20
    move-object v3, p1

    #@21
    move-object v4, p2

    #@22
    move-object v5, p3

    #@23
    move-object v6, p4

    #@24
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@27
    return-object v0

    #@28
    .line 1451
    :cond_3
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@2a
    if-ne p2, v0, :cond_4

    #@2c
    sget-object v8, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@2e
    .line 1452
    .local v8, "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@30
    invoke-direct {p0, p1, v8, v0}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_1

    #@36
    .line 1453
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@38
    invoke-direct {p0, p3, v8, v0}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    #@3b
    move-result-object v0

    #@3c
    throw v0

    #@3d
    .line 1451
    .end local v8    # "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_4
    iget-object v8, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@3f
    .restart local v8    # "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@40
    .line 1461
    .end local v8    # "fromBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_5
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@42
    if-ne p4, v0, :cond_6

    #@44
    sget-object v10, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@46
    .line 1462
    .local v10, "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :goto_1
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@48
    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_2

    #@4e
    .line 1463
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@50
    invoke-direct {p0, p3, v0, v10}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    #@53
    move-result-object v0

    #@54
    throw v0

    #@55
    .line 1461
    .end local v10    # "toBoundToCheck":Ljava/util/TreeMap$Bound;
    :cond_6
    iget-object v10, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@57
    .restart local v10    # "toBoundToCheck":Ljava/util/TreeMap$Bound;
    goto :goto_1
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1349
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    sget-object v1, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1353
    sget-object v2, Ljava/util/TreeMap$Relation;->CEILING:Ljava/util/TreeMap$Relation;

    #@3
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1354
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1367
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    .line 1368
    .local v0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1369
    return-object v0

    #@b
    .line 1371
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1138
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1401
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@4
    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x0

    #@9
    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@b
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@d
    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@f
    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@11
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@14
    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    :cond_0
    const/4 v2, 0x1

    #@1a
    goto :goto_0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1397
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    #@2
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@4
    iget-boolean v2, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x0

    #@9
    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@b
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@d
    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@f
    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@11
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@14
    return-object v0

    #@15
    :cond_0
    const/4 v2, 0x1

    #@16
    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1383
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    #@2
    .line 1384
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    #@7
    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedEntrySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->entrySet:Ljava/util/TreeMap$BoundedMap$BoundedEntrySet;

    #@c
    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1200
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1212
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1213
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    .line 1214
    new-instance v1, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v1

    #@d
    .line 1216
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1340
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    sget-object v1, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1344
    sget-object v2, Ljava/util/TreeMap$Relation;->FLOOR:Ljava/util/TreeMap$Relation;

    #@3
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1345
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1134
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1420
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "toExclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@2
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, v2, v0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1415
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 1416
    .local v0, "toBound":Ljava/util/TreeMap$Bound;
    :goto_0
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, v2, v1, p1, v0}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1415
    .end local v0    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@e
    .restart local v0    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "toExclusive"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1419
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1358
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    sget-object v1, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1362
    sget-object v2, Ljava/util/TreeMap$Relation;->HIGHER:Ljava/util/TreeMap$Relation;

    #@3
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1363
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v0, 0x1

    #@1
    .line 1130
    invoke-direct {p0, v0}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1388
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1220
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 1232
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1233
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    #@7
    .line 1234
    new-instance v1, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v1

    #@d
    .line 1236
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1331
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@2
    sget-object v1, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@4
    invoke-direct {p0, p1, v1}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 1335
    sget-object v2, Ljava/util/TreeMap$Relation;->LOWER:Ljava/util/TreeMap$Relation;

    #@3
    invoke-direct {p0, p1, v2}, Ljava/util/TreeMap$BoundedMap;->findBounded(Ljava/lang/Object;Ljava/util/TreeMap$Relation;)Ljava/util/Map$Entry;

    #@6
    move-result-object v0

    #@7
    .line 1336
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1392
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    #@2
    .line 1393
    .local v0, "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    if-eqz v0, :cond_0

    #@4
    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :goto_0
    return-object v0

    #@5
    .restart local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    :cond_0
    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    #@7
    .end local v0    # "result":Ljava/util/TreeMap$BoundedMap$BoundedKeySet;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap.BoundedKeySet;"
    invoke-direct {v0, p0}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;-><init>(Ljava/util/TreeMap$BoundedMap;)V

    #@a
    iput-object v0, p0, Ljava/util/TreeMap$BoundedMap;->keySet:Ljava/util/TreeMap$BoundedMap$BoundedKeySet;

    #@c
    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1204
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1205
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@7
    .line 1206
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@9
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@c
    .line 1208
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@e
    invoke-static {v1, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1224
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1}, Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;

    #@4
    move-result-object v0

    #@5
    .line 1225
    .local v0, "result":Ljava/util/TreeMap$Node;, "Ljava/util/TreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    #@7
    .line 1226
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@9
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->removeInternal(Ljava/util/TreeMap$Node;)V

    #@c
    .line 1228
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@e
    invoke-static {v1, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1142
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1143
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@8
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@a
    invoke-direct {p0, p1, v0, v1}, Ljava/util/TreeMap$BoundedMap;->outOfBounds(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/util/TreeMap$Bound;)Ljava/lang/IllegalArgumentException;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    .line 1145
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->putInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 1149
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-direct {p0, p1}, Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 1126
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0}, Ljava/util/TreeMap$BoundedMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/util/TreeMap;->count(Ljava/util/Iterator;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1411
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    .local p2, "toExclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@2
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    invoke-direct {p0, p1, v0, p2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1405
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p3, "to":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 1406
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    if-eqz p4, :cond_1

    #@6
    sget-object v1, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@8
    .line 1407
    .local v1, "toBound":Ljava/util/TreeMap$Bound;
    :goto_1
    invoke-direct {p0, p1, v0, p3, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 1405
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    .end local v1    # "toBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@f
    .restart local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0

    #@10
    .line 1406
    :cond_1
    sget-object v1, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@12
    .restart local v1    # "toBound":Ljava/util/TreeMap$Bound;
    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromInclusive"    # Ljava/lang/Object;
    .param p2, "toExclusive"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1410
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1429
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "fromInclusive":Ljava/lang/Object;, "TK;"
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@2
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {p0, p1, v0, v2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1424
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    #@4
    .line 1425
    .local v0, "fromBound":Ljava/util/TreeMap$Bound;
    :goto_0
    sget-object v1, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {p0, p1, v0, v2, v1}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)Ljava/util/NavigableMap;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 1424
    .end local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    :cond_0
    sget-object v0, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    #@e
    .restart local v0    # "fromBound":Ljava/util/TreeMap$Bound;
    goto :goto_0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "fromInclusive"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1428
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    invoke-virtual {p0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1644
    .local p0, "this":Ljava/util/TreeMap$BoundedMap;, "Ljava/util/TreeMap<TK;TV;>.BoundedMap;"
    iget-boolean v0, p0, Ljava/util/TreeMap$BoundedMap;->ascending:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1645
    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    #@6
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@8
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@a
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@c
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@e
    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@10
    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@13
    .line 1644
    :goto_0
    return-object v0

    #@14
    .line 1646
    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    #@16
    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    #@18
    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;

    #@1a
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;

    #@1c
    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;

    #@1e
    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;

    #@20
    invoke-direct/range {v0 .. v5}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;Ljava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    #@23
    goto :goto_0
.end method
