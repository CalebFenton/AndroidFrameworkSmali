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


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    #@0
    .prologue
    .line 1108
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
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1119
    iget-object v0, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    #@2
    iget v1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@4
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@9
    .line 1118
    return-void
.end method

.method public setup(II)Landroid/widget/ListView$FocusSelector;
    .locals 0
    .param p1, "position"    # I
    .param p2, "top"    # I

    #@0
    .prologue
    .line 1113
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    #@2
    .line 1114
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    #@4
    .line 1115
    return-object p0
.end method
