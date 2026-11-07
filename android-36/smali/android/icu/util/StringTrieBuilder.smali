.class public abstract Landroid/icu/util/StringTrieBuilder;
.super Ljava/lang/Object;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/StringTrieBuilder$State;,
        Landroid/icu/util/StringTrieBuilder$ValueNode;,
        Landroid/icu/util/StringTrieBuilder$Node;,
        Landroid/icu/util/StringTrieBuilder$Option;,
        Landroid/icu/util/StringTrieBuilder$LinearMatchNode;,
        Landroid/icu/util/StringTrieBuilder$BranchHeadNode;,
        Landroid/icu/util/StringTrieBuilder$SplitBranchNode;,
        Landroid/icu/util/StringTrieBuilder$ListBranchNode;,
        Landroid/icu/util/StringTrieBuilder$BranchNode;,
        Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;,
        Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

.field private greylist-max-o nodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o root:Landroid/icu/util/StringTrieBuilder$Node;

.field private greylist-max-o state:Landroid/icu/util/StringTrieBuilder$State;

.field protected greylist-max-o strings:Ljava/lang/StringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcreateSuffixNode(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterNode(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder;->registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    .line 890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    .line 891
    new-instance v0, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    .line 53
    return-void
.end method

.method private greylist-max-o createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "sValue"    # I

    .line 809
    invoke-direct {p0, p3}, Landroid/icu/util/StringTrieBuilder;->registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    .line 810
    .local v0, "node":Landroid/icu/util/StringTrieBuilder$ValueNode;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_26

    .line 811
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 812
    .local v1, "offset":I
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 813
    new-instance v2, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object v0, v2

    .line 815
    .end local v1    # "offset":I
    :cond_26
    return-object v0
.end method

.method private final greylist-max-o registerFinalValue(I)Landroid/icu/util/StringTrieBuilder$ValueNode;
    .registers 5
    .param p1, "value"    # I

    .line 166
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-static {v0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->-$$Nest$msetFinalValue(Landroid/icu/util/StringTrieBuilder$ValueNode;I)V

    .line 167
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->lookupFinalValueNode:Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    .line 168
    .local v0, "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v0, :cond_15

    .line 169
    move-object v1, v0

    check-cast v1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    return-object v1

    .line 171
    :cond_15
    new-instance v1, Landroid/icu/util/StringTrieBuilder$ValueNode;

    invoke-direct {v1, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>(I)V

    .line 174
    .local v1, "newNode":Landroid/icu/util/StringTrieBuilder$ValueNode;
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    .line 175
    nop

    .line 176
    return-object v1
.end method

.method private final greylist-max-o registerNode(Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;
    .registers 4
    .param p1, "newNode"    # Landroid/icu/util/StringTrieBuilder$Node;

    .line 141
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    if-ne v0, v1, :cond_7

    .line 142
    return-object p1

    .line 145
    :cond_7
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    .line 146
    .local v0, "oldNode":Landroid/icu/util/StringTrieBuilder$Node;
    if-eqz v0, :cond_12

    .line 147
    return-object v0

    .line 151
    :cond_12
    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/util/StringTrieBuilder$Node;

    .line 152
    nop

    .line 153
    return-object p1
.end method


# virtual methods
.method protected greylist-max-o addImpl(Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    sget-object v1, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    if-ne v0, v1, :cond_2c

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_24

    .line 69
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 70
    invoke-direct {p0, p1, v1, p2}, Landroid/icu/util/StringTrieBuilder;->createSuffixNode(Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_23

    .line 72
    :cond_1b
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    .line 74
    :goto_23
    return-void

    .line 67
    :cond_24
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The maximum string length is 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add (string, value) pairs after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final greylist-max-o buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V
    .registers 4
    .param p1, "buildOption"    # Landroid/icu/util/StringTrieBuilder$Option;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    goto :goto_2d

    .line 107
    :pswitch_a
    return-void

    .line 105
    :pswitch_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder failed and must be clear()ed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_13
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    if-eqz v0, :cond_25

    .line 87
    sget-object v0, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    if-ne p1, v0, :cond_20

    .line 88
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_FAST:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    goto :goto_2d

    .line 99
    :cond_20
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILDING_SMALL:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 101
    goto :goto_2d

    .line 85
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No (string, value) pairs were added."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :goto_2d
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    .line 116
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    .line 117
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p0}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    .line 118
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->BUILT:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 119
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected greylist-max-o clearImpl()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder;->nodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->root:Landroid/icu/util/StringTrieBuilder$Node;

    .line 130
    sget-object v0, Landroid/icu/util/StringTrieBuilder$State;->ADDING:Landroid/icu/util/StringTrieBuilder$State;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder;->state:Landroid/icu/util/StringTrieBuilder$State;

    .line 131
    return-void
.end method

.method protected abstract greylist-max-o getMaxBranchLinearSubNodeLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o getMaxLinearMatchLength()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o getMinLinearMatch()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o matchNodesCanHaveValues()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o write(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o write(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o writeDeltaTo(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o writeValueAndFinal(IZ)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract greylist-max-o writeValueAndType(ZII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
