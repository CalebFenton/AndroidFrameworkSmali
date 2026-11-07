.class public final Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewGroup$LayoutParams$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/view/ViewGroup$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mLayout_heightId:I

.field private blacklist mLayout_widthId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 10
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 36
    .local v0, "layout_heightEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, -0x2

    const-string/jumbo v2, "wrap_content"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    const/4 v3, -0x1

    const-string v4, "match_parent"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v6, "layout_height"

    const v7, 0x10100f5

    invoke-interface {p1, v6, v7, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mLayout_heightId:I

    .line 39
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 40
    .local v5, "layout_widthEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v5}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v2, "layout_width"

    const v3, 0x10100f4

    invoke-interface {p1, v2, v3, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mLayout_widthId:I

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    .line 44
    return-void
.end method

.method public blacklist readProperties(Landroid/view/ViewGroup$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 48
    iget-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_13

    .line 51
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mLayout_heightId:I

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 52
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->mLayout_widthId:I

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 53
    return-void

    .line 49
    :cond_13
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 17
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams$InspectionCompanion;->readProperties(Landroid/view/ViewGroup$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
