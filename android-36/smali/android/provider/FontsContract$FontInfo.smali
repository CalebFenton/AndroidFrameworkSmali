.class public Landroid/provider/FontsContract$FontInfo;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final greylist-max-o mItalic:Z

.field private final greylist-max-o mResultCode:I

.field private final greylist-max-o mTtcIndex:I

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final greylist-max-o mWeight:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # Z
    .param p6, "resultCode"    # I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    .line 212
    iput p2, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    .line 213
    iput-object p3, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 214
    iput p4, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    .line 215
    iput-boolean p5, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    .line 216
    iput p6, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0
.end method

.method public whitelist getResultCode()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mResultCode:I

    return v0
.end method

.method public whitelist getTtcIndex()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mTtcIndex:I

    return v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/provider/FontsContract$FontInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getWeight()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/provider/FontsContract$FontInfo;->mWeight:I

    return v0
.end method

.method public whitelist isItalic()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Landroid/provider/FontsContract$FontInfo;->mItalic:Z

    return v0
.end method
