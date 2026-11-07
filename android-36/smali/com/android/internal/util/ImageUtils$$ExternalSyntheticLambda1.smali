.class public final synthetic Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/Size;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/Size;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/util/Size;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/ImageUtils;->lambda$loadThumbnail$1(Landroid/util/Size;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
