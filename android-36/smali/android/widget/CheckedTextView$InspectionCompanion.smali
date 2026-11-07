.class public final Landroid/widget/CheckedTextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "CheckedTextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/CheckedTextView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCheckMarkId:I

.field private blacklist mCheckMarkTintBlendModeId:I

.field private blacklist mCheckMarkTintId:I

.field private blacklist mCheckMarkTintModeId:I

.field private blacklist mCheckedId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 48
    const-string v0, "checkMark"

    const v1, 0x1010108

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkId:I

    .line 49
    const-string v0, "checkMarkTint"

    const v1, 0x10104a7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintId:I

    .line 50
    const-string v0, "checkMarkTintBlendMode"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintBlendModeId:I

    .line 51
    const-string v0, "checkMarkTintMode"

    const v1, 0x10104a8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintModeId:I

    .line 52
    const-string v0, "checked"

    const v1, 0x1010106

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckedId:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    .line 54
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/CheckedTextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/CheckedTextView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 58
    iget-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    .line 61
    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 62
    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 63
    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 64
    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintModeId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 65
    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckedId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

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
    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckedTextView$InspectionCompanion;->readProperties(Landroid/widget/CheckedTextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
