.class public final Landroid/widget/Chronometer$InspectionCompanion;
.super Ljava/lang/Object;
.source "Chronometer$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/Chronometer;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCountDownId:I

.field private blacklist mFormatId:I

.field private blacklist mPropertiesMapped:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 33
    const-string v0, "countDown"

    const v1, 0x101051b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mCountDownId:I

    .line 34
    const-string v0, "format"

    const v1, 0x1010105

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mFormatId:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mPropertiesMapped:Z

    .line 36
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/Chronometer;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/Chronometer;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 40
    iget-boolean v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_17

    .line 43
    iget v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mCountDownId:I

    invoke-virtual {p1}, Landroid/widget/Chronometer;->isCountDown()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 44
    iget v0, p0, Landroid/widget/Chronometer$InspectionCompanion;->mFormatId:I

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 45
    return-void

    .line 41
    :cond_17
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
    check-cast p1, Landroid/widget/Chronometer;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer$InspectionCompanion;->readProperties(Landroid/widget/Chronometer;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
