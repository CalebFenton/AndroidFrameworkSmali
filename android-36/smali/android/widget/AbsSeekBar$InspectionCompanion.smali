.class public final Landroid/widget/AbsSeekBar$InspectionCompanion;
.super Ljava/lang/Object;
.source "AbsSeekBar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AbsSeekBar;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mPropertiesMapped:Z

.field private blacklist mThumbTintId:I

.field private blacklist mThumbTintModeId:I

.field private blacklist mTickMarkTintBlendModeId:I

.field private blacklist mTickMarkTintId:I

.field private blacklist mTickMarkTintModeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 48
    const-string/jumbo v0, "thumbTint"

    const v1, 0x1010471

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintId:I

    .line 49
    const-string/jumbo v0, "thumbTintMode"

    const v1, 0x1010472

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintModeId:I

    .line 50
    const-string/jumbo v0, "tickMarkTint"

    const v1, 0x101050b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintId:I

    .line 51
    const-string/jumbo v0, "tickMarkTintBlendMode"

    const/4 v1, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintBlendModeId:I

    .line 52
    const-string/jumbo v0, "tickMarkTintMode"

    const v1, 0x101050c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintModeId:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    .line 54
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/AbsSeekBar;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/AbsSeekBar;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 58
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    .line 61
    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 62
    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 63
    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 64
    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 65
    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

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
    check-cast p1, Landroid/widget/AbsSeekBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSeekBar$InspectionCompanion;->readProperties(Landroid/widget/AbsSeekBar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
