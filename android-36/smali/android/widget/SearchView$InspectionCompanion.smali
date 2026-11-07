.class public final Landroid/widget/SearchView$InspectionCompanion;
.super Ljava/lang/Object;
.source "SearchView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/SearchView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mIconifiedByDefaultId:I

.field private blacklist mIconifiedId:I

.field private blacklist mMaxWidthId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mQueryHintId:I

.field private blacklist mQueryId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 5
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 48
    const-string v0, "iconified"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mIconifiedId:I

    .line 49
    const-string v0, "iconifiedByDefault"

    const v2, 0x10102fa

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    .line 50
    const-string v0, "maxWidth"

    const v2, 0x101011f

    invoke-interface {p1, v0, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    .line 51
    const-string/jumbo v0, "query"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mQueryId:I

    .line 52
    const-string/jumbo v0, "queryHint"

    const v1, 0x1010358

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    .line 54
    return-void
.end method

.method public blacklist readProperties(Landroid/widget/SearchView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/widget/SearchView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 58
    iget-boolean v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    .line 61
    iget v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mIconifiedId:I

    invoke-virtual {p1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 62
    iget v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mIconifiedByDefaultId:I

    invoke-virtual {p1}, Landroid/widget/SearchView;->isIconifiedByDefault()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 63
    iget v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/SearchView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 64
    iget v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mQueryId:I

    invoke-virtual {p1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 65
    iget v0, p0, Landroid/widget/SearchView$InspectionCompanion;->mQueryHintId:I

    invoke-virtual {p1}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

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
    check-cast p1, Landroid/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView$InspectionCompanion;->readProperties(Landroid/widget/SearchView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
