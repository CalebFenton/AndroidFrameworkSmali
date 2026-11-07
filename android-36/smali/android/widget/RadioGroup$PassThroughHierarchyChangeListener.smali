.class Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private greylist-max-o mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic blacklist this$0:Landroid/widget/RadioGroup;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmOnHierarchyChangeListener(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/RadioGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 396
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public whitelist onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 405
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_22

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_22

    .line 406
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 408
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 409
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 410
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 412
    :cond_16
    move-object v1, p2

    check-cast v1, Landroid/widget/RadioButton;

    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v2}, Landroid/widget/RadioGroup;->-$$Nest$fgetmChildOnCheckedChangeListener(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 416
    .end local v0    # "id":I
    :cond_22
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2b

    .line 417
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 419
    :cond_2b
    return-void
.end method

.method public whitelist onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 426
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_f

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    .line 427
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 430
    :cond_f
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_18

    .line 431
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 433
    :cond_18
    return-void
.end method
