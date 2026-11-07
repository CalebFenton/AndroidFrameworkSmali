.class public Landroid/provider/MediaCognitionProcessingResponse;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaCognitionProcessingResponse$Builder;
    }
.end annotation


# instance fields
.field private blacklist mImageLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImageOcrLatin:Ljava/lang/String;

.field private blacklist mRequest:Landroid/provider/MediaCognitionProcessingRequest;


# direct methods
.method private constructor blacklist <init>(Landroid/provider/MediaCognitionProcessingResponse$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/provider/MediaCognitionProcessingResponse$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/provider/MediaCognitionProcessingResponse$Builder;->-$$Nest$fgetmRequest(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Landroid/provider/MediaCognitionProcessingRequest;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mRequest:Landroid/provider/MediaCognitionProcessingRequest;

    .line 51
    invoke-static {p1}, Landroid/provider/MediaCognitionProcessingResponse$Builder;->-$$Nest$fgetmImageLabels(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mImageLabels:Ljava/util/List;

    .line 52
    invoke-static {p1}, Landroid/provider/MediaCognitionProcessingResponse$Builder;->-$$Nest$fgetmImageOcrLatin(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mImageOcrLatin:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/MediaCognitionProcessingResponse$Builder;Landroid/provider/MediaCognitionProcessingResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/provider/MediaCognitionProcessingResponse;-><init>(Landroid/provider/MediaCognitionProcessingResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getImageLabels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mImageLabels:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getImageOcrLatin()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mImageOcrLatin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequest()Landroid/provider/MediaCognitionProcessingRequest;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse;->mRequest:Landroid/provider/MediaCognitionProcessingRequest;

    return-object v0
.end method
