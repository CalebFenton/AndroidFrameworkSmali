.class public final Landroid/provider/MediaCognitionProcessingRequest$Builder;
.super Ljava/lang/Object;
.source "MediaCognitionProcessingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaCognitionProcessingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProcessingCombination:I

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProcessingCombination(Landroid/provider/MediaCognitionProcessingRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mProcessingCombination:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/provider/MediaCognitionProcessingRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mUri:Landroid/net/Uri;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist addProcessingRequest(I)Landroid/provider/MediaCognitionProcessingRequest$Builder;
    .registers 3
    .param p1, "processingRequest"    # I

    .line 84
    iget v0, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mProcessingCombination:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mProcessingCombination:I

    .line 85
    return-object p0
.end method

.method public whitelist build()Landroid/provider/MediaCognitionProcessingRequest;
    .registers 3

    .line 94
    new-instance v0, Landroid/provider/MediaCognitionProcessingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/provider/MediaCognitionProcessingRequest;-><init>(Landroid/provider/MediaCognitionProcessingRequest$Builder;Landroid/provider/MediaCognitionProcessingRequest-IA;)V

    return-object v0
.end method

.method public whitelist setProcessingCombination(I)Landroid/provider/MediaCognitionProcessingRequest$Builder;
    .registers 2
    .param p1, "processingCombination"    # I

    .line 72
    iput p1, p0, Landroid/provider/MediaCognitionProcessingRequest$Builder;->mProcessingCombination:I

    .line 73
    return-object p0
.end method
