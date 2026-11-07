.class public final Landroid/media/internal/exo/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# static fields
.field public static final blacklist CREATOR:Landroid/media/internal/exo/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/exo/Bundleable$Creator<",
            "Landroid/media/internal/exo/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist colorRange:I

.field public final blacklist colorSpace:I

.field public final blacklist colorTransfer:I

.field private blacklist hashCode:I

.field public final blacklist hdrStaticInfo:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 190
    new-instance v0, Landroid/media/internal/exo/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/video/ColorInfo;->CREATOR:Landroid/media/internal/exo/Bundleable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III[B)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    .line 117
    iput p2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    .line 118
    iput p3, p0, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    .line 119
    iput-object p4, p0, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method public static blacklist isoColorPrimariesToColorSpace(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    if-eq p0, v1, :cond_15

    const/4 v0, 0x7

    if-eq p0, v0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    return v1

    :cond_18
    return v0
.end method

.method public static blacklist isoTransferCharacteristicsToColorTransfer(I)I
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_14

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_13

    if-eq p0, v1, :cond_15

    if-eq p0, v2, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_13
    return v2

    :cond_14
    return v1

    :cond_15
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/media/internal/exo/video/ColorInfo;

    if-eq v3, v2, :cond_10

    goto :goto_2f

    .line 130
    :cond_10
    check-cast p1, Landroid/media/internal/exo/video/ColorInfo;

    .line 131
    iget v2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    iget v3, p1, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    iget v3, p1, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_2f

    iget-object p0, p0, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    .line 134
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 152
    iget v0, p0, Landroid/media/internal/exo/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_1e

    const/16 v0, 0x20f

    .line 154
    iget v1, p0, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget v1, p0, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget v1, p0, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget-object v1, p0, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    iput v0, p0, Landroid/media/internal/exo/video/ColorInfo;->hashCode:I

    .line 160
    :cond_1e
    iget p0, p0, Landroid/media/internal/exo/video/ColorInfo;->hashCode:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/internal/exo/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/internal/exo/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
