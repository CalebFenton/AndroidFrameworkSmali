.class public final Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "LinearLayout$LayoutParams$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/LinearLayout$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mLayout_gravityId:I

.field private blacklist mLayout_weightId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 33
    const-string v0, "layout_gravity"

    const v1, 0x10100b3

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mLayout_gravityId:I

    .line 34
    const-string v0, "layout_weight"

    const v1, 0x1010181

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mLayout_weightId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    .line 36
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/LinearLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/LinearLayout$LayoutParams;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 40
    iget-boolean v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_13

    .line 43
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mLayout_gravityId:I

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    .line 44
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->mLayout_weightId:I

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 45
    return-void

    .line 41
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

    .line 15
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams$InspectionCompanion;->readProperties(Landroid/widget/LinearLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
