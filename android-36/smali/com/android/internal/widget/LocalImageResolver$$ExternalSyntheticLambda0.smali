.class public final synthetic Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 6

    .line 0
    iget v0, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
