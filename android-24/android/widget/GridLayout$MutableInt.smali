.class final Landroid/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2237
    invoke-virtual {p0}, Landroid/widget/GridLayout$MutableInt;->reset()V

    #@6
    .line 2236
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2241
    iput p1, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    #@5
    .line 2240
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 2245
    const/high16 v0, -0x80000000

    #@2
    iput v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    #@4
    .line 2244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2250
    iget v0, p0, Landroid/widget/GridLayout$MutableInt;->value:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
