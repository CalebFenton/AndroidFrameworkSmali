.class Landroid/widget/RadialTimePickerView$IntHolder;
.super Ljava/lang/Object;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntHolder"
.end annotation


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1364
    iput p1, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    #@5
    .line 1363
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 1372
    iget v0, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    #@2
    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1368
    iput p1, p0, Landroid/widget/RadialTimePickerView$IntHolder;->mValue:I

    #@2
    .line 1367
    return-void
.end method
