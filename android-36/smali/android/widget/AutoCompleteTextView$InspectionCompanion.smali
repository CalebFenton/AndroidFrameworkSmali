.class public final Landroid/widget/AutoCompleteTextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "AutoCompleteTextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AutoCompleteTextView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCompletionHintId:I

.field private blacklist mCompletionThresholdId:I

.field private blacklist mDropDownHeightId:I

.field private blacklist mDropDownHorizontalOffsetId:I

.field private blacklist mDropDownVerticalOffsetId:I

.field private blacklist mDropDownWidthId:I

.field private blacklist mPopupBackgroundId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 58
    const-string v0, "completionHint"

    const v1, 0x1010172

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionHintId:I

    .line 59
    const-string v0, "completionThreshold"

    const v1, 0x1010174

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionThresholdId:I

    .line 60
    const-string v0, "dropDownHeight"

    const v1, 0x1010283

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHeightId:I

    .line 61
    const-string v0, "dropDownHorizontalOffset"

    const v1, 0x10102ac

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    .line 62
    const-string v0, "dropDownVerticalOffset"

    const v1, 0x10102ad

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownVerticalOffsetId:I

    .line 63
    const-string v0, "dropDownWidth"

    const v1, 0x1010262

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownWidthId:I

    .line 64
    const-string v0, "popupBackground"

    const v1, 0x1010176

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPopupBackgroundId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    .line 66
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/AutoCompleteTextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 70
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_44

    .line 73
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionHintId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompletionHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 74
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionThresholdId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 75
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHeightId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 76
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 77
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownVerticalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 78
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownWidthId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 79
    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPopupBackgroundId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 80
    return-void

    .line 71
    :cond_44
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
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->readProperties(Landroid/widget/AutoCompleteTextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
