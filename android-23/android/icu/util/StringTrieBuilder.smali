.class public abstract Landroid/icu/util/StringTrieBuilder;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/StringTrieBuilder$Option;,
        Landroid/icu/util/StringTrieBuilder$Node;,
        Landroid/icu/util/StringTrieBuilder$ValueNode;,
        Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;,
        Landroid/icu/util/StringTrieBuilder$LinearMatchNode;,
        Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;,
        Landroid/icu/util/StringTrieBuilder$BranchNode;,
        Landroid/icu/util/StringTrieBuilder$ListBranchNode;,
        Landroid/icu/util/StringTrieBuilder$SplitBranchNode;,
        Landroid/icu/util/StringTrieBuilder$BranchHeadNode;,
        Landroid/icu/util/StringTrieBuilder$State;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_util_StringTrieBuilder$StateSwitchesValues:[I

.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

.field private nodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/icu/util/StringTrieBuilder$Node;

.field private state:Landroid/icu/util/StringTrieBuilder$State;

.field protected strings:Ljava/lang/StringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid_icu_util_StringTrieBuilder$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/StringTrieBuilder;->-android_icu_util_StringTrieBuilder$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/StringTrieBuilder;->-android_icu_util_StringTrieBuilder$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/StringTrieBuilder$State;->values()[Landroid/icu/util/StringTrieBuilder$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    #@22
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    #@2b
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/icu/util/StringTrieBuilder;->-android_icu_util_StringTrieBuilder$StateSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 1
    .param p1, "newNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder;->registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "sValue"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/util/StringTrieBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    #@b
    .line 23
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 877
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@5
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@7
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@e
    .line 889
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@15
    .line 890
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@17
    invoke-direct {v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@1c
    .line 52
    return-void
.end method

.method private createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "sValue"    # I

    #@0
    .prologue
    .line 808
    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder;->registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@3
    move-result-object v0

    #@4
    .line 809
    .local v0, "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v3

    #@8
    if-ge p2, v3, :cond_0

    #@a
    .line 810
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v2

    #@10
    .line 811
    .local v2, "offset":I
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@15
    move-result v4

    #@16
    invoke-virtual {v3, p1, p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@19
    .line 812
    new-instance v1, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    #@1b
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@1d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@20
    move-result v4

    #@21
    sub-int/2addr v4, p2

    #@22
    invoke-direct {v1, v3, v2, v4, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    #@25
    .end local v0    # "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    .local v1, "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    move-object v0, v1

    #@26
    .line 814
    .end local v1    # "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    .end local v2    # "offset":I
    .restart local v0    # "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    :cond_0
    return-object v0
.end method

.method private final registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    .line 165
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@2
    invoke-static {v2, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->-wrap0(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V

    #@5
    .line 166
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@7
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@9
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Landroid/icu/util/StringTrieBuilder$Node;

    #@f
    .line 167
    .local v1, "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v1, :cond_0

    #@11
    .line 168
    check-cast v1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@13
    .end local v1    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    return-object v1

    #@14
    .line 170
    .restart local v1    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    :cond_0
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@16
    invoke-direct {v0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>(I)V

    #@19
    .line 173
    .local v0, "newNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    .end local v1    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    check-cast v1, Landroid/icu/util/StringTrieBuilder$Node;

    #@21
    .line 174
    .restart local v1    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    sget-boolean v2, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    #@23
    if-nez v2, :cond_2

    #@25
    if-nez v1, :cond_1

    #@27
    const/4 v2, 0x1

    #@28
    :goto_0
    if-nez v2, :cond_2

    #@2a
    new-instance v2, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v2

    #@30
    :cond_1
    const/4 v2, 0x0

    #@31
    goto :goto_0

    #@32
    .line 175
    :cond_2
    return-object v0
.end method

.method private final registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 3
    .param p1, "newNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@2
    sget-object v2, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 141
    return-object p1

    #@7
    .line 144
    :cond_0
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    #@f
    .line 145
    .local v0, "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v0, :cond_1

    #@11
    .line 146
    return-object v0

    #@12
    .line 150
    :cond_1
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@14
    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .end local v0    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    #@1a
    .line 151
    .restart local v0    # "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    sget-boolean v1, Landroid/icu/util/StringTrieBuilder;->-assertionsDisabled:Z

    #@1c
    if-nez v1, :cond_3

    #@1e
    if-nez v0, :cond_2

    #@20
    const/4 v1, 0x1

    #@21
    :goto_0
    if-nez v1, :cond_3

    #@23
    new-instance v1, Ljava/lang/AssertionError;

    #@25
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@28
    throw v1

    #@29
    :cond_2
    const/4 v1, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 152
    :cond_3
    return-object p1
.end method


# virtual methods
.method protected addImpl(Ljava/lang/CharSequence;I)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 60
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@3
    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Cannot add (string, value) pairs after build()."

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 64
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v0

    #@14
    const v1, 0xffff

    #@17
    if-le v0, v1, :cond_1

    #@19
    .line 66
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    const-string/jumbo v1, "The maximum string length is 0xffff."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 68
    :cond_1
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@24
    if-nez v0, :cond_2

    #@26
    .line 69
    invoke-direct {p0, p1, v2, p2}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@2c
    .line 59
    :goto_0
    return-void

    #@2d
    .line 71
    :cond_2
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@2f
    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@35
    goto :goto_0
.end method

.method protected final buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 2
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 81
    invoke-static {}, Landroid/icu/util/StringTrieBuilder;->-getandroid_icu_util_StringTrieBuilder$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@6
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 114
    :goto_0
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@11
    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@17
    .line 115
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@19
    const/4 v1, -0x1

    #@1a
    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    #@1d
    .line 116
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@1f
    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    #@22
    .line 117
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    #@24
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@26
    .line 80
    return-void

    #@27
    .line 83
    :pswitch_0
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 84
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2d
    const-string/jumbo v1, "No (string, value) pairs were added."

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 86
    :cond_0
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    #@36
    if-ne p1, v0, :cond_1

    #@38
    .line 87
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    #@3a
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@3c
    goto :goto_0

    #@3d
    .line 98
    :cond_1
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    #@3f
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@41
    goto :goto_0

    #@42
    .line 104
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@44
    const-string/jumbo v1, "Builder failed and must be clear()ed."

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 106
    :pswitch_2
    return-void

    #@4c
    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected clearImpl()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 127
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@b
    .line 128
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    #@e
    .line 129
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    #@10
    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    #@12
    .line 125
    return-void
.end method

.method protected abstract getMaxBranchLinearSubNodeLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMaxLinearMatchLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getMinLinearMatch()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract matchNodesCanHaveValues()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract write(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeDeltaTo(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndFinal(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract writeValueAndType(ZII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
