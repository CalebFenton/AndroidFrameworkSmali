.class public final Landroid/widget/CompoundButton$InspectionCompanion;
.super Ljava/lang/Object;
.source "CompoundButton$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mButtonBlendModeId:I

.field private blacklist mButtonId:I

.field private blacklist mButtonTintId:I

.field private blacklist mButtonTintModeId:I

.field private blacklist mCheckedId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 48
    const-string v0, "button"

    const v1, 0x1010107

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonId:I

    .line 49
    const-string v0, "buttonBlendMode"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonBlendModeId:I

    .line 50
    const-string v0, "buttonTint"

    const v1, 0x101046f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonTintId:I

    .line 51
    const-string v0, "buttonTintMode"

    const v1, 0x1010470

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonTintModeId:I

    .line 52
    const-string v0, "checked"

    const v1, 0x1010106

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mCheckedId:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mPropertiesMapped:Z

    .line 54
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/CompoundButton;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/CompoundButton;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 58
    iget-boolean v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    .line 61
    iget v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonId:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 62
    iget v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 63
    iget v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonTintId:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 64
    iget v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mButtonTintModeId:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 65
    iget v0, p0, Landroid/widget/CompoundButton$InspectionCompanion;->mCheckedId:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 66
    return-void

    .line 59
    :cond_32
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
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2}, Landroid/widget/CompoundButton$InspectionCompanion;->readProperties(Landroid/widget/CompoundButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
