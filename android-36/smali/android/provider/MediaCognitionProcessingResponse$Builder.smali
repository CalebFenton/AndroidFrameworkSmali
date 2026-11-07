.class public final Landroid/provider/MediaCognitionProcessingResponse$Builder;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaCognitionProcessingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method static bridge synthetic blacklist -$$Nest$fgetmImageLabels(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageLabels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImageOcrLatin(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageOcrLatin:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Landroid/provider/MediaCognitionProcessingResponse$Builder;)Landroid/provider/MediaCognitionProcessingRequest;
    .registers 1

    iget-object p0, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mRequest:Landroid/provider/MediaCognitionProcessingRequest;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/provider/MediaCognitionProcessingRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/provider/MediaCognitionProcessingRequest;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageLabels:Ljava/util/List;

    .line 61
    iput-object v0, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageOcrLatin:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mRequest:Landroid/provider/MediaCognitionProcessingRequest;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/provider/MediaCognitionProcessingResponse;
    .registers 3

    .line 95
    new-instance v0, Landroid/provider/MediaCognitionProcessingResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/provider/MediaCognitionProcessingResponse;-><init>(Landroid/provider/MediaCognitionProcessingResponse$Builder;Landroid/provider/MediaCognitionProcessingResponse-IA;)V

    return-object v0
.end method

.method public whitelist setImageLabels(Ljava/util/List;)Landroid/provider/MediaCognitionProcessingResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/provider/MediaCognitionProcessingResponse$Builder;"
        }
    .end annotation

    .line 74
    .local p1, "imageLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageLabels:Ljava/util/List;

    .line 75
    return-object p0
.end method

.method public whitelist setImageOcrLatin(Ljava/lang/String;)Landroid/provider/MediaCognitionProcessingResponse$Builder;
    .registers 2
    .param p1, "imageOcrLatin"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/provider/MediaCognitionProcessingResponse$Builder;->mImageOcrLatin:Ljava/lang/String;

    .line 86
    return-object p0
.end method
