.class public Landroid/graphics/ColorSpace$Connector;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Connector$Rgb;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDestination:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mIntent:Landroid/graphics/ColorSpace$RenderIntent;

.field private final greylist-max-o mSource:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mTransform:[F

.field private final greylist-max-o mTransformDestination:Landroid/graphics/ColorSpace;

.field private final greylist-max-o mTransformSource:Landroid/graphics/ColorSpace;


# direct methods
.method constructor greylist-max-o <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .registers 12
    .param p1, "source"    # Landroid/graphics/ColorSpace;
    .param p2, "destination"    # Landroid/graphics/ColorSpace;
    .param p3, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 4022
    nop

    .line 4023
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_13

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v4, v0

    goto :goto_14

    :cond_13
    move-object v4, p1

    .line 4024
    :goto_14
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_26

    .line 4025
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v0

    move-object v5, v0

    goto :goto_27

    :cond_26
    move-object v5, p2

    .line 4026
    :goto_27
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;->computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v7

    .line 4022
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .end local p1    # "source":Landroid/graphics/ColorSpace;
    .end local p2    # "destination":Landroid/graphics/ColorSpace;
    .end local p3    # "intent":Landroid/graphics/ColorSpace$RenderIntent;
    .local v2, "source":Landroid/graphics/ColorSpace;
    .local v3, "destination":Landroid/graphics/ColorSpace;
    .local v6, "intent":Landroid/graphics/ColorSpace$RenderIntent;
    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    .line 4027
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V
    .registers 7
    .param p1, "source"    # Landroid/graphics/ColorSpace;
    .param p2, "destination"    # Landroid/graphics/ColorSpace;
    .param p3, "transformSource"    # Landroid/graphics/ColorSpace;
    .param p4, "transformDestination"    # Landroid/graphics/ColorSpace;
    .param p5, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;
    .param p6, "transform"    # [F

    .line 4038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4039
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    .line 4040
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    .line 4041
    iput-object p3, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    .line 4042
    iput-object p4, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    .line 4043
    iput-object p5, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    .line 4044
    iput-object p6, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    .line 4045
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private static greylist-max-o computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .registers 15
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 4054
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    return-object v1

    .line 4056
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v2, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v4

    .line 4057
    .local v0, "srcRGB":Z
    :goto_13
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v2

    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v2, v5, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    .line 4059
    .local v2, "dstRGB":Z
    :goto_1e
    if-eqz v0, :cond_23

    if-eqz v2, :cond_23

    return-object v1

    .line 4061
    :cond_23
    if-nez v0, :cond_29

    if-eqz v2, :cond_28

    goto :goto_29

    .line 4072
    :cond_28
    return-object v1

    .line 4062
    :cond_29
    :goto_29
    if-eqz v0, :cond_2d

    move-object v1, p0

    goto :goto_2e

    :cond_2d
    move-object v1, p1

    :goto_2e
    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 4063
    .local v1, "rgb":Landroid/graphics/ColorSpace$Rgb;
    if-eqz v0, :cond_3b

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object v5

    goto :goto_3f

    :cond_3b
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v5

    .line 4064
    .local v5, "srcXYZ":[F
    :goto_3f
    if-eqz v2, :cond_4a

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-$$Nest$smxyYToXyz([F)[F

    move-result-object v6

    goto :goto_4e

    :cond_4a
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetILLUMINANT_D50_XYZ()[F

    move-result-object v6

    .line 4065
    .local v6, "dstXYZ":[F
    :goto_4e
    aget v7, v5, v4

    aget v8, v6, v4

    div-float/2addr v7, v8

    aget v8, v5, v3

    aget v9, v6, v3

    div-float/2addr v8, v9

    const/4 v9, 0x2

    aget v10, v5, v9

    aget v11, v6, v9

    div-float/2addr v10, v11

    const/4 v11, 0x3

    new-array v11, v11, [F

    aput v7, v11, v4

    aput v8, v11, v3

    aput v10, v11, v9

    return-object v11
.end method

.method static greylist-max-o identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 3
    .param p0, "source"    # Landroid/graphics/ColorSpace;

    .line 4254
    new-instance v0, Landroid/graphics/ColorSpace$Connector$1;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-direct {v0, p0, p0, v1}, Landroid/graphics/ColorSpace$Connector$1;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getDestination()Landroid/graphics/ColorSpace;
    .registers 2

    .line 4096
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getRenderIntent()Landroid/graphics/ColorSpace$RenderIntent;
    .registers 2

    .line 4108
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public whitelist getSource()Landroid/graphics/ColorSpace;
    .registers 2

    .line 4084
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist transform(FFF)[F
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 4130
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist transform([F)[F
    .registers 6
    .param p1, "v"    # [F

    .line 4147
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    .line 4148
    .local v0, "xyz":[F
    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    if-eqz v1, :cond_28

    .line 4149
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 4150
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 4151
    const/4 v1, 0x2

    aget v2, v0, v1

    iget-object v3, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 4153
    :cond_28
    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method
