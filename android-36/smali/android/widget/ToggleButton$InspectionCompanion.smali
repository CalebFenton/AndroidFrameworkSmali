.class public final Landroid/widget/ToggleButton$InspectionCompanion;
.super Ljava/lang/Object;
.source "ToggleButton$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ToggleButton;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDisabledAlphaId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mTextOffId:I

.field private blacklist mTextOnId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 38
    const-string v0, "disabledAlpha"

    const v1, 0x1010033

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mDisabledAlphaId:I

    .line 39
    const-string/jumbo v0, "textOff"

    const v1, 0x1010125

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOffId:I

    .line 40
    const-string/jumbo v0, "textOn"

    const v1, 0x1010124

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOnId:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    .line 42
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/ToggleButton;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/ToggleButton;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 46
    iget-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_20

    .line 49
    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mDisabledAlphaId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getDisabledAlpha()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    .line 50
    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOffId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 51
    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOnId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 52
    return-void

    .line 47
    :cond_20
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
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ToggleButton$InspectionCompanion;->readProperties(Landroid/widget/ToggleButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
