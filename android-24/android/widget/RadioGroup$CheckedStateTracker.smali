.class Landroid/widget/RadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RadioGroup;

    #@0
    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$CheckedStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RadioGroup;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 340
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@3
    invoke-static {v1}, Landroid/widget/RadioGroup;->-get2(Landroid/widget/RadioGroup;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 341
    return-void

    #@a
    .line 344
    :cond_0
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-static {v1, v2}, Landroid/widget/RadioGroup;->-set0(Landroid/widget/RadioGroup;Z)Z

    #@10
    .line 345
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@12
    invoke-static {v1}, Landroid/widget/RadioGroup;->-get0(Landroid/widget/RadioGroup;)I

    #@15
    move-result v1

    #@16
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 346
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@1b
    iget-object v2, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@1d
    invoke-static {v2}, Landroid/widget/RadioGroup;->-get0(Landroid/widget/RadioGroup;)I

    #@20
    move-result v2

    #@21
    invoke-static {v1, v2, v3}, Landroid/widget/RadioGroup;->-wrap1(Landroid/widget/RadioGroup;IZ)V

    #@24
    .line 348
    :cond_1
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@26
    invoke-static {v1, v3}, Landroid/widget/RadioGroup;->-set0(Landroid/widget/RadioGroup;Z)Z

    #@29
    .line 350
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    #@2c
    move-result v0

    #@2d
    .line 351
    .local v0, "id":I
    iget-object v1, p0, Landroid/widget/RadioGroup$CheckedStateTracker;->this$0:Landroid/widget/RadioGroup;

    #@2f
    invoke-static {v1, v0}, Landroid/widget/RadioGroup;->-wrap0(Landroid/widget/RadioGroup;I)V

    #@32
    .line 338
    return-void
.end method
