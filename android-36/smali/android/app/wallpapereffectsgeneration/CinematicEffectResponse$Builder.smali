.class public final Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
.super Ljava/lang/Object;
.source "CinematicEffectResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mImageContentType:I

.field private blacklist mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

.field private blacklist mStatusCode:I

.field private blacklist mTaskId:Ljava/lang/String;

.field private blacklist mTexturedMeshes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "taskId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStatusCode:I

    .line 285
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTaskId:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;
    .registers 11

    .line 330
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    if-nez v0, :cond_c

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    .line 334
    :cond_c
    new-instance v2, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    iget v3, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStatusCode:I

    iget-object v4, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTaskId:Ljava/lang/String;

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mImageContentType:I

    iget-object v6, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    iget-object v7, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iget-object v8, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;-><init>(ILjava/lang/String;ILjava/util/List;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CameraAttributes;Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse-IA;)V

    return-object v2
.end method

.method public whitelist setEndKeyFrame(Landroid/app/wallpapereffectsgeneration/CameraAttributes;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2
    .param p1, "endKeyFrame"    # Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 321
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mEndKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 322
    return-object p0
.end method

.method public whitelist setImageContentType(I)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2
    .param p1, "imageContentType"    # I

    .line 293
    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mImageContentType:I

    .line 294
    return-object p0
.end method

.method public whitelist setStartKeyFrame(Landroid/app/wallpapereffectsgeneration/CameraAttributes;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2
    .param p1, "startKeyFrame"    # Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 312
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mStartKeyFrame:Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    .line 313
    return-object p0
.end method

.method public whitelist setTexturedMeshes(Ljava/util/List;)Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;)",
            "Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;"
        }
    .end annotation

    .line 303
    .local p1, "texturedMeshes":Ljava/util/List;, "Ljava/util/List<Landroid/app/wallpapereffectsgeneration/TexturedMesh;>;"
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->mTexturedMeshes:Ljava/util/List;

    .line 304
    return-object p0
.end method
