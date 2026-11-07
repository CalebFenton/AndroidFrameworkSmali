.class public final Landroid/widget/AnalogClock$InspectionCompanion;
.super Ljava/lang/Object;
.source "AnalogClock$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AnalogClock;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mDialTintBlendModeId:I

.field private blacklist mDialTintListId:I

.field private blacklist mHourHandTintBlendModeId:I

.field private blacklist mHourHandTintListId:I

.field private blacklist mMinuteHandTintBlendModeId:I

.field private blacklist mMinuteHandTintListId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mSecondHandTintBlendModeId:I

.field private blacklist mSecondHandTintListId:I

.field private blacklist mTimeZoneId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 68
    const-string v0, "dialTintBlendMode"

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintBlendModeId:I

    .line 69
    const-string v0, "dialTintList"

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintListId:I

    .line 70
    const-string v0, "hourHandTintBlendMode"

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintBlendModeId:I

    .line 71
    const-string v0, "hourHandTintList"

    const/4 v1, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintListId:I

    .line 72
    const-string v0, "minuteHandTintBlendMode"

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintBlendModeId:I

    .line 73
    const-string v0, "minuteHandTintList"

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintListId:I

    .line 74
    const-string/jumbo v0, "secondHandTintBlendMode"

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintBlendModeId:I

    .line 75
    const-string/jumbo v0, "secondHandTintList"

    const/16 v1, 0xb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintListId:I

    .line 76
    const-string/jumbo v0, "timeZone"

    const v1, 0x10103cc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mTimeZoneId:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    .line 78
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/AnalogClock;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/AnalogClock;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 82
    iget-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_56

    .line 85
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getDialTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 86
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getDialTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 87
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getHourHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 88
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getHourHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 89
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 90
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getMinuteHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 91
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getSecondHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 92
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getSecondHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 93
    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mTimeZoneId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 94
    return-void

    .line 83
    :cond_56
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
    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AnalogClock$InspectionCompanion;->readProperties(Landroid/widget/AnalogClock;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
