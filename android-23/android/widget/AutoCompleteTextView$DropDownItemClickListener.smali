.class Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView;

    #@0
    .prologue
    .line 1200
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AutoCompleteTextView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 1202
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    #@2
    invoke-static {v0, p2, p3, p4, p5}, Landroid/widget/AutoCompleteTextView;->-wrap1(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V

    #@5
    .line 1201
    return-void
.end method
