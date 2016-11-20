.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# static fields
.field private static final STATE_REQUEST_FOCUS:I = 0x3

.field private static final STATE_SET_SELECTION:I = 0x1

.field private static final STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private mAction:I

.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    #@0
    .prologue
    .line 1110
    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    #@3
    return-void
.end method


# virtual methods
.method onLayoutComplete()V
    .locals 2

    #@0
    .prologue
    .line 1153
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1154
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@8
    .line 1152
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1131
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@2
    const/4 v3, 0x1

    #@3
    if-ne v2, v3, :cond_1

    #@5
    .line 1132
    iget-object v2, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    #@7
    iget v3, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@9
    iget v4, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    #@b
    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    #@e
    .line 1133
    const/4 v2, 0x2

    #@f
    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@11
    .line 1130
    :cond_0
    :goto_0
    return-void

    #@12
    .line 1134
    :cond_1
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 1135
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@19
    iget-object v3, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    #@1b
    iget v3, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    #@1d
    sub-int v1, v2, v3

    #@1f
    .line 1136
    .local v1, "childIndex":I
    iget-object v2, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    #@21
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@24
    move-result-object v0

    #@25
    .line 1137
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    #@27
    .line 1138
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@2a
    .line 1140
    :cond_2
    const/4 v2, -0x1

    #@2b
    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@2d
    goto :goto_0
.end method

.method setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1145
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@7
    if-eq p1, v0, :cond_1

    #@9
    .line 1146
    :cond_0
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 1148
    :cond_1
    const/4 v0, 0x3

    #@c
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@e
    .line 1149
    return-object p0
.end method

.method setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 1124
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@2
    .line 1125
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    #@4
    .line 1126
    const/4 v0, 0x1

    #@5
    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    #@7
    .line 1127
    return-object p0
.end method
