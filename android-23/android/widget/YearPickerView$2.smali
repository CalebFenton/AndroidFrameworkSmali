.class Landroid/widget/YearPickerView$2;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;->setYear(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Landroid/widget/YearPickerView;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/YearPickerView;
    .param p2, "val$year"    # I

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Landroid/widget/YearPickerView$2;->this$0:Landroid/widget/YearPickerView;

    #@2
    iput p2, p0, Landroid/widget/YearPickerView$2;->val$year:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Landroid/widget/YearPickerView$2;->this$0:Landroid/widget/YearPickerView;

    #@2
    invoke-static {v1}, Landroid/widget/YearPickerView;->-get0(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Landroid/widget/YearPickerView$2;->val$year:I

    #@8
    invoke-virtual {v1, v2}, Landroid/widget/YearPickerView$YearAdapter;->getPositionForYear(I)I

    #@b
    move-result v0

    #@c
    .line 98
    .local v0, "position":I
    if-ltz v0, :cond_0

    #@e
    iget-object v1, p0, Landroid/widget/YearPickerView$2;->this$0:Landroid/widget/YearPickerView;

    #@10
    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getCount()I

    #@13
    move-result v1

    #@14
    if-ge v0, v1, :cond_0

    #@16
    .line 99
    iget-object v1, p0, Landroid/widget/YearPickerView$2;->this$0:Landroid/widget/YearPickerView;

    #@18
    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView;->setSelectionCentered(I)V

    #@1b
    .line 96
    :cond_0
    return-void
.end method
