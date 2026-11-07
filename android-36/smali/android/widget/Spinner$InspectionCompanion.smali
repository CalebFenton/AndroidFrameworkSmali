.class public final Landroid/widget/Spinner$InspectionCompanion;
.super Ljava/lang/Object;
.source "Spinner$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/Spinner;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDropDownHorizontalOffsetId:I

.field private blacklist mDropDownVerticalOffsetId:I

.field private blacklist mDropDownWidthId:I

.field private blacklist mGravityId:I

.field private blacklist mPopupBackgroundId:I

.field private blacklist mPromptId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 53
    const-string v0, "dropDownHorizontalOffset"

    const v1, 0x10102ac

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    .line 54
    const-string v0, "dropDownVerticalOffset"

    const v1, 0x10102ad

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownVerticalOffsetId:I

    .line 55
    const-string v0, "dropDownWidth"

    const v1, 0x1010262

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownWidthId:I

    .line 56
    const-string v0, "gravity"

    const v1, 0x10100af

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mGravityId:I

    .line 57
    const-string v0, "popupBackground"

    const v1, 0x1010176

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPopupBackgroundId:I

    .line 58
    const-string v0, "prompt"

    const v1, 0x101017b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPromptId:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPropertiesMapped:Z

    .line 60
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/Spinner;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/Spinner;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 64
    iget-boolean v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_3b

    .line 67
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 68
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownVerticalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 69
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mDropDownWidthId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 70
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    .line 71
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPopupBackgroundId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 72
    iget v0, p0, Landroid/widget/Spinner$InspectionCompanion;->mPromptId:I

    invoke-virtual {p1}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 73
    return-void

    .line 65
    :cond_3b
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
    check-cast p1, Landroid/widget/Spinner;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner$InspectionCompanion;->readProperties(Landroid/widget/Spinner;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
