.class public final Landroid/webkit/WebView$InspectionCompanion;
.super Ljava/lang/Object;
.source "WebView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mContentHeightId:I

.field private blacklist mFaviconId:I

.field private blacklist mOriginalUrlId:I

.field private blacklist mProgressId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mRendererPriorityWaivedWhenNotVisibleId:I

.field private blacklist mRendererRequestedPriorityId:I

.field private blacklist mTitleId:I

.field private blacklist mUrlId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7
    .param p1, "propertyMapper"    # Landroid/view/inspector/PropertyMapper;

    .line 64
    const-string v0, "contentHeight"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mContentHeightId:I

    .line 65
    const-string v0, "favicon"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mFaviconId:I

    .line 66
    const-string v0, "originalUrl"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mOriginalUrlId:I

    .line 67
    const-string v0, "progress"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mProgressId:I

    .line 68
    const-string/jumbo v0, "rendererPriorityWaivedWhenNotVisible"

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererPriorityWaivedWhenNotVisibleId:I

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .local v0, "rendererRequestedPriorityEnumMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v2, "waived"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    const-string v2, "bound"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    const/4 v2, 0x2

    const-string v4, "important"

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v4, "rendererRequestedPriority"

    invoke-interface {p1, v4, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererRequestedPriorityId:I

    .line 74
    const-string/jumbo v2, "title"

    invoke-interface {p1, v2, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView$InspectionCompanion;->mTitleId:I

    .line 75
    const-string/jumbo v2, "url"

    invoke-interface {p1, v2, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView$InspectionCompanion;->mUrlId:I

    .line 76
    iput-boolean v3, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    .line 77
    return-void
.end method

.method public blacklist readProperties(Landroid/webkit/WebView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1, "node"    # Landroid/webkit/WebView;
    .param p2, "propertyReader"    # Landroid/view/inspector/PropertyReader;

    .line 81
    iget-boolean v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_4d

    .line 84
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mContentHeightId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 85
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mFaviconId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 86
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mOriginalUrlId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 87
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mProgressId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 88
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererPriorityWaivedWhenNotVisibleId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    .line 89
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mRendererRequestedPriorityId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getRendererRequestedPriority()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 90
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mTitleId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 91
    iget v0, p0, Landroid/webkit/WebView$InspectionCompanion;->mUrlId:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 92
    return-void

    .line 82
    :cond_4d
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

    .line 16
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$InspectionCompanion;->readProperties(Landroid/webkit/WebView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
