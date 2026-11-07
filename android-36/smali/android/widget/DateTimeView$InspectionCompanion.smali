.class public final Landroid/widget/DateTimeView$InspectionCompanion;
.super Ljava/lang/Object;
.source "DateTimeView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/DateTimeView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mPropertiesMapped:Z

.field private blacklist mShowReleativeId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 27
    const-string/jumbo v0, "showReleative"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimeView$InspectionCompanion;->mShowReleativeId:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView$InspectionCompanion;->mPropertiesMapped:Z

    .line 29
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/DateTimeView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/DateTimeView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 33
    iget-boolean v0, p0, Landroid/widget/DateTimeView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_e

    .line 36
    iget v0, p0, Landroid/widget/DateTimeView$InspectionCompanion;->mShowReleativeId:I

    invoke-virtual {p1}, Landroid/widget/DateTimeView;->isShowRelativeTime()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 37
    return-void

    .line 34
    :cond_e
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

    .line 14
    check-cast p1, Landroid/widget/DateTimeView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView$InspectionCompanion;->readProperties(Landroid/widget/DateTimeView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
