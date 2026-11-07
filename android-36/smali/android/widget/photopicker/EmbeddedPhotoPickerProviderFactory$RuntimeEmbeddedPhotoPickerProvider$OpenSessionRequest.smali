.class Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenSessionRequest"
.end annotation


# instance fields
.field public final blacklist mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

.field public final blacklist mDisplayId:I

.field public final blacklist mFeatureInfo:Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

.field public final blacklist mHeight:I

.field public final blacklist mHostToken:Landroid/os/IBinder;

.field public blacklist mTotalOpenSessionAttempts:I

.field public final blacklist mWidth:I


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;)V
    .registers 8
    .param p1, "hostToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "clientCallbackWrapper"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;
    .param p6, "featureInfo"    # Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mTotalOpenSessionAttempts:I

    .line 502
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHostToken:Landroid/os/IBinder;

    .line 503
    iput p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mDisplayId:I

    .line 504
    iput p3, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mWidth:I

    .line 505
    iput p4, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHeight:I

    .line 506
    iput-object p5, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    .line 507
    iput-object p6, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mFeatureInfo:Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    .line 508
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;-><init>(Landroid/os/IBinder;IIILandroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenSessionRequest{mHostToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHostToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClientCallbackWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mClientCallbackWrapper:Landroid/widget/photopicker/EmbeddedPhotoPickerClientWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatureInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider$OpenSessionRequest;->mFeatureInfo:Landroid/widget/photopicker/EmbeddedPhotoPickerFeatureInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
