.class public final synthetic Landroid/graphics/drawable/NinePatchDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->lambda$updateStateFromTypedArray$0(Landroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
